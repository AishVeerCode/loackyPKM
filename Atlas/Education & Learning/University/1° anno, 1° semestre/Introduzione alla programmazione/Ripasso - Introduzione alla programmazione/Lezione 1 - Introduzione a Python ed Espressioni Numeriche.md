---
status: permanent
type: lecture
area: education
related: ["[[Lezione 0 - Rappresentazione dei Caratteri e Dati Multimediali]]", "[[Lezione 2 - Variabili Assegnazione Input e Output]]", "[[University]]"]
aliases: ["Lezione 1", "Introduzione a Python", "Intro"]
source: Intro_Lezione1.ipynb
title: "Lezione 1 - Introduzione a Python ed Espressioni Numeriche"
date: '2026-10-01'
updated: 2026-10-01T16:30
tags: [education/university, education/programming, education/python, education/lecture]
summary: "Introduzione al linguaggio Python con espressioni aritmetiche, precisione arbitraria degli interi, operatori numerici, modulo circolare e primi cenni su stringhe e Unicode."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]]

# Lezione 1 - Introduzione a Python ed Espressioni Numeriche

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Python</b></font></mark> è un linguaggio di programmazione di alto livello, interpretato e multiparadigma, ampiamente impiegato per la sua sintassi essenziale e la potente espressività. La prima lezione del corso (curato da D. Lembo, A. Poggi, G. Santucci e M. Schaerf del Dipartimento di Ingegneria Informatica della Sapienza) introduce l'ambiente interattivo come un potente motore di calcolo, formalizzando la valutazione delle espressioni numeriche, la distinzione tra tipi di dato elementari (`int` e `float`), la caratteristica unica della precisione arbitraria per gli interi, l'algebra degli operatori aritmetici (con particolare focus sulla divisione reale, intera e sull'aritmetica modulare), per poi presentare i fondamenti delle sequenze alfanumeriche attraverso la codifica universale UNICODE.

## Ambiente Interattivo ed Espressioni

### Il Ruolo dell'Interprete
Nei moderni ambienti di calcolo (come Jupyter Notebook o la console interattiva IPython/Spyder), l'interprete Python opera secondo il paradigma **REPL** (*Read-Eval-Print Loop*):
1. Legge il comando inserito dall'utente;
2. Valuta l'espressione calcolandone il valore;
3. Stampa a video il risultato e attende l'istruzione successiva.

Un'espressione è una combinazione sintatticamente valida di **operandi** (dati costanti, variabili) e **operatori** (simboli che specificano l'operazione da svolgere). Una volta valutata dall'interprete, ogni espressione restituisce un singolo valore risultante:

```python
7 * (5 + 2)  # Valutazione con priorità tra parentesi: 7 * 7 -> 49
```

## Tipizzazione dei Dati Numerici

Python distingue i dati numerici elementari principalmente in due macro-categorie:
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Interi (int)</b></font></mark>: numeri privi di componente frazionaria, positivi, negativi o nulli (es. `12`, `-9`, `0`).
- <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Numeri a Virgola Mobile (float)</b></font></mark>: numeri con componente decimale (es. `3.14`, `-45.2`, `1.0`), inclusa la notazione scientifica o esponenziale per ordini di grandezza estesi (es. `-42.3e-4` corrispondente analiticamente a $-42.3 \times 10^{-4}$).

### Convenzioni Notazionali e Precisione Arbitraria
1. **Standard Decimale Americano:** Python adotta rigorosamente il punto `.` e non la virgola `,` per separare la parte intera da quella frazionaria (`3.14` e non `3,14`). L'uso della virgola genera una tupla di interi distinti anziché un singolo numero frazionario.
2. **Precisione Arbitraria degli Interi:** Nei linguaggi di programmazione a basso livello (come C o C++) la dimensione degli interi è vincolata all'architettura hardware (tipicamente a 64 bit con valore massimo senza segno pari a $2^{64}-1 = 18.446.744.073.709.551.615 \approx 1.84 \times 10^{19}$). Al superamento di tale soglia si verifica un *integer overflow*. In Python, invece, gli interi godono di **precisione arbitraria**: la dimensione di un intero è limitata unicamente dalla memoria RAM disponibile del computer. L'espressione `21**31` viene pertanto calcolata e restituita con esattezza assoluta:
   ```python
   21**31  # Restituisce 56012759905757754323214828131336041935621
   ```
3. **Miglioramento della Leggibilità con l'Underscore:** Per facilitare la lettura visiva di interi di grandi dimensioni senza incorrere in errori di sintassi (dove `10.304.100.231` violerebbe la grammatica del linguaggio e `10,304,100,231` creerebbe quattro valori separati), Python ammette l'uso dell'underscore `_` come separatore visivo ignorato dall'interprete:
   ```python
   popolazione = 10_304_265_181  # Perfettamente equivalente a 10304265181
   ```

## Operatori Aritmetici ed Elaborazione Numerica

La precedenza degli operatori riflette le regole convenzionali dell'algebra (l'elevamento a potenza ha priorità massima, seguito da moltiplicazione e divisioni, infine addizione e sottrazione), modificabile tramite parentesi tonde `()`.

| Operatore | Significato Matematico | Esempio Sintattico | Risultato Restituito |
| :---: | :--- | :---: | :---: |
| `+` | Somma algebrica | `1 + 5` | `6` |
| `-` | Sottrazione algebrica | `10 - 4.5` | `5.5` |
| `*` | Moltiplicazione | `4 * 3` | `12` |
| `/` | Divisione reale (quoziente continuo) | `6 / 2` | `3.0` |
| `//` | Divisione intera (*floor division*) | `6 // 4` | `1` |
| `%` | Modulo (resto della divisione intera) | `15 % 12` | `3` |
| `**` | Elevamento a potenza | `2 ** 10` | `1024` |

### Regole Fondamentali di Propagazione dei Tipi
- Per gli operatori `+`, `-` e `*`, se entrambi gli operandi sono interi (`int`), il risultato è garantito essere `int`. Se almeno uno degli operandi è frazionario (`float`), l'intero viene implicitamente convertito (promozione di tipo) e il risultato è un `float` (`1.0 + 5` produce `6.0`).
- **Comportamento della Divisione Reale (`/`):** A prescindere dal tipo degli operandi, l'operatore `/` restituisce **sempre e inderogabilmente un `float`**. Sia `2 / 5` che `6 / 2` producono rispettivamente `0.4` e `3.0`.

### Divisione Intera (`//`) e Arrotondamento Inferiore
L'operatore `//` calcola la *floor division*, definita matematicamente come il massimo intero minore o uguale al quoziente reale:
$$\lfloor a / b \rfloor$$
- Se entrambi gli operandi sono `int`, il risultato è un `int` (`6 // 3` $\to$ `2`; `6 // 4` $\to$ `1`).
- Se almeno un operando è `float`, il risultato è un `float` con parte decimale azzerata (`6.0 // 4` $\to$ `1.0`).
- **Attenzione ai Numeri Negativi:** Nel calcolo di `-2 // 3`, poiché il quoziente reale è circa $-0.666\dots$, il più grande intero minore o uguale a tale valore è `-1`, non `0`:
  ```python
  -2 // 3  # Restituisce -1
  ```

### L'Operatore Modulo (`%`) e le sue Applicazioni
L'operatore `%` restituisce il resto $r$ della divisione intera euclidea, legata alla relazione fondamentale:
$$a = b \times (a // b) + (a \% b)$$
Le sue principali funzioni algoritmiche comprendono:
1. **Verifica della Parità:** Un intero $n$ è pari se $n \% 2 == 0$, dispari se $n \% 2 == 1$.
2. **Aritmetica Modulare Circolare:** Consente di confinare una sequenza crescente entro un intervallo finito $[0, m-1]$ (analogo all'avanzamento ciclico delle lancette dell'orologio da $0$ a $11$ calcolato con `% 12`):
   ```python
   15 % 12  # Restituisce 3 (le ore 15 corrispondono alle 3 pomeridiane)
   ```
3. **Decomposizione Temporale e Metrica:** L'azione combinata di `//` e `%` permette di scindere grandezze continue in unità principali e frazioni residue:
   ```python
   secondi_totali = 137
   minuti = secondi_totali // 60   # 2 minuti interi
   secondi_residui = secondi_totali % 60  # 17 secondi rimasti
   print(secondi_totali, "secondi =", minuti, "minuti e", secondi_residui, "secondi")
   ```

## Introduzione al Tipo Stringa e Codifica UNICODE

Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>stringa</b></font></mark> (`str`) in Python è una sequenza ordinata e immutabile di caratteri, delimitata specularmente da una coppia di apici singoli `'...'` oppure doppi `"..."`.

### Lo Standard UNICODE e la Collazione
Python 3 gestisce nativamente lo standard **UNICODE**, che mappa ciascun simbolo grafico, glifo alfabetico, ideogramma o icona internazionale ad un identificatore intero univoco denominato *code point*.
- `ord(c)`: funzione built-in che accetta un singolo carattere e ne restituisce il corrispondente valore ordinale intero UNICODE.
  - `ord('1')` $\to$ `49`
  - `ord('A')` $\to$ `65`
  - `ord('a')` $\to$ `97`
  - `ord('b')` $\to$ `98`
  - `ord('썐')` $\to$ `50000`
- `chr(n)`: funzione inversa che, dato un intero UNICODE valido, restituisce la stringa contenente il carattere associato (`chr(98)` $\to$ `'b'`).

L'ordinamento lessicografico (o **collazione**) dei file e dei testi nei calcolatori si basa direttamente su questa scala numerica:
$$\text{'1'} < \text{'A'} < \text{'a'} < \text{'b'}$$

```python
# Calcolo deterministico del carattere successivo
carattere_successivo = chr(ord('z') + 1)  # Restituisce '{' (poiché ord('z') è 122 e 123 è '{')
```

### Regole Sintattiche ed Errori di Delimitazione
La stringa deve essere aperta e chiusa con il medesimo tipo di apice. I problemi più comuni riguardano conflitti tra delimitatori e contenuto:

| Caso | Stringa | Validità | Causa dell'Errore |
| :--- | :--- | :---: | :--- |
| Apici concordi | `'Ciao'` / `"Ciao"` | Corretta | Delimitatori coerenti all'inizio e alla fine |
| Apici eterogenei | `'Ciao a tutti"` | Errata | Manca corrispondenza tra delimitatore di apertura e chiusura |
| Annidamento corretto | `'Il docente disse: "Buogiorno!"'` | Corretta | L'apice doppio interno non chiude l'apice singolo esterno |
| Annidamento conflittuale | `'Ho aperto l'acqua'` | Errata | L'apostrofo interno chiude prematuramente la stringa; i caratteri seguenti generano `SyntaxError` |

### Operazioni Fondamentali su Stringhe
Tra le sequenze di tipo stringa sono definiti due operatori polimorfici:
1. **Concatenazione (`+`):** fonde due o più stringhe in una nuova stringa contigua.
   ```python
   'prova' + ' ' + 'del nove'  # Genera 'prova del nove'
   ```
2. **Replicazione o Ripetizione (`*`):** moltiplica una stringa per un intero $n$, duplicando la sequenza $n$ volte consecutive.
   ```python
   'ciao ' * 3  # Genera 'ciao ciao ciao '
   ```

## Esercizi Pratici Guidati

I seguenti esercizi consolidano le nozioni aritmetiche e manipolative affrontate:

1. **Calcolo di Potenze Annidate $(2^{10})^5$:**
   In Python l'elevamento a potenza si esprime con `**`:
   ```python
   risultato = (2**10)**5  # Calcola 2^50 = 1125899906842624
   ```
2. **Resto di Potenze $5^5 \pmod{2^3}$:**
   ```python
   resto = (5**5) % (2**3)  # 3125 % 8 = 5 (poiché 3125 = 390 * 8 + 5)
   ```
3. **Calcolo di Radice Quadrata Mediante Esponente Razionale:**
   La radice $\sqrt{3^2 - 4 \cdot 2}$ equivale analiticamente a $(3^2 - 8)^{1/2}$:
   ```python
   radice = (3**2 - 4 * 2) ** 0.5  # (9 - 8) ** 0.5 = 1.0
   ```
4. **Composizione di Stringhe con Ripetizione e Concatenazione:**
   Generare la sequenza `'ciao!ciaociao!!'` a partire dai blocchi `'ciao'` e `'!'`:
   ```python
   s = 'ciao' + '!' + ('ciao' * 2) + ('!' * 2)
   ```
