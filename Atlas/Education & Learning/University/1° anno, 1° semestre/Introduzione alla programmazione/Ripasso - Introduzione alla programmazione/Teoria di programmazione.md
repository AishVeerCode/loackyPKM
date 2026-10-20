---
status: permanent
type: summary
area: education
related: ["[[Lezione 0.1 - Rappresentazione dei Caratteri e Dati Multimediali]]", "[[Lezione 0.2 - Sistemi di Numerazione Binaria e Interi con Segno]]", "[[Comandi]]", "[[University]]"]
aliases: ["Teoria di programmazione", "Teoria di Programmazione", "Sintesi PDF Teoria Programmazione"]
source: ["RappresentazioneCaratteri.pdf", "Numeri Binari Interi.pdf"]
title: "Teoria di Programmazione"
date: '2026-10-15'
updated: '2026-10-15T19:00'
tags: [education/university, education/programmazione, education/teoria]
summary: "Sintesi concisa ed essenziale dei concetti teorici fondamentali estratti esclusivamente dai documenti PDF della cartella Introduzione alla programmazione."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Teoria di programmazione]]

# Teoria di Programmazione

Sintesi compatta e schematica dei contenuti teorici estratti esclusivamente dai file `.pdf` del corso: *Rappresentazione dei Caratteri e Dati Multimediali* e *Sistemi di Numerazione Binaria e Interi con Segno*.

---

## 1. Rappresentazione di Caratteri, Stringhe e Dati Multimediali
*Fonte: `RappresentazioneCaratteri.pdf`*

### Codifica dei Caratteri
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Principio di Codifica:</b></font></mark> I calcolatori manipolano unicamente sequenze binarie (`0` e `1`). Un testo viene codificato associando biunivocamente a ciascun simbolo alfabetico o di controllo un numero intero non negativo tramite apposite tabelle convenzionali.
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Standard ASCII (7 bit):</b></font></mark>
  - Rappresenta $2^7 = 128$ simboli (intervallo $0 - 127$).
  - **$0 - 31$ e $127$:** Caratteri di controllo non stampabili (es. `\n` line feed = 10, `\r` carriage return = 13, `\t` tab = 9, `\b` backspace = 8, NUL = 0, DEL = 127).
  - **$32$:** Spazio bianco (`' '`).
  - **$48 - 57$:** Cifre numeriche `'0'`..`'9'`.
  - **$65 - 90$:** Lettere maiuscole `'A'`..`'Z'`.
  - **$97 - 122$:** Lettere minuscole `'a'`..`'z'` (offset minuscola/maiuscola pari a $32 = 2^5$: commutazione del 6° bit).
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Estensioni ISO-IEC 8859 (8 bit):</b></font></mark>
  - Utilizzano l'ottavo bit per mappare $2^8 = 256$ caratteri ($0 - 255$).
  - I codici $128 - 255$ variano in base alla lingua (es. ISO-8859-1 o Latin-1 per l'Europa occidentale). Limite: frammentazione incompatibile tra lingue diverse ("torre di Babele").
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Unicode e UTF-8:</b></font></mark>
  - **Unicode (UCS):** Assegna un code point univoco a ogni carattere di tutti i sistemi di scrittura umani (oltre 1.1 milioni di posizioni, prefisso `U+`).
  - **UTF-8 (lunghezza variabile):** Codifica ogni code point da 1 a 4 byte.
    - I caratteri ASCII ($0-127$) usano 1 singolo byte con bit più significativo a `0` (retrocompatibilità totale al 100% con ASCII).
    - Caratteri europei estesi usano 2 byte (`110xxxxx 10xxxxxx`).
    - Caratteri asiatici e simboli usano 3 o 4 byte.
  - Python adotta nativamente la codifica UTF-8 per la gestione delle stringhe (`ord()` converte carattere $\to$ intero; `chr()` converte intero $\to$ carattere).

### Stringhe e Terminatori di Riga
- **Stringhe:** Sequenze ordinate e immutabili di caratteri in memoria.
- **Ritorno a capo:**
  - Sistemi Unix / Linux / macOS moderni: solo Line Feed (`\n`, codice ASCII 10).
  - Sistemi Windows: Carriage Return seguito da Line Feed (`\r\n`, codici ASCII 13 + 10).

### Dati Multimediali
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Audio / Suoni:</b></font></mark>
  - Onde di pressione continue discretizzate tramite:
    1. *Campionamento:* Misurazione periodica dell'ampiezza a intervalli regolari di frequenza (es. $44.1\text{ kHz}$ per standard CD audio).
    2. *Quantizzazione:* Approssimazione di ogni campione su una scala a bit finiti (es. 16 bit $= 65.536$ livelli discreti).
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Immagini Raster (Bitmap):</b></font></mark>
  - Matrice bidimensionale di punti colorati elementari (*pixel*).
  - **Modello RGB (True Color, 24 bit):** Ogni pixel memorizza 3 canali di colore da 8 bit (Rosso, Verde, Blu), consentendo $256 \times 256 \times 256 \approx 16.7$ milioni di colori.
  - Formato elementare PPM: intestazione testuale seguita dai valori RGB dei singoli pixel.
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Compressione:</b></font></mark>
  - *Lossless (senza perdita):* Preserva fedelmente l'informazione originaria (es. PNG, FLAC, ZIP).
  - *Lossy (con perdita):* Scarta le frequenze visive o sonore impercettibili all'essere umano per abbattere drasticamente le dimensioni (es. JPEG, MP3).
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Immagini Vettoriali:</b></font></mark>
  - Memorizzano formule e primitive geometriche matematiche (punti, rette, poligoni, curve di Bézier). Vantaggio cardine: ingrandimento e riscalatura infiniti senza perdita di definizione (nessun effetto sgranato).

---

## 2. Sistemi di Numerazione Binaria e Interi con Segno
*Fonte: `Numeri Binari Interi.pdf`*

### Sistemi Posizionali e Basi Numeriche
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Notazione Posizionale Pesata:</b></font></mark>
  Un numero espresso nella base $b$ con cifre $(c_{n-1} c_{n-2} \dots c_1 c_0)_b$ rappresenta la quantità:
$$\sum_{i=0}^{n-1} c_i \cdot b^i = c_{n-1} b^{n-1} + \dots + c_1 b^1 + c_0 b^0$$
- **Basi di Calcolo Principali:**
  - Base 2 (Binaria): cifre $\{0, 1\}$.
  - Base 10 (Decimale): cifre $\{0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$.
  - Base 16 (Esadecimale): cifre $\{0, \dots, 9, A, B, C, D, E, F\}$ (dove $A=10, B=11, C=12, D=13, E=14, F=15$).
  - *Relazione Binario-Esadecimale:* Poiché $16 = 2^4$, ogni cifra esadecimale corrisponde esattamente e univocamente a un blocco di 4 bit (*nibble*).
- **Ordini di Grandezza Binari:**
  - $1\text{ KibiByte (KiB)} = 2^{10} = 1.024\text{ byte}$
  - $1\text{ MebiByte (MiB)} = 2^{20} = 1.048.576\text{ byte}$
  - $1\text{ GibiByte (GiB)} = 2^{30} \approx 1.07 \times 10^9\text{ byte}$
- **Intervallo Numeri Senza Segno (Unsigned):** Con $n$ bit si rappresentano $2^n$ interi distinti:
$$[0, \, 2^n - 1]$$
  *(Es. con 8 bit: $[0, 255]$; con 16 bit: $[0, 65.535]$)*.
- **Conversione Decimale $\to$ Binario:** Algoritmo delle divisioni successive per 2 con lettura dei resti in ordine inverso (dall'ultimo all'iniziale).

### Rappresentazione degli Interi Relativi (con Segno) su $n$ Bit
Tre schemi fondamentali:

| Metodo | Bit di Segno | Intervallo di Rappresentazione | Trattamento dello Zero | Svantaggi / Vantaggi |
| :--- | :---: | :---: | :---: | :--- |
| **Modulo e Segno (MS)** | $b_{n-1}$ ($0=+,\, 1=-$) | $[-(2^{n-1} - 1), \, +(2^{n-1} - 1)]$ | Doppio zero: $+0$ (`00...0`) e $-0$ (`10...0`) | Circuiti di somma e sottrazione separati e complessi. |
| **Complemento a 2 (CP2)** | $b_{n-1}$ peso negativo: $-2^{n-1}$ | $[-2^{n-1}, \, 2^{n-1} - 1]$ | **Zero unico:** `00...0` | Somme e sottrazioni unificate; asimmetria (un numero negativo in più). |
| **Eccesso $2^{n-1}$ (Polarizzato)** | Traslazione di $K = 2^{n-1}$ | $[-2^{n-1}, \, 2^{n-1} - 1]$ | Zero rappresentato come `100...0` | Mantiene l'ordine dei bit identico ai numeri unsigned. |

### Dettaglio Operativo sul Complemento a 2 (CP2)
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Valore Decimale di un Numero in CP2:</b></font></mark>
$$\operatorname{Val}(b_{n-1} b_{n-2} \dots b_0) = - b_{n-1} \cdot 2^{n-1} + \sum_{i=0}^{n-2} b_i \cdot 2^i$$
- **Regola Pratica per Negare un Numero in CP2:**
  1. Invertire tutti i bit del numerale (operazione di complemento a uno: $0 \to 1$, $1 \to 0$).
  2. Sommare $1$ al risultato scartando l'eventuale riporto oltre l'$n$-esimo bit.
  *(Metodo rapido equivalente: scorrere da destra a sinistra, lasciare invariati tutti gli `0` e il primo `1`, poi invertire tutti i bit successivi)*.
- **Addizione in CP2:** Le somme tra interi relativi (positivi o negativi) si eseguono con la normale addizione binaria pura; l'eventuale bit di riporto finale oltre l'$n$-esimo bit viene semplicemente scartato.
- **Overflow Aritmetico:** Si verifica quando il risultato corretto di un'operazione non rientra nell'intervallo consentito $[-2^{n-1}, 2^{n-1}-1]$:
  - Somma di due numeri positivi che genera un risultato negativo (bit di segno $= 1$).
  - Somma di due numeri negativi che genera un risultato positivo (bit di segno $= 0$).

### Cenni su Numeri Frazionari e Virgola Mobile (Floating-Point)
- **Parte Frazionaria Binaria:** Pesi con potenze negative: $2^{-1} = 0.5$, $2^{-2} = 0.25$, $2^{-3} = 0.125$, ecc. Conversione da decimale a binario tramite moltiplicazioni successive per 2 raccogliendo la parte intera.
- **Errori di Approssimazione:** Frazioni decimali finite semplici (come $0.1_{10}$) hanno un periodo binario infinito ($0.00011001100..._2$), generando ineludibili errori di troncamento nei calcoli in virgola mobile standard IEEE 754.
- **Standard IEEE 754:** Rappresenta un numero reale come $\pm (1.M) \times 2^{E - K}$ mediante tre campi: bit di segno ($S$), esponente polarizzato ($E$) e mantissa/significando ($M$).

### Gestione degli Interi in Python
- I calcolatori tradizionali a livello hardware operano con registri a dimensione fissa (a 32 o 64 bit).
- **Precisione Arbitraria di Python:** Python gestisce gli interi (`int`) senza vincoli rigidi di dimensione minima/massima prefissata (*bignum*).
- Gli interi vengono spezzati e memorizzati internamente in blocchi a 30 bit (base $2^{30}$). Le operazioni aritmetiche gestiscono automaticamente l'allocazione dinamica della memoria, rendendo impossibile l'overflow numerico degli interi finché è disponibile memoria RAM.
