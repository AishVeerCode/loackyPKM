---
status: permanent
type: lecture
area: education
related: ["[[Lezione 2 - Variabili Assegnazione Input e Output]]", "[[University]]"]
aliases: ["Lezione 3", "Stringhe", "Stringhe e Slicing"]
source: Stringhe_Lezione3.ipynb
title: "Lezione 3 - Stringhe Metodi e Slicing"
date: '2026-10-01'
updated: 2026-10-01T16:30
tags: [education/university, education/programming, education/python, education/lecture]
summary: "Studio rigoroso delle stringhe in Python: sequenze di escape, indicizzazione bidirezionale, immutabilità, catalogo dei metodi built-in, slicing avanzato e manipolazioni."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 3 - Stringhe Metodi e Slicing]]

# Lezione 3 - Stringhe Metodi e Slicing

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Le stringhe</b></font></mark> (`str`) rappresentano in Python il tipo di dato fondamentale per la codifica, l'elaborazione e la strutturazione delle informazioni testuali. Questa terza lezione didattica (Sapienza Università di Roma, DIAG) esamina la natura interna delle stringhe come sequenze omogenee e <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>immutabili</b></font></mark> di caratteri UNICODE. Vengono formalizzati i caratteri speciali di controllo (escape characters), il sistema di indicizzazione a base zero e bidirezionale (indici negativi), il catalogo dei metodi funzionali di classe (`lower`, `upper`, `count`, `find`, `rfind`, `replace`, `strip`), per poi culminare nella teoria e nelle applicazioni dello **slicing** (`s[i:j:n]`) per l'estrazione mirata, il campionamento a intervalli e l'inversione delle sequenze.

## Caratteri Speciali ed Escape Sequences

All'interno di una stringa Python possono essere codificati caratteri speciali non stampabili (comandi di impaginazione e controllo) oppure simboli riservati. Ciascuno di essi è denotato da una sequenza di escape che inizia con il carattere backslash `\`:

| Sequenza | Nome Convenzionale | Effetto Semantico |
| :---: | :--- | :--- |
| `\n` | *Newline* | Ritorno a capo con avanzamento alla riga successiva |
| `\t` | *Horizontal Tab* | Inserimento di una tabulazione orizzontale (spaziatura fissa) |
| `\b` | *Backspace* | Arretramento del cursore con cancellazione del carattere precedente |
| `\'` | *Single Quote* | Inserisce un apice singolo all'interno di una stringa delimitata da apici singoli |
| `\"` | *Double Quote* | Inserisce un apice doppio all'interno di una stringa delimitata da apici doppi |
| `\\` | *Backslash* | Inserisce il carattere letterale backslash evitando che funga da escape |

### Il Backslash come Continuazione di Riga
Se posizionato al termine di una riga di codice al di fuori o all'interno di un'istruzione, il carattere `\` funge da operatore di **continuazione di riga**:
```python
print(5, \
      6)  # Stampa correttamente 5 6 su un'unica riga
```
*Regola Sintattica Rigida:* Subito dopo il carattere `\` non deve essere presente alcun carattere, neppure uno spazio bianco o una tabulazione, altrimenti l'interprete solleva `SyntaxError: unexpected character after line continuation character`. Inoltre, `\` non può spezzare un nome di variabile o una parola riservata.

### Rappresentazione Interna vs Emissione a Video
Si osserva una distinzione cruciale tra la valutazione dell'oggetto nella shell (che invoca `repr()` mostrando i codici di escape) e la sua visualizzazione mediante `print()` (che interpreta ed esegue i comandi di controllo):
```python
x = 'prima\b \n\ndi una \t riga con \' e \\'
x         # Output REPL: 'prima\x08 \n\ndi una \t riga con \' e \\'
print(x)  # Emette a video il testo formattato su righe separate con tabulazione
```

## Topologia dell'Indicizzazione e Immutabilità

Una stringa $s$ di cardinalità $N = \text{len}(s)$ è una sequenza posizionale in cui ogni carattere occupa una locazione identificata da un indice intero.

### Indicizzazione Bidirezionale: Positiva e Negativa
Python supporta nativamente una doppia mappa di coordinate per ciascun elemento:
1. **Indici Positivi (da sinistra verso destra):** variano nell'intervallo $[0, N-1]$, dove l'indice `0` identifica il primo carattere.
2. **Indici Negativi (da destra verso sinistra):** variano nell'intervallo $[-1, -N]$, dove `-1` identifica l'ultimo carattere e `-N` individua nuovamente il primo elemento.

Consideriamo la stringa `s = 'pippo'`:

| Carattere | `p` | `i` | `p` | `p` | `o` |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **Indice Positivo** | `0` | `1` | `2` | `3` | `4` |
| **Indice Negativo** | `-5` | `-4` | `-3` | `-2` | `-1` |

Valgono le identità algebriche universali:
$$s[\text{len}(s) - 1] \equiv s[-1]$$
$$s[0] \equiv s[-\text{len}(s)]$$

Tentare di accedere a un indice al di fuori degli intervalli ammessi (es. `s[5]` o `s[-6]`) genera un'eccezione di runtime: `IndexError: string index out of range`.

### Il Principio di Immutabilità
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Le stringhe in Python sono oggetti immutabili</b></font></mark> (*immutable data types*). Una volta allocata in memoria, la sequenza dei caratteri di una stringa non può essere modificata in-place:

```python
s = 'Pippo'
s[2] = 'x'  # Errore irreversibile: TypeError: 'str' object does not support item assignment
```

Qualsiasi metodo o operazione applicata a una stringa non altera l'oggetto originale, ma restituisce un **nuovo oggetto stringa** allocato in una distinta zona di memoria. Per conservare la trasformazione, il nuovo valore deve essere esplicitamente riassegnato a una variabile:
```python
s = 'Pippo'
s_modificata = s.replace('p', 'k', 1)  # Produce 'Pikpo'; s rimane immutata a 'Pippo'
```

## Metodi e Funzioni per le Stringhe

### Cardinalità della Sequenza: `len()`
La funzione `len(s)` restituisce il numero totale di caratteri costituenti la stringa. I caratteri speciali (`\n`, `\t`) occupano una singola unità di lunghezza:
```python
len('palla')       # 5
len('pal\tla')     # 6 (il tabulatore conta come 1 carattere)
len('')            # 0 (stringa vuota)
```

### Conversione di Registro: `lower()` e `upper()`
- `s.lower()`: restituisce una copia della stringa con tutti i caratteri alfabetici convertiti in minuscolo.
- `s.upper()`: restituisce una copia con tutti i caratteri convertiti in maiuscolo.

Entrambi i metodi preservano inalterati i caratteri non alfabetici (cifre, spazi, punteggiatura).

### Conteggio di Sottostringhe: `count()`
Il metodo `s.count(sub)` calcola il numero di occorrenze **non sovrapposte** della sottostringa `sub` in `s`:
```python
s = 'Pallone bianco di Paolo'
s.count('a')      # 3
s.count('lo')     # 2 ('Pallone' e 'Paolo')

s1 = 'lololo'
s1.count('lolo')  # Restituisce 1 (la ricerca consuma i caratteri esaminati senza overlapping)
```
*Caso Notabile della Stringa Vuota:* Per convenzione di linguaggio, la stringa vuota `''` si considera presente prima del primo carattere, tra ogni coppia di caratteri adiacenti e dopo l'ultimo carattere. Di conseguenza:
$$s.\text{count('')} = \text{len}(s) + 1$$

### Ricerca Posizionale: `find()` e `rfind()`
- `s.find(sub)`: esegue una scansione da sinistra verso destra e restituisce l'indice della prima occorrenza di `sub`. Se `sub` non è presente, restituisce convenzionalmente `-1`.
- `s.rfind(sub)` (*right find*): esegue la ricerca a ritroso partendo dalla fine della stringa verso sinistra, restituendo la posizione dell'ultima occorrenza (o `-1` se assente).

```python
s = 'Pallone bianco di Paolo'
s.find('o')       # Restituisce 4 (la 'o' di 'Pallone')
s.rfind('o')      # Restituisce 22 (l'ultima 'o' di 'Paolo')
s.find('xyz')     # Restituisce -1
```

### Sostituzione di Pattern: `replace()`
Il metodo `s.replace(old, new[, count])` genera una nuova stringa in cui le occorrenze di `old` sono rimpiazzate con `new`:
```python
s = 'Pallone bianco di Paolo'
s.replace('l', 'r')       # 'Parrone bianco di Paoro' (sostituzione globale)
s.replace('l', 'r', 2)    # 'Parrone bianco di Paolo' (limita alle prime 2 occorrenze da sinistra)
s.replace('a', '')        # Eliminazione: cancella tutte le 'a' sostituendole con la stringa vuota
```

### Pulizia dei Margini: `strip()`
Il metodo `s.strip()` restituisce una nuova stringa priva dei caratteri di spaziatura (*whitespace*: spazi `' '`, tabulazioni `\t`, ritorni a capo `\n`) posizionati **esclusivamente all'inizio e alla fine** della stringa. La spaziatura interna non viene intaccata:
```python
s = ' \n\tprova\t di strip  \n'
s.strip()  # Restituisce esattamente 'prova\t di strip'
```

### Conversioni e Tabelle UNICODE: `str()`, `ord()`, `chr()`
- `str(oggetto)`: converte qualsiasi entità (interi, reali) in sequenza testuale per agevolare concatenazioni senza spaziature implicite:
  ```python
  giorno, mese, anno = 12, 10, 2026
  data = str(giorno) + '/' + str(mese) + '/' + str(anno)  # '12/10/2026'
  ```
- `ord(c)`: restituisce il code point intero UNICODE del carattere `c`.
- `chr(n)`: restituisce il carattere corrispondente all'intero $n$ (con $0 \le n \le 1.114.111$).
- **Successione Alfabetica:** Il carattere immediatamente successivo a `c` si ottiene componendo:
  ```python
  succ = chr(ord(c) + 1)
  ```

## Teoria e Tecnica dello Slicing

Lo <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>slicing</b></font></mark> consente di estrarre porzioni o sottosequenze continue/periodiche da una stringa mediante la sintassi parametrica a parentesi quadre:
$$s[i : j : n]$$
dove:
- $i$ (*start*): indice di inizio (**incluso**);
- $j$ (*stop*): indice di fine (**escluso**);
- $n$ (*step*): passo di avanzamento o campionamento.

### Sintassi Semplice a Due Parametri ($s[i:j]$)
Quando il passo $n$ è omesso, assume valore di default $n = 1$:
- `s[i:j]`: caratteri dall'indice $i$ a $j-1$.
- `s[:j]`: omissione di $i \implies$ parte dall'inizio (indice `0`).
- `s[i:]`: omissione di $j \implies$ prosegue fino alla fine inclusa (indice `len(s)`).
- `s[:]`: copia completa della stringa originale.
- **Condizione di Stringa Vuota:** Se $i \ge j$ (con passo positivo), l'espressione restituisce la stringa vuota `''`.

```python
s = 'paperopoli'
s[1:3]    # 'ap' (indici 1 e 2)
s[:3]     # 'pap' (indici 0, 1, 2)
s[1:]     # 'aperopoli' (da 1 fino alla fine)
s[4:4]    # '' (intervallo nullo)
```

### Sintassi con Passo ($s[i:j:n]$)
Il terzo parametro seleziona un carattere ogni $n$ posizioni lungo la traiettoria:
```python
s = 'paperopoli'
s[1:8:2]   # Estrae indici 1, 3, 5, 7 -> 'aero'
s[0:10:3]  # Estrae indici 0, 3, 6, 9 -> 'pepi'
```

### Slicing a Ritroso e Inversione con Passo Negativo
Se il passo $n$ è negativo ($n < 0$), la scansione avviene da destra verso sinistra:
- Affinché l'estrazione non sia vuota, deve valere la relazione **$i > j$** (con $i$ e $j$ coerenti nello stesso sistema di riferimento).
- **Inversione Completa della Stringa:** Utilizzando i valori di default per inizio e fine con passo `-1`:
  ```python
  s = '012345'
  s[::-1]  # Restituisce '543210'
  ```

Regole di consistenza dello slicing negativo:
- `s[3:1:-1]` $\to$ estrae indici 3 e 2: `'32'`.
- `s[1:3:-1]` $\to$ poiché $i < j$ con passo negativo, produce la stringa vuota `''`.

## Tecniche Avanzate: Sostituzione Mirata per Posizione

Combinando `find()`, lo slicing e `replace()`, è possibile sostituire un'occorrenza specifica successiva alla prima (es. rimpiazzare solo la seconda occorrenza di un carattere con `'*'`):

```python
s = "pallone bianco"
c = "l"

# 1. Identificazione della prima occorrenza
pos = s.find(c)  # Indice 2

# 2. Partizionamento della stringa e sostituzione controllata sulla seconda porzione
prefisso = s[:pos + 1]                         # 'pal' (preserva la prima 'l')
suffisso_modificato = s[pos + 1:].replace(c, '*', 1)  # '*one bianco' (sostituisce solo la successiva)

risultato = prefisso + suffisso_modificato
print(risultato)  # 'pal*one bianco'
```

## Esercizi Pratici Guidati

1. **Analisi e Sostituzione di un Carattere:**
   Dati la stringa $s$ e il carattere $x$, determinare la prima occorrenza, il conteggio totale e la stringa con $x$ rimpiazzato da `'!!!'`:
   ```python
   s = input("Inserisci la stringa: ")
   x = input("Inserisci il carattere: ")
   print("Prima occorrenza:", s.find(x))
   print("Conteggio totale:", s.count(x))
   print("Stringa modificata:", s.replace(x, '!!!'))
   ```

2. **Sostituzione e Ricerca di Bigrammi:**
   Dati $s$, $x$ e $y$, stampare la stringa con $x$ sostituito da $y$ e il conteggio del bigramma composto $xy$:
   ```python
   s = input("Inserisci la stringa: ")
   x = input("Carattere x: ")
   y = input("Carattere y: ")
   print("Sostituzione:", s.replace(x, y))
   print("Occorrenze di xy:", s.count(x + y))
   ```

3. **Campionamento Periodico a Passo $n$:**
   Data la stringa $s$ e un intero positivo $n$, stampare un carattere ogni $n$ posizioni (es. `'linguaggio di programmazione'` con $n = 4 \implies$ `'luiiomi'`):
   ```python
   s = input("Inserisci la stringa: ")
   n = int(input("Inserisci il passo n: "))
   print("Risultato campionamento:", s[::n])
   ```
