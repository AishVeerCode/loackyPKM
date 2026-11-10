---
status: permanent
type: summary
area: education
related: ["[[Lezione 0.1 - Rappresentazione dei Caratteri e Dati Multimediali]]", "[[Lezione 0.2 - Sistemi di Numerazione Binaria e Interi con Segno]]", "[[Lezione 0.3 - Architettura di Von Neumann e Storia dei Calcolatori]]", "[[Comandi]]", "[[University]]"]
aliases: ["Teoria di programmazione", "Teoria di Programmazione", "Sintesi PDF Teoria Programmazione"]
source: ["RappresentazioneCaratteri.pdf", "Numeri Binari Interi.pdf", "Von Neumann.pdf"]
title: "Teoria di Programmazione"
date: '2026-10-15'
updated: '2026-11-09T19:45'
tags: [education/university, education/programmazione, education/teoria]
summary: "Sintesi concisa ed essenziale dei concetti teorici fondamentali estratti esclusivamente dai documenti PDF della cartella Introduzione alla programmazione."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Teoria di programmazione]]

# Teoria di Programmazione

Sintesi compatta e schematica dei contenuti teorici estratti esclusivamente dai file `.pdf` del corso: *Rappresentazione dei Caratteri e Dati Multimediali*, *Sistemi di Numerazione Binaria e Interi con Segno* e *Breve Storia dei Calcolatori ed Architettura di Von Neumann*.

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
  - *Lossless (senza perdita):* Decompressione identica al bit originale (es. PNG, ZIP, FLAC, Run-Length Encoding).
  - *Lossy (con perdita):* Scarta dettagli impercettibili alla fisiologia umana (es. JPEG, MP3).
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Grafica Vettoriale:</b></font></mark>
  - Descrizione geometrica ad alto livello tramite primitive matematiche (punti, linee, poligoni, curve di Bézier). Risoluzione infinita e scalabilità priva di sgranatura (es. formato SVG, font tipografici).

---

## 2. Sistemi di Numerazione Binaria e Interi con Segno
*Fonte: `Numeri Binari Interi.pdf`*

### Notazione Posizionale e Conversioni
- **Sistema Binario Posizionale:** Ogni cifra binaria $b_i \in \{0, 1\}$ ha peso $2^i$:
$$N = \sum_{i=0}^{n-1} b_i \cdot 2^i$$
- Con $n$ bit si rappresentano $2^n$ configurazioni distinte (intervallo $[0, 2^n - 1]$).
- **Algoritmo di Conversione Decimale $\to$ Binario:** Metodo delle divisioni intere successive per 2: i resti raccolti in ordine inverso (dall'ultimo al primo) costituiscono le cifre binarie dal bit più significativo (MSB) a quello meno significativo (LSB).
- **Sistemi Ottale (base 8) ed Esadecimale (base 16):**
  - Ottale: raggruppamento di 3 bit binari per cifra ($2^3 = 8$).
  - Esadecimale: raggruppamento di 4 bit binari per cifra ($2^4 = 16$, cifre `0`..`9`, `'A'`=10 .. `'F'`=15).

### Rappresentazione degli Interi Relativi (con Segno)
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

---

## 3. Breve Storia dei Calcolatori ed Architettura di Von Neumann
*Fonte: `Von Neumann.pdf`*

### Precursori Storici e Nascita del Computer
- **Precursori:** Abaco (4000 anni fa), calcolatrici meccaniche di Schickard (1623), Pascalina (Pascal, 1642, addizioni/sottrazioni a ruote dentate) e Stepped Reckoner (Leibniz, 1671, moltiplicazioni/divisioni a tamburo scanalato).
- **Charles Babbage (1791–1871):** Progetta la *Difference Engine* (calcolo tabelle polinomiali) e la rivoluzionaria *Analytical Engine* (1830–40, programmabile con schede perforate tessili di Jacquard), anticipando la separazione tra unità di calcolo (*mill*), memoria (*store*) e I/O.
- **Ada Lovelace (1815–1852):** Prima programmatrice della storia; elabora l'algoritmo per il calcolo dei numeri di Bernoulli e intuisce la computazione simbolica e multimediale generale.
- **Seconda Guerra Mondiale (1939–1946):** Zuse Z3 (Germania, 1941, primo calcolatore a relè programmabile), Colossus (UK, 1943–44, Turing, decifrazione codici Lorenz a valvole), Harvard Mark 1 (Aiken, 1944, relè elettromeccanici; da una falena nel relè del Mark II nasce il termine *bug*).
- **ENIAC (1946):** Primo calcolatore elettronico general-purpose (Eckert & Mauchly, 18.000 valvole, 27 tonnellate, 150 kW, 5000 op/s), privo di programma memorizzato (riprogrammato tramite riconfigurazione manuale di 6.000 interruttori e cavi).

### Architettura di Von Neumann e Memoria Centrale
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Principio del Programma Memorizzato:</b></font></mark> Dati e istruzioni di programma condividono lo stesso spazio di memoria centrale e sono codificati entrambi come valori binari numerici.
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Blocchi Funzionali CPU:</b></font></mark>
  - **CU (Unità di Controllo):** Coordina il calcolatore, decodifica le istruzioni e invia i segnali di sincronizzazione.
  - **ALU (Unità Aritmetico-Logica):** Esegue operazioni aritmetiche elementari (+, -, *, /) e confronti logici.
  - **Registri Interni:**
    - **PC (Program Counter):** Contiene l'indirizzo in memoria della *prossima* istruzione da eseguire.
    - **IR (Instruction Register):** Conserva l'istruzione attualmente in corso di decodifica ed esecuzione.
    - **Registri Generali (R1..R4):** Memorizzazione rapida di operandi e risultati intermedi.
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Sottosistema di Memoria:</b></font></mark>
  - Celle numerate con **Indirizzo** fisso e **Contenuto** variabile.
  - **MAR (Memory Address Register):** Registro dell'indirizzo a cui accedere.
  - **MDR (Memory Data Register):** Registro per il transito dei dati in lettura o scrittura.
  - *Lettura (Load):* MAR $\leftarrow$ ind, comando Read, MDR riceve dato.
  - *Scrittura (Store):* MAR $\leftarrow$ ind, MDR $\leftarrow$ dato, comando Write.

### Ciclo Macchina Fetch-Decode-Execute
- Sequenza dei passi elementari della CPU:
  1. **Fetch:** Prelievo istruzione dalla RAM: MAR $\leftarrow$ PC, MDR $\leftarrow$ Mem[MAR], IR $\leftarrow$ MDR.
  2. **Incremento:** Aggiornamento del Program Counter: $\text{PC} \leftarrow \text{PC} + 1$.
  3. **Decode:** Decodifica del codice operativo (OpCode) da parte della Control Unit.
  4. **Operand Fetch:** Calcolo e caricamento eventuale di operandi dalla RAM ai registri.
  5. **Execute:** Esecuzione del calcolo (ALU) o trasferimento.
  6. **Ripetizione:** Ritorno al passo 1 fino all'istruzione `HALT`.
- **Istruzioni di Salto (Jump):** Alterano la sequenzialità lineare scrivendo direttamente un nuovo valore nel Program Counter (`PC = nuovo_indirizzo`).

### Legge di Moore, Limiti Fisici e Sistemi Moderni
- **Legge di Moore (1965):** Il numero di transistor per mm² raddoppia ogni 18–24 mesi.
- **I Tre Limiti Fisici Invalicabili del Silicio:**
  1. *Dimensione Atomica:* Transistor $< 3\text{ nm}$ causano perdite per tunneling quantistico (molecola silicio $\approx 0.2\text{ nm}$).
  2. *Velocità della Luce ($c = 300.000\text{ km/s}$):* A 3 GHz la luce percorre solo 10 cm per ciclo; a decine di GHz il segnale non attraversa il chip.
  3. *Densità Termica (Power Wall):* Dissipazione termica per $\text{cm}^2$ incompatibile con frequenze superiori a 4–5 GHz.
- **Transizione Multicore:** Passaggio dall'incremento della frequenza all'integrazione di più core indipendenti sullo stesso die (dual, quad, many-core).
- **Sistemi Embedded & MicroPython:** Informatica diffusa in automotive e IoT; schede didattiche come **Arduino** (nate a Ivrea) e microcontrollori moderni programmati in **MicroPython**.
