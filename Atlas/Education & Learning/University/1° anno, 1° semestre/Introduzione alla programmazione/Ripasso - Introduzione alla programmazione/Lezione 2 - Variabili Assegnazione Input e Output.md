---
status: permanent
type: lecture
area: education
related: ["[[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]]", "[[Lezione 3 - Stringhe Metodi e Slicing]]", "[[University]]"]
aliases: ["Lezione 2", "Variabili Input e Output", "Variabili e Assegnazione"]
source: Variabili_input_output_corretto_Lezione2.ipynb
title: "Lezione 2 - Variabili Assegnazione Input e Output"
date: '2026-10-01'
updated: 2026-10-01T16:30
tags: [education/university, education/programming, education/python, education/lecture]
summary: "Modello di memoria, tipizzazione dinamica vs statica, istruzione di assegnazione l-value/r-value, operatori composti, flusso di I/O con print, input, int e float."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 2 - Variabili Assegnazione Input e Output]]

# Lezione 2 - Variabili Assegnazione Input e Output

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Le variabili</b></font></mark> e il meccanismo di <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>assegnazione</b></font></mark> costituiscono l'architettura portante di qualsiasi programma imperativo, consentendo di etichettare e manipolare locazioni di memoria RAM in modo dinamico. In questa lezione (Sapienza Università di Roma, DIAG), l'analisi si concentra sulla semantica dell'operatore di assegnazione `=`, sul confronto epistemologico tra la tipizzazione statica (linguaggio C) e la tipizzazione dinamica di Python, sull'ecosistema degli operatori composti, sulle differenze operative tra shell interattiva, editor di codice (Spyder) e notebook, per poi formalizzare il canale di I/O standard basato sulle funzioni `print()`, `input()` e sulle conversioni esplicite di tipo (`int()` e `float()`).

## Il Modello di Memoria e le Variabili

Una variabile è una zona astratta della memoria centrale (RAM) a cui viene associato un **nome simbolico univoco** (identificatore), destinata a ospitare un dato appartenente a un determinato tipo (es. intero, reale, stringa, booleano).

### Tipizzazione Statica vs Tipizzazione Dinamica
La gestione dei tipi differenzia radicalmente i linguaggi di programmazione compilati tradizionali da Python:

```C
/* Linguaggio C: Tipizzazione Statica e Dichiarazione Esplicita */
int i;      // i è vincolata permanentemente al tipo intero
i = 5;      // Assegnazione valida
i = 3.9;    // 3.9 viene forzato a intero mediante troncamento: i assume valore 3
```

```python
# Linguaggio Python: Tipizzazione Dinamica
i = 5       # Viene allocato un oggetto intero 5; i punta a tale oggetto
i = 3.9     # i viene riassociata a un nuovo oggetto float di valore 3.9
```

- **In C (Static Typing):** Il tipo è legato indissolubilmente alla cella di memoria/variabile al momento della dichiarazione preventiva nel codice sorgente e non può mutare nel corso dell'esecuzione.
- **In Python (Dynamic Typing):** Il tipo è una proprietà intrinseca dell'**oggetto/valore** allocato nello heap di memoria, non del nome. La variabile è un riferimento o etichetta (*pointer/reference*) applicata all'oggetto; pertanto, un identificatore può referenziare oggetti di tipo eterogeneo in istanti successivi (sebbene sia buona prassi mantenere coerente il tipo per favorire la chiarezza del codice).

### Regole Lessicali per i Nomi di Variabile
Un identificatore in Python deve rispettare le seguenti norme sintattiche:
1. Il primo carattere deve essere obbligatoriamente una lettera alfabetica (maiuscola o minuscola) oppure il carattere underscore `_`.
2. I caratteri successivi possono essere lettere, cifre numeriche (`0`-`9`) o underscore `_`. Non sono ammessi spazi, trattini o caratteri speciali (`$`, `@`, `!`).
3. **Sensibilità al Maiuscolo (Case-Sensitivity):** Python distingue rigorosamente lettere maiuscole e minuscole. Ad esempio, `area`, `Area` e `AREA` sono tre identificatori distinti allocati in locazioni separate.

## L'Istruzione di Assegnazione (`=`)

L'istruzione elementare di assegnazione assume la forma generale:
$$\text{variabile} = \text{espressione}$$

```python
raggio = 2.0
area = raggio * raggio * 3.14
print(area)  # Calcola ed emette a video 12.56
```

### Valore Sinistro ($l$-value) e Valore Destro ($r$-value)
In un'assegnazione si manifesta un'asimmetria funzionale:
- **Valore Sinistro ($l$-value):** È situato alla sinistra di `=` e deve rappresentare esclusivamente un *riferimento a memoria* (il nome della variabile).
- **Valore Destro ($r$-value):** È situato alla destra di `=` ed è un'*espressione* valutabile che produce un valore concreto.

L'interprete valuta interamente l'espressione di destra leggendo dalla memoria il valore attuale delle variabili ivi richiamate; solo al termine del calcolo il risultato viene associato al nome a sinistra.

### Assegnazione vs Uguaglianza Matematica
L'operatore `=` in informatica **non è una relazione simmetrica di uguaglianza**:
- In matematica l'uguaglianza è commutativa: se $a = b$, allora $b = a$.
- In programmazione:
  ```python
  area = raggio * raggio * 3.14  # Corretta: valuta a destra e assegna a sinistra
  raggio * raggio * 3.14 = area  # Errore grave: solleva SyntaxError (l'l-value non può essere un'espressione)
  ```
L'uguaglianza relazionale come predicato logico viene gestita da un operatore distinto, il doppio uguale `==` (affrontato nelle strutture decisionali).

### Aggiornamento di Stato e Operatori Composti
Se a una variabile già esistente viene assegnato un nuovo valore, il legame con il vecchio dato decade (il valore pregresso viene rilasciato al garbage collector se privo di altri riferimenti):

```python
area = 5
print("Valore iniziale:", area)   # 5
area = 99
print("Valore aggiornato:", area)  # 99
```

Python mette a disposizione gli **operatori di assegnazione composti** (*in-place operators*) che combinano il calcolo aritmetico con la riassegnazione:

| Sintassi Compatta | Semantica Equivalente | Descrizione Operativa |
| :---: | :--- | :--- |
| `i += 5` | `i = i + 5` | Incremento |
| `i -= 1` | `i = i - 1` | Decremento |
| `i *= 2` | `i = i * 2` | Moltiplicazione in-place |
| `i /= 3` | `i = i / 3` | Divisione reale in-place |
| `i //= 2` | `i = i // 2` | Divisione intera in-place |
| `i %= 2` | `i = i % 2` | Modulo in-place |
| `i **= 4` | `i = i ** 4` | Elevamento a potenza in-place |

## Ambienti di Sviluppo: Shell, Editor e Notebook

La modalità di esecuzione condiziona il comportamento dell'output:

1. **La Shell Interattiva (REPL):** Esegue istruzione per istruzione. Se un'espressione non viene assegnata a una variabile, la shell stampa automaticamente il suo valore a terminale. Tuttavia, il codice inserito nella shell è volatile e scompare alla chiusura della sessione.
2. **L'Editor di Testo (Script `.py` in Spyder o VS Code):** Consente di scrivere programmi complessi, salvarli su file persistenti e rieseguirli infinite volte. In un file di script, l'interprete calcola le espressioni in background: **nessun dato viene visualizzato a schermo a meno che non si utilizzi esplicitamente la funzione `print()`**.
3. **I Jupyter Notebooks:** Uniscono la persistenza degli script alla natura interattiva della shell. All'interno di una cella, digitando il nome di una variabile o un'espressione come ultima riga, questa verrà mostrata automaticamente; le righe intermedie richiedono comunque `print()`.

## Flusso di I/O Standard: `print()`, `input()`, `int()` e `float()`

Un programma informatico utile deve essere parametrico, ovvero in grado di elaborare input arbitrari forniti dall'utente o da periferiche esterne anziché lavorare su costanti cablate nel codice (*hardcoded*).

### La Funzione di Output: `print()`
Consente di trasmettere informazioni allo standard output (la console):
- Accetta un numero arbitrario di argomenti separati da virgole.
- Converte implicitamente ciascun argomento nella sua rappresentazione testuale, separandoli di default con uno spazio:
  ```python
  print("Moltiplicando", 4.5, "per", 3.7, "ottengo:", 4.5 * 3.7)
  ```

### La Funzione di Input: `input()`
Sospende l'esecuzione del programma e attende che l'utente digiti una sequenza di caratteri sulla tastiera confermandola con l'invio:
```python
nome_utente = input("Inserisci il tuo nome: ")
```

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Regola Aurea dell'Input:</b></font></mark> La funzione `input()` restituisce **sempre e inderogabilmente un dato di tipo stringa (`str`)**, anche qualora l'utente prema cifre numeriche.

Se si esegue:
```python
valore = input("Inserisci un numero: ")  # Utente inserisce 5 -> valore assume '5'
print(valore * 4)                       # Esegue la ripetizione della stringa: stampa '5555', non 20!
```

### Conversioni di Tipo Esplicite (Casting): `int()` e `float()`
Per poter utilizzare i dati immessi da tastiera in espressioni aritmetiche, occorre applicare una funzione di conversione:

1. **Conversione a Intero con `int()`:**
   Estrae il valore intero da una sequenza di sole cifre decimali:
   ```python
   n = int(input("Inserisci un numero intero: "))
   print(n * 4)  # Se l'utente inserisce 5, il calcolo restituisce 20
   ```
   *Condizione di Errore:* Se la stringa contiene caratteri alfabetici, simboli o punti decimali (`int('3.55')`), l'interprete solleva un'eccezione bloccante di tipo `ValueError`.

2. **Conversione a Reale con `float()`:**
   Converte stringhe numeriche con parte frazionaria in virgola mobile:
   ```python
   raggio = float(input("Inserisci il raggio: "))
   area = 3.14159 * (raggio ** 2)
   ```
   *Limitazioni di `float()`:*
   - Accetta il punto decimale ma **non la virgola** (`float('3.55')` è valido; `float('3,55')` solleva `ValueError`).
   - Non effettua la valutazione algebrica di formule testuali: `float("12*3")` solleva `ValueError` in quanto i caratteri dell'operatore `*` non costituiscono una rappresentazione letterale di numero reale.

3. **Conversione Inversa con `str()`:**
   Qualsiasi entità numerica può essere trasformata in stringa per abilitare concatenazioni esatte prive di spaziatura automatica:
   ```python
   giorno = 12
   mese = 10
   anno = 2026
   data_formattata = str(giorno) + "/" + str(mese) + "/" + str(anno)  # '12/10/2026'
   ```

## Esercizi Pratici Guidati

1. **Superficie Esterna del Cubo:**
   Dato lo spigolo $l$, la superficie totale è pari a $6 \cdot l^2$:
   ```python
   spigolo = float(input("Inserisci la lunghezza dello spigolo del cubo: "))
   superficie = 6 * (spigolo ** 2)
   print("La superficie totale del cubo è:", superficie)
   ```

2. **Geometria del Cerchio (Diametro e Area):**
   Dato il raggio $r$, calcolare diametro ($d = 2r$) e area ($A = \pi r^2$):
   ```python
   raggio = float(input("Inserisci il raggio del cerchio: "))
   diametro = 2 * raggio
   area = 3.14159 * (raggio ** 2)
   print("Diametro:", diametro)
   print("Area:", area)
   ```

3. **Volume del Cilindro:**
   Dati raggio di base $r$ e altezza $h$, il volume è $V = \pi r^2 h$:
   ```python
   r = float(input("Inserisci il raggio della base: "))
   h = float(input("Inserisci l'altezza del cilindro: "))
   volume = 3.14159 * (r ** 2) * h
   print("Il volume del cilindro vale:", volume)
   ```
