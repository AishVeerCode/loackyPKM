---
status: permanent
type: moc
area: meta
related: ["[[Home MOC]]", "[[Review Dashboard]]"]
source: original
title: "Vault Health Dashboard"
date: '2026-10-01'
updated: 2026-10-01T16:31
tags: [meta/dashboard, meta/health]
summary: "Pannello di controllo statico del Second Brain: monitoraggio dello stato di salute, note in staging, bozze del blog e diagnostica del grafo."
---
[[Home MOC|Home]] / [[Meta]] / [[Vault Health Dashboard]]

# Vault Health Dashboard

Pannello di controllo in **puro Markdown statico** per monitorare la salute del Vault, le note in staging e l'integrità del grafo semantico.

*Ultimo aggiornamento:* `2026-10-01 16:31`

---

## Metriche Generali del Vault
- **Note Totali:** 160
- **Note in Staging (Inbox):** 1
- **Bozze Blog:** 3
- **Note Orfane:** 2
- **Link Interrotti:** 7
- **Forward-Links Pianificati:** 2638
- **Collisioni Omonime (Note Duplicate):** 2

---

## Note in Staging (Inbox / Bozze)
| Nota | Creazione | Area | Stato |
|---|---|---|---|
| [[Review Dashboard]] | 2026-08-31 | meta | `draft` |


---

## Semi del Blog (Bozze Quartz)
| Articolo | Data | Stadio | Stato |
|---|---|---|---|
| [[Crono S]] | 2026-03-25 | raw 🗂️ | `Bozza` |
| [[BlogPost - 20260303it]] | 2026-03-03 | fine-tuned 🧠 | `Bozza` |
| [[BlogPost - 20250910it]] | 2025-09-10 | fine-tuned 🧠 | `Bozza` |


---

## Note Modificate di Recente
| Nota | Ultima Modifica | Area |
|---|---|---|
| [[University]] | 2026-10-01 16:31 | tech |
| [[Lezione 3 - Stringhe Metodi e Slicing]] | 2026-10-01 16:31 | education |
| [[Lezione 2 - Variabili Assegnazione Input e Output]] | 2026-10-01 16:30 | education |
| [[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]] | 2026-10-01 16:29 | education |
| [[research-memo]] | 2026-10-01 15:49 | N/D |
| [[Properties]] | 2026-10-01 15:49 | tech |
| [[Embeds]] | 2026-10-01 15:49 | tech |
| [[Callouts]] | 2026-10-01 15:49 | tech |
| [[Functions Reference]] | 2026-10-01 15:49 | tech |
| [[EXAMPLES]] | 2026-10-01 15:49 | tech |


---

## Comandi di Governance
Per eseguire un audit interattivo o applicare correzioni automatiche:
```bash
python3 "99 - Meta/Scripts/brain_health.py" --interactive
```
