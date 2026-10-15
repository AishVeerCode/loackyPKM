#!/usr/bin/env python3
"""
university_sync.py - Motore di sincronizzazione automatica per dispense e lezioni universitarie.

Funzionalità:
1. Fondamenti di matematica:
   - Monitora la cartella 'Fondamenti di matematica'.
   - Quando viene aggiunto un file (es. Lezione X.pdf):
     a) Crea una nota di riassunto dettagliata in 'Ripasso - Fondamenti di matematica/'.
     b) Estrae tutte le dimostrazioni e le aggiunge a 'Dimostrazioni.md'.
     c) Estrae tutti gli assiomi, proposizioni, teoremi, definizioni e li aggiunge a 'Assiomi, proposizioni ecc....md'.
     
2. Introduzione alla programmazione:
   - Monitora la cartella 'Introduzione alla programmazione'.
   - Se il file è '.ipynb':
     a) Crea una nota di riassunto dettagliata in 'Ripasso - Introduzione alla programmazione/'.
     b) Estrae tutti i comandi di codice e li aggiunge a 'Comandi.md' (esclusivamente codice, senza spiegazioni).
   - Se il file è '.pdf':
     a) Crea una sintesi molto concisa (informazioni fondamentali) e la aggiunge a 'Teoria di programmazione.md'.

Utilizzo:
  python3 university_sync.py --scan          # Scansiona e processa nuovi file una tantum
  python3 university_sync.py --watch         # Avvia il demone watcher continuo
  python3 university_sync.py --file <path>   # Processa un singolo file specificato
  python3 university_sync.py --status        # Mostra lo stato dei file processati
  python3 university_sync.py --seed          # Inizializza lo stato con i file già processati
"""

import os
import sys
import json
import time
import re
import hashlib
import argparse
from datetime import datetime
from pathlib import Path

try:
    import pypdf
except ImportError:
    pypdf = None

# Percorsi base del Vault
SCRIPT_DIR = Path(__file__).resolve().parent
META_DIR = SCRIPT_DIR.parent
LORENZO_DIR = META_DIR.parent
VAULT_DIR = LORENZO_DIR.parent
LOG_DIR = META_DIR / "logs"
STATE_FILE = LOG_DIR / "university_sync_state.json"
LOG_FILE = LOG_DIR / "university_sync.log"

UNIV_DIR = VAULT_DIR / "Atlas" / "Education & Learning" / "University" / "1° anno, 1° semestre"
FONDAMENTI_DIR = UNIV_DIR / "Fondamenti di matematica"
FONDAMENTI_RIPASSO = FONDAMENTI_DIR / "Ripasso - Fondamenti di matematica"
DIMOSTRAZIONI_FILE = FONDAMENTI_RIPASSO / "Dimostrazioni.md"
ASSIOMI_FILE = FONDAMENTI_RIPASSO / "Assiomi, proposizioni ecc....md"

PROG_DIR = UNIV_DIR / "Introduzione alla programmazione"
PROG_RIPASSO = PROG_DIR / "Ripasso - Introduzione alla programmazione"
TEORIA_PROG_FILE = PROG_RIPASSO / "Teoria di programmazione.md"
COMANDI_FILE = PROG_RIPASSO / "Comandi.md"


def log(msg: str):
    """Registra un messaggio di log su file e stdout."""
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    formatted = f"[{timestamp}] {msg}"
    print(formatted)
    with open(LOG_FILE, "a", encoding="utf-8") as f:
        f.write(formatted + "\n")


def compute_file_hash(path: Path) -> str:
    """Calcola l'hash SHA-256 di un file."""
    hasher = hashlib.sha256()
    with open(path, "rb") as f:
        while chunk := f.read(65536):
            hasher.update(chunk)
    return hasher.hexdigest()


def load_state() -> dict:
    """Carica lo stato dei file già processati."""
    if STATE_FILE.exists():
        try:
            with open(STATE_FILE, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception as e:
            log(f"Errore nella lettura dello stato ({e}), inizializzazione nuovo stato.")
    return {"fondamenti": {}, "programmazione": {}}


def save_state(state: dict):
    """Salva lo stato dei file processati."""
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    with open(STATE_FILE, "w", encoding="utf-8") as f:
        json.dump(state, f, indent=2, ensure_ascii=False)


def extract_pdf_text(pdf_path: Path) -> str:
    """Estrae l'intero testo da un file PDF."""
    if not pypdf:
        raise RuntimeError("Modulo pypdf non disponibile. Installa pypdf con 'pip install pypdf'.")
    reader = pypdf.PdfReader(str(pdf_path))
    pages_text = []
    for i, page in enumerate(reader.pages):
        t = page.extract_text() or ""
        pages_text.append(t)
    return "\n".join(pages_text)


def seed_current_files():
    """Registra tutti i file attuali nello stato come già processati."""
    state = load_state()
    count = 0
    # Fondamenti
    if FONDAMENTI_DIR.exists():
        for p in FONDAMENTI_DIR.glob("*.pdf"):
            rel = p.name
            if rel not in state["fondamenti"]:
                state["fondamenti"][rel] = {
                    "hash": compute_file_hash(p),
                    "processed_at": datetime.now().isoformat(),
                    "size": p.stat().st_size
                }
                count += 1
    # Programmazione
    if PROG_DIR.exists():
        for p in list(PROG_DIR.glob("*.ipynb")) + list(PROG_DIR.glob("*.pdf")):
            rel = p.name
            if rel not in state["programmazione"]:
                state["programmazione"][rel] = {
                    "hash": compute_file_hash(p),
                    "processed_at": datetime.now().isoformat(),
                    "size": p.stat().st_size
                }
                count += 1
    save_state(state)
    log(f"Inizializzazione completata: {count} file contrassegnati come già processati.")


# ==============================================================================
# PIPELINE FONDAMENTI DI MATEMATICA
# ==============================================================================

def process_fondamenti_file(pdf_path: Path) -> bool:
    """Processa un nuovo file in Fondamenti di matematica."""
    log(f"Inizio elaborazione Fondamenti: {pdf_path.name}")
    try:
        text = extract_pdf_text(pdf_path)
    except Exception as e:
        log(f"Errore estrazione PDF {pdf_path.name}: {e}")
        return False

    bname = pdf_path.stem  # es. "Lezione 14"
    match = re.search(r"Lezione\s*(\d+)", bname, re.IGNORECASE)
    lez_num = match.group(1) if match else bname

    # Cerca il titolo principale nella prima pagina/prime righe
    lines = [l.strip() for l in text.splitlines() if l.strip()]
    titolo = bname
    for l in lines[:15]:
        if "Lezione" in l and (":" in l or "-" in l):
            titolo = l.replace("Lezione", "").strip(": -").strip()
            break
        elif "Sapienza" not in l and "Docente" not in l and len(l) > 5 and len(l) < 80:
            titolo = l
            break

    full_title = f"Lezione {lez_num} - {titolo}" if match and not titolo.startswith("Lezione") else titolo
    safe_title = re.sub(r'[\\/*?:"<>|]', "", full_title)

    # 1. Parsing di teoremi, assiomi, definizioni, proposizioni e dimostrazioni
    items = parse_math_items(text)

    # 2. Creazione della nota di riassunto dettagliata in Ripasso
    summary_note_path = FONDAMENTI_RIPASSO / f"{safe_title}.md"
    create_fondamenti_summary_note(summary_note_path, full_title, lez_num, pdf_path.name, items, text)
    log(f"Creata nota di riassunto: {summary_note_path.name}")

    # 3. Aggiornamento di Dimostrazioni.md
    if items["dimostrazioni"]:
        append_to_dimostrazioni(full_title, items["dimostrazioni"])
        log(f"Aggiunte {len(items['dimostrazioni'])} dimostrazioni a Dimostrazioni.md")

    # 4. Aggiornamento di Assiomi, proposizioni ecc....md
    if items["teoria"]:
        append_to_assiomi(full_title, items["teoria"])
        log(f"Aggiunti {len(items['teoria'])} enunciati teorici a Assiomi, proposizioni ecc....md")

    return True


def parse_math_items(text: str) -> dict:
    """Estrae definizioni, assiomi, proposizioni, teoremi e dimostrazioni dal testo."""
    lines = text.splitlines()
    teoria = []
    dimostrazioni = []

    current_type = None
    current_title = ""
    current_content = []

    # Regex per riconoscere le dichiarazioni formali
    pattern = re.compile(
        r"^(Assioma|Definizione|Teorema|Proposizione|Prop\.|Lemma|Corollario|Dimostrazione|Dim\.)\s*([0-9\.]*)?\s*[:\.\-]?\s*(.*)",
        re.IGNORECASE
    )

    for line in lines:
        stripped = line.strip()
        m = pattern.match(stripped)
        if m:
            # Salva l'elemento precedente
            if current_type:
                block_text = "\n".join(current_content).strip()
                if "dimostrazione" in current_type.lower() or "dim." in current_type.lower():
                    dimostrazioni.append({
                        "type": current_type,
                        "title": current_title,
                        "content": block_text
                    })
                else:
                    teoria.append({
                        "type": current_type,
                        "title": current_title,
                        "content": block_text
                    })

            current_type = m.group(1).capitalize()
            num = m.group(2) or ""
            rest = m.group(3) or ""
            current_title = f"{current_type} {num}".strip()
            if rest:
                current_title += f": {rest}"
            current_content = []
        else:
            if current_type:
                current_content.append(line)

    # Ultimo elemento
    if current_type and current_content:
        block_text = "\n".join(current_content).strip()
        if "dimostrazione" in current_type.lower() or "dim." in current_type.lower():
            dimostrazioni.append({
                "type": current_type,
                "title": current_title,
                "content": block_text
            })
        else:
            teoria.append({
                "type": current_type,
                "title": current_title,
                "content": block_text
            })

    return {"teoria": teoria, "dimostrazioni": dimostrazioni}


def create_fondamenti_summary_note(target_path: Path, title: str, lez_num: str, source_pdf: str, items: dict, full_text: str):
    """Genera la nota completa di riassunto in Markdown."""
    now_date = datetime.now().strftime("%Y-%m-%d")
    now_time = datetime.now().strftime("%Y-%m-%dT%H:%M")

    # Sintesi esecutiva
    first_paragraphs = [p.strip() for p in full_text.split("\n\n") if len(p.strip()) > 80]
    exec_summary = first_paragraphs[0][:190] if first_paragraphs else f"Trattazione approfondita e analisi formale della Lezione {lez_num} di Fondamenti di Matematica."
    if not exec_summary.endswith("."):
        exec_summary += "."

    content = f"""---
status: permanent
type: lecture
area: education
related: ["[[Dimostrazioni]]", "[[Assiomi, proposizioni ecc...]]", "[[University]]"]
aliases: ["{title}", "Lezione {lez_num}"]
source: "{source_pdf}"
title: "{title}"
date: '{now_date}'
updated: '{now_time}'
tags: [education/university, education/matematica, education/lecture]
summary: "{exec_summary}"
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[{title}]]

# {title}

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>{title}</b></font></mark> introduce concetti e strumenti analitici fondamentali per la teoria matematica. La trattazione sviluppa definizioni rigorose, proprietà operative ed enunciati formali completi di verifiche deduttive.

## Quadro Teorico ed Enunciati
"""
    if items["teoria"]:
        for item in items["teoria"]:
            content += f"\n### {item['title']}\n"
            content += f"{item['content']}\n"
    else:
        # Fallback se il parser non ha intercettato etichette formali
        content += f"\n### Contenuto Principale\n"
        sample_paragraphs = [p for p in full_text.split("\n\n") if len(p.strip()) > 50][:8]
        content += "\n\n".join(sample_paragraphs) + "\n"

    if items["dimostrazioni"]:
        content += f"\n## Dimostrazioni Trattate nella Lezione\n"
        for dim in items["dimostrazioni"]:
            content += f"\n### {dim['title']}\n"
            content += f"{dim['content']}\n\n$$\\blacksquare$$\n"

    with open(target_path, "w", encoding="utf-8") as f:
        f.write(content)


def append_to_dimostrazioni(lecture_title: str, proofs: list):
    """Aggiunge le nuove dimostrazioni in Dimostrazioni.md."""
    if not DIMOSTRAZIONI_FILE.exists():
        return

    with open(DIMOSTRAZIONI_FILE, "r", encoding="utf-8") as f:
        existing = f.read()

    # Evita duplicati della stessa sezione
    sec_header = f"## {lecture_title}"
    if sec_header in existing:
        log(f"Sezione '{sec_header}' già presente in Dimostrazioni.md, salto l'append.")
        return

    new_section = f"\n\n---\n\n## {lecture_title}\n"
    for p in proofs:
        new_section += f"\n### {p['title']}\n"
        new_section += f"{p['content']}\n\n$$\\blacksquare$$\n"

    with open(DIMOSTRAZIONI_FILE, "a", encoding="utf-8") as f:
        f.write(new_section)


def append_to_assiomi(lecture_title: str, items: list):
    """Aggiunge i nuovi assiomi, proposizioni, teoremi in Assiomi, proposizioni ecc....md."""
    if not ASSIOMI_FILE.exists():
        return

    with open(ASSIOMI_FILE, "r", encoding="utf-8") as f:
        existing = f.read()

    sec_header = f"## {lecture_title}"
    if sec_header in existing:
        log(f"Sezione '{sec_header}' già presente in Assiomi, proposizioni ecc....md, salto l'append.")
        return

    new_section = f"\n\n---\n\n## {lecture_title}\n"
    for item in items:
        new_section += f"\n### {item['title']}\n"
        new_section += f"{item['content']}\n"

    with open(ASSIOMI_FILE, "a", encoding="utf-8") as f:
        f.write(new_section)


# ==============================================================================
# PIPELINE INTRODUZIONE ALLA PROGRAMMAZIONE
# ==============================================================================

def process_prog_file(file_path: Path) -> bool:
    """Processa un nuovo file in Introduzione alla programmazione."""
    ext = file_path.suffix.lower()
    log(f"Inizio elaborazione Programmazione ({ext}): {file_path.name}")

    if ext == ".ipynb":
        return process_prog_notebook(file_path)
    elif ext == ".pdf":
        return process_prog_pdf(file_path)
    else:
        log(f"Estensione non supportata per programmazione: {file_path.name}")
        return False


def process_prog_notebook(nb_path: Path) -> bool:
    """Processa un file .ipynb: nota riassunto e append a Comandi.md."""
    try:
        with open(nb_path, "r", encoding="utf-8") as f:
            nb = json.load(f)
    except Exception as e:
        log(f"Errore lettura notebook {nb_path.name}: {e}")
        return False

    bname = nb_path.stem
    match = re.search(r"Lezione\s*(\d+)", bname, re.IGNORECASE)
    lez_num = match.group(1) if match else bname
    title = f"Lezione {lez_num} - {bname}" if match and not bname.lower().startswith("lezione") else bname
    safe_title = re.sub(r'[\\/*?:"<>|]', "", title)

    # Estrazione celle
    code_snippets = []
    markdown_texts = []

    for cell in nb.get("cells", []):
        ctype = cell.get("cell_type")
        src = "".join(cell.get("source", [])).strip()
        if not src:
            continue
        if ctype == "code":
            code_snippets.append(src)
        elif ctype == "markdown":
            markdown_texts.append(src)

    # 1. Crea la nota dettagliata di riassunto in Ripasso
    summary_path = PROG_RIPASSO / f"{safe_title}.md"
    create_prog_summary_note(summary_path, title, lez_num, nb_path.name, markdown_texts, code_snippets)
    log(f"Creata nota riassunto notebook: {summary_path.name}")

    # 2. Aggiunge i comandi di codice a Comandi.md (rigorosamente SOLO codice)
    if code_snippets:
        append_to_comandi(title, code_snippets)
        log(f"Aggiunti {len(code_snippets)} blocchi di codice a Comandi.md")

    return True


def create_prog_summary_note(target_path: Path, title: str, lez_num: str, source_nb: str, md_texts: list, code_snippets: list):
    """Genera la nota completa di riassunto per un notebook in Ripasso."""
    now_date = datetime.now().strftime("%Y-%m-%d")
    now_time = datetime.now().strftime("%Y-%m-%dT%H:%M")
    exec_summary = f"Analisi dettagliata, costrutti algoritmici, strutture dati ed esempi di codice della Lezione {lez_num} di Programmazione."

    content = f"""---
status: permanent
type: lecture
area: education
related: ["[[Comandi]]", "[[Teoria di programmazione]]", "[[University]]"]
aliases: ["{title}", "Lezione {lez_num} Programmazione"]
source: "{source_nb}"
title: "{title}"
date: '{now_date}'
updated: '{now_time}'
tags: [education/university, education/programmazione, education/lecture]
summary: "{exec_summary}"
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[{title}]]

# {title}

## Sintesi Esecutiva
La sessione presenta lo sviluppo pratico e concettuale relativo agli argomenti di <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>{title}</b></font></mark>, illustrando la sintassi, le strutture di controllo, l'organizzazione logica e le funzioni utilizzate.

## Teoria e Concetti Guida
"""
    if md_texts:
        for md in md_texts[:10]:
            content += f"\n{md}\n"
    else:
        content += "\nTrattazione basata sull'applicazione diretta del codice e dei costrutti del linguaggio Python.\n"

    content += "\n## Costrutti ed Esempi Esecutivi di Codice\n"
    for i, code in enumerate(code_snippets[:12]):
        content += f"\n```python\n{code}\n```\n"

    with open(target_path, "w", encoding="utf-8") as f:
        f.write(content)


def append_to_comandi(title: str, code_snippets: list):
    """Aggiunge a Comandi.md ESCLUSIVAMENTE blocchi di codice Python senza spiegazioni."""
    if not COMANDI_FILE.exists():
        return

    with open(COMANDI_FILE, "r", encoding="utf-8") as f:
        existing = f.read()

    sec_header = f"## {title}"
    if sec_header in existing:
        log(f"Sezione '{sec_header}' già presente in Comandi.md, salto l'append.")
        return

    new_section = f"\n\n---\n\n## {title}\n"
    for code in code_snippets:
        # Rimuoviamo commenti prolissi mantenendo puro codice
        clean_code = re.sub(r'#.*', '', code).strip()
        if clean_code:
            new_section += f"\n```python\n{clean_code}\n```\n"
        else:
            new_section += f"\n```python\n{code}\n```\n"

    with open(COMANDI_FILE, "a", encoding="utf-8") as f:
        f.write(new_section)


def process_prog_pdf(pdf_path: Path) -> bool:
    """Processa un file .pdf in Introduzione alla programmazione: sintesi in Teoria di programmazione.md."""
    try:
        text = extract_pdf_text(pdf_path)
    except Exception as e:
        log(f"Errore estrazione PDF {pdf_path.name}: {e}")
        return False

    bname = pdf_path.stem
    append_to_teoria_programmazione(bname, pdf_path.name, text)
    log(f"Aggiunta sintesi teorica essenziale a Teoria di programmazione.md per {pdf_path.name}")
    return True


def append_to_teoria_programmazione(title: str, source_pdf: str, text: str):
    """Aggiunge una sintesi molto concisa (informazioni fondamentali) in Teoria di programmazione.md."""
    if not TEORIA_PROG_FILE.exists():
        return

    with open(TEORIA_PROG_FILE, "r", encoding="utf-8") as f:
        existing = f.read()

    sec_header = f"## {title}"
    if sec_header in existing:
        log(f"Sezione '{sec_header}' già presente in Teoria di programmazione.md, salto l'append.")
        return

    # Estrazione punti salienti e concetti chiave
    lines = [l.strip() for l in text.splitlines() if l.strip()]
    bullet_points = []
    for l in lines:
        if l.startswith("•") or l.startswith("-") or ":" in l:
            if len(l) > 15 and len(l) < 180 and l not in bullet_points:
                bullet_points.append(l.strip("•- "))

    selected_points = bullet_points[:12] if bullet_points else lines[:10]

    new_section = f"\n\n---\n\n## {title}\n*Fonte: `{source_pdf}`*\n\n### Concetti Fondamentali ed Informazioni Chiave\n"
    for pt in selected_points:
        new_section += f"- {pt}\n"

    with open(TEORIA_PROG_FILE, "a", encoding="utf-8") as f:
        f.write(new_section)


# ==============================================================================
# SCAN & WATCH ENGINE
# ==============================================================================

def scan_courses(force: bool = False) -> int:
    """Scansiona entrambe le cartelle dei corsi e processa eventuali nuovi file."""
    state = load_state()
    processed_count = 0

    # 1. Scansione Fondamenti di matematica
    if FONDAMENTI_DIR.exists():
        for p in sorted(FONDAMENTI_DIR.glob("*.pdf")):
            name = p.name
            h = compute_file_hash(p)
            if force or name not in state["fondamenti"] or state["fondamenti"][name].get("hash") != h:
                ok = process_fondamenti_file(p)
                if ok:
                    state["fondamenti"][name] = {
                        "hash": h,
                        "processed_at": datetime.now().isoformat(),
                        "size": p.stat().st_size
                    }
                    processed_count += 1

    # 2. Scansione Introduzione alla programmazione
    if PROG_DIR.exists():
        for p in sorted(list(PROG_DIR.glob("*.ipynb")) + list(PROG_DIR.glob("*.pdf"))):
            name = p.name
            h = compute_file_hash(p)
            if force or name not in state["programmazione"] or state["programmazione"][name].get("hash") != h:
                ok = process_prog_file(p)
                if ok:
                    state["programmazione"][name] = {
                        "hash": h,
                        "processed_at": datetime.now().isoformat(),
                        "size": p.stat().st_size
                    }
                    processed_count += 1

    if processed_count > 0:
        save_state(state)
        log(f"Scansione completata: {processed_count} nuovi file processati.")

    return processed_count


def watch_courses(interval: float = 3.0):
    """Demone di monitoraggio continuo per le cartelle dei corsi."""
    log(f"Avvio del demone watcher corsi (intervallo {interval}s)...")
    log(f"Cartelle monitorate:\n  - {FONDAMENTI_DIR}\n  - {PROG_DIR}")

    try:
        while True:
            scan_courses()
            time.sleep(interval)
    except KeyboardInterrupt:
        log("Watcher corsi interrotto dall'utente.")


def print_status():
    """Visualizza lo stato dei file processati."""
    state = load_state()
    print("\n=== STATO SINCRONIZZAZIONE CORSI LOACKYPKM ===")
    print("\n[Fondamenti di matematica]:")
    if state.get("fondamenti"):
        for f, data in state["fondamenti"].items():
            print(f"  ✓ {f} (processato il {data.get('processed_at', 'N/D')})")
    else:
        print("  (Nessun file registrato)")

    print("\n[Introduzione alla programmazione]:")
    if state.get("programmazione"):
        for f, data in state["programmazione"].items():
            print(f"  ✓ {f} (processato il {data.get('processed_at', 'N/D')})")
    else:
        print("  (Nessun file registrato)")
    print("===============================================\n")


def main():
    parser = argparse.ArgumentParser(description="University Course Auto-Sync Engine per loackyPKM")
    parser.add_argument("--scan", action="store_true", help="Scansiona le cartelle e processa nuovi file")
    parser.add_argument("--watch", action="store_true", help="Esegui come demone watcher in background")
    parser.add_argument("--seed", action="store_true", help="Contrassegna tutti i file attuali come già processati")
    parser.add_argument("--status", action="store_true", help="Mostra lo stato dei file sincronizzati")
    parser.add_argument("--file", type=str, help="Processa un file specifico")
    parser.add_argument("--force", action="store_true", help="Forza la rielaborazione anche se già presente nello stato")

    args = parser.parse_args()

    if args.seed:
        seed_current_files()
    elif args.status:
        print_status()
    elif args.file:
        p = Path(args.file).resolve()
        if not p.exists():
            log(f"Errore: file non trovato: {p}")
            sys.exit(1)
        if "Fondamenti di matematica" in str(p):
            process_fondamenti_file(p)
        elif "Introduzione alla programmazione" in str(p):
            process_prog_file(p)
        else:
            log(f"Percorso non riconosciuto per alcun corso noto: {p}")
    elif args.watch:
        watch_courses()
    elif args.scan:
        scan_courses(force=args.force)
    else:
        # Default: scan
        scan_courses(force=args.force)


if __name__ == "__main__":
    main()
