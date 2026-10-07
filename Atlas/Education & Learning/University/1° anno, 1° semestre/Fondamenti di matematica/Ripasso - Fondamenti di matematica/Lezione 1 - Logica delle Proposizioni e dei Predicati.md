---
status: permanent
type: lecture
area: education
related: ["[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[University]]", "[[Lecture 01 - Sets, Set Operations and Mathematical Induction]]", "[[Lecture 07 - Convergent Sequences of Real Numbers]]", "[[Lecture 17 - Uniform Continuity and Definition of the Derivative]]"]
aliases: ["Lezione 1", "Fondamenti di Matematica Lezione 1"]
source: Lezione 1.pdf
title: "Lezione 1 - Logica delle Proposizioni e dei Predicati"
date: '2026-10-01'
updated: 2026-10-07T19:30
tags: [education/university, education/matematica, education/lecture]
summary: "Trattazione rigorosa della logica delle proposizioni e dei predicati con connettivi, quantificatori, leggi di De Morgan e dimostrazione per contronominale."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 1 - Logica delle Proposizioni e dei Predicati]]

# Lezione 1 - Logica delle Proposizioni e dei Predicati

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La logica matematica</b></font></mark> costituisce il linguaggio formale essenziale per l'intero edificio dell'analisi matematica e dei fondamenti, articolandosi nello studio delle proposizioni, dei connettivi di verità e della quantificazione predicativa. La prima lezione introduce la distinzione tra enunciati ambigui e proposizioni univocamente determinabili, formalizzando le operazioni logiche fondamentali e fornendo gli strumenti dimostrativi cardine: le leggi di De Morgan, il metodo per assurdo e la dimostrazione per contronominale.

## Fondamenti del Ragionamento Logico
Un'inferenza logica valida preserva la verità dalle premesse alla conclusione indipendentemente dal contenuto empirico del discorso. Consideriamo la classica deduzione formale:
- Premessa maggiore: *Se $x$ è Marziano, allora $x$ vive su Plutone*
- Premessa minore: *$x$ è Socrate (Socrate è un Marziano)*
- Conclusione: *Perciò, Socrate vive su Plutone*

La validità della deduzione non dipende dalla veridicità empirica su Socrate o Plutone, ma dalla coerenza intrinseca della struttura condizionale. La logica matematica prescinde dal significato contingente delle parole per analizzare le regole formali che garantiscono la trasmissione della verità.

## Logica delle Proposizioni

### Definizione di Proposizione
Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>proposizione</b></font></mark> è una frase o affermazione del linguaggio naturale per la quale è possibile stabilire in modo oggettivo, univoco e senza ambiguità se sia vera ($V$) oppure falsa ($F$).

Esempi di proposizioni:
- "$4$ è un numero primo" $\to$ Falso ($F$)
- "$\sqrt{2} \in \mathbb{R}$" $\to$ Vero ($V$)
- "Tutti gli interi sono pari" $\to$ Falso ($F$)

Esempi di enunciati che non costituiscono proposizioni:
- "Chiudi la porta!" $\to$ Esortazione/imperativo privo di valore di verità.
- "Napoli è lontana da Roma" $\to$ Enunciato ambiguo e soggettivo (manca un criterio oggettivo di distanza).

Le proposizioni atomiche vengono denotate convenzionalmente con lettere maiuscole dell'alfabeto: $P, Q, R, \dots$

### Connettivi Logici e Composizione
A partire da proposizioni elementari, si costruiscono proposizioni composte per mezzo degli operatori logici fondamentali:

| Connettivo | Simbolo | Significato | Descrizione Semantica |
| :--- | :---: | :--- | :--- |
| Negazione | $\neg P$ | "non $P$" | Inverte il valore di verità: vera se $P$ è falsa, falsa se $P$ è vera. |
| Congiunzione | $P \land Q$ | "$P$ e $Q$" | Vera se e solo se **entrambe** le proposizioni componenti sono vere. |
| Disgiunzione | $P \lor Q$ | "$P$ o $Q$" | Vera quando **almeno una** tra $P$ e $Q$ è vera (disgiunzione inclusiva). |
| Implicazione | $P \implies Q$ | "se $P$, allora $Q$" | Falsa solo quando la premessa $P$ è vera e la conseguenza $Q$ è falsa. |
| Equivalenza | $P \iff Q$ | "$P$ se e solo se $Q$" | Vera quando $P$ e $Q$ possiedono il medesimo valore di verità. |

### Tabelle di Verità
Il comportamento dei connettivi binari e unari è descritto esaustivamente dalle seguenti matrici di verità:

$$
\begin{array}{|c|c||c|c|c|c|c|}
\hline
P & Q & \neg P & P \land Q & P \lor Q & P \implies Q & P \iff Q \\
\hline
V & V & F & V & V & V & V \\
V & F & F & F & V & F & F \\
F & V & V & F & V & V & F \\
F & F & V & F & F & V & V \\
\hline
\end{array}
$$

<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Disgiunzione inclusiva vs esclusiva:</b></font></mark> In matematica il connettivo "$\lor$" (*vel* latino) è sempre inclusivo. Se una madre dice al figlio: "Per uscire devi lavare i piatti o portare fuori la spazzatura", il figlio è autorizzato ad uscire anche se esegue entrambi i compiti. L'esclusione (*aut* latino) si verificherebbe solo richiedendo specificamente che uno e un solo evento abbia luogo.

### L'Implicazione Condizionale: Condizioni Necessarie e Sufficienti
Nella proposizione $P \implies Q$:
- $P$ è detta <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>condizione sufficiente</b></font></mark> per il verificarsi di $Q$. Se $P$ è vera, $Q$ deve necessariamente essere vera.
- $Q$ è detta <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>condizione necessaria</b></font></mark> affinché $P$ sia vera. Se $Q$ non è vera, $P$ non può essere vera.

Un esempio cardinale in analisi matematica riguarda le serie numeriche:
$$\sum_{n=1}^{+\infty} a_n \text{ converge} \implies \lim_{n \to +\infty} a_n = 0$$
La convergenza della serie è condizione sufficiente per l'annullamento del termine generale; l'annullamento del termine generale è condizione necessaria, ma non sufficiente, per la convergenza della serie (come dimostra la serie armonica $\sum 1/n$).

La doppia implicazione logica soddisfa la decomposizione:
$$(P \iff Q) \equiv (P \implies Q) \land (Q \implies P)$$

## Leggi del Calcolo Proposizionale
Tra le formule tautologiche (sempre vere indipendentemente dal valore delle variabili componenti), emergono principi cardine:

1. **Legge del Terzo Escluso (Tertium non datur):**
   $$P \lor \neg P \equiv V$$
   Ogni proposizione è o vera o falsa: non vi è una terza via ontologica nel formalismo classico.

2. **Leggi di De Morgan:**
   $$\neg (P \land Q) \iff (\neg P \lor \neg Q)$$
   $$\neg (P \lor Q) \iff (\neg P \land \neg Q)$$
   Negare che due proprietà coesistano equivale ad affermare che almeno una delle due non sussiste.

3. **Legge della Contronominale:**
   $$(P \implies Q) \iff (\neg Q \implies \neg P)$$
   Un'implicazione è logicamente indistinguibile dalla sua forma contronominale.

4. **Metodo di Dimostrazione per Assurdo (Reductio ad Absurdum):**
   $$(P \implies Q) \iff [(P \land \neg Q) \implies (R \land \neg R)]$$
   Per dimostrare che $P \implies Q$, si assume vera la premessa $P$ e falsa la conclusione $\neg Q$. Se da queste assunzioni congiunte si deduce una contraddizione logica insanabile ($R \land \neg R$), allora la tesi iniziale $Q$ deve necessariamente essere vera.

## Logica dei Predicati

### Predicati e Variabili
Un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>predicato</b></font></mark> (o proposizione aperta) è un'espressione linguistica contenente una o più variabili, il cui valore di verità dipende dai valori specifici attribuiti a tali variabili nell'universo del discorso.
- Esempi ad una variabile: $P(x) = \text{"}x + 3 = 7\text{"}$, $Q(x) = \text{"}x \text{ è un numero primo"}$.
- Esempio a due variabili: $R(x, y) = \text{"}x \text{ è capace di svolgere il lavoro } y\text{"}$.

### Variabili Libere e Legate
- Una variabile $x$ in un predicato si dice **libera** se su di essa non grava alcun vincolo quantificatorio.
- Una variabile $x$ si dice **legata** (o vincolata) se compare nel raggio d'azione di un quantificatore.
Nel predicato $(\forall x)(x + 3 \le y)$, la variabile $x$ è legata dal quantificatore universale, mentre la variabile $y$ è libera. Un predicato privo di variabili libere diventa una proposizione con un valore di verità ben definito.

### Quantificatori Universale ed Esistenziale
I quantificatori trasformano predicati aperti in asserzioni logiche:
- **Quantificatore Universale ($\forall$):** "per ogni", "qualunque sia".
  $(\forall x)(P(x))$ asserisce che la proprietà $P(x)$ vale per ogni elemento del dominio.
- **Quantificatore Esistenziale ($\exists$):** "esiste almeno un".
  $(\exists x)(P(x))$ asserisce che esiste almeno un elemento per cui $P(x)$ è vera.

Il dominio di validità del quantificatore delimita il suo <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>campo d'azione</b></font></mark>, tipicamente circoscritto da parentesi: $(\forall x)(P(x) \implies Q(x))$.

### Negazione dei Quantificatori
Le leggi di De Morgan si estendono naturalmente ai quantificatori scambiandone la tipologia e negando il predicato interno:
$$\neg (\forall x : P(x)) \iff \exists x : \neg P(x)$$
$$\neg (\exists x : P(x)) \iff \forall x : \neg P(x)$$

Esempio concettuale:
- Proposizione: "Ogni studente della classe indossa una maglietta rossa" $\to \forall x : P(x)$.
- Negazione corretta: "Esiste almeno uno studente che non indossa una maglietta rossa" $\to \exists x : \neg P(x)$. Non significa che tutti gli studenti non indossano magliette rosse!

### L'Ordine dei Quantificatori nei Predicati a Più Variabili
Nei predicati a più variabili l'ordine sequenziale dei quantificatori è determinante per il significato:
- $(\forall x)(\exists y) P(x, y)$: per ogni lavoratore $x$ esiste un compito $y$ che $x$ è in grado di svolgere (ciascuno ha almeno una mansione).
- $(\exists x)(\forall y) P(x, y)$: esiste un lavoratore $x$ in grado di svolgere qualsiasi mansione $y$ (esiste un individuo universale).
- $(\forall y)(\exists x) P(x, y)$: per ogni lavoro $y$ esiste qualcuno in grado di eseguirlo (nessun lavoro resta scoperto).
- $(\exists y)(\forall x) P(x, y)$: esiste un compito $y$ che chiunque sa svolgere.

Applicando la negazione iterata:
$$\neg \left[ (\forall y)(\exists x) P(x, y) \right] \iff (\exists y)(\forall x) \neg P(x, y)$$
Ossia: "Esiste un lavoro che nessun impiegato è in grado di eseguire".

## Applicazione: La Dimostrazione per Contronominale
La quantificazione della legge contronominale afferma:
$$(\forall x)(P(x) \implies Q(x)) \iff (\forall x)(\neg Q(x) \implies \neg P(x))$$

### Teorema Esemplare
**Teorema:** Sia $x \in \mathbb{N}$ un intero positivo. Se $x^2$ è pari, allora $x$ è pari.

**Formulazione Predicativa:**
Posti $P(x) = \text{"}x^2 \text{ è pari"}$ e $Q(x) = \text{"}x \text{ è pari"}$, l'enunciato è:
$$(\forall x)(P(x) \implies Q(x))$$

**Dimostrazione tramite Contronominale:**
La contronominale equivalente è:
$$(\forall x)(\neg Q(x) \implies \neg P(x))$$
Ossia: *Se $x$ è dispari, allora $x^2$ è dispari.*

1. Assumiamo che $x$ sia dispari. Per definizione, esiste $n \in \mathbb{N} \cup \{0\}$ tale che:
   $$x = 2n + 1$$
2. Calcoliamo il quadrato di $x$ mediante sviluppo algebrico diretto:
   $$x^2 = (2n + 1)^2 = 4n^2 + 4n + 1 = 2(2n^2 + 2n) + 1$$
3. Ponendo $k = 2n^2 + 2n \in \mathbb{N}$, otteniamo:
   $$x^2 = 2k + 1$$
   che è esattamente la forma analitica di un numero dispari.
4. Avendo provato che $\neg Q(x) \implies \neg P(x)$ per ogni $x$, per l'equivalenza contronominale il teorema originale $P(x) \implies Q(x)$ è rigorosamente dimostrato.

---

## Integrazione Analisi 1 & Real Analysis: Quantificatori, Negazioni e Dimostrazioni nel Calcolo

Nel percorso di **Analisi Matematica 1** e nella trattazione rigorosa di [[Lecture 01 - Sets, Set Operations and Mathematical Induction]], la padronanza della logica formale non è un mero esercizio teorico, ma il discriminante decisivo tra il superamento dell'esame e il fallimento sulle definizioni e dimostrazioni orali.

### 1. La Trappola dei Quantificatori: Scambio $\forall \exists$ vs $\exists \forall$ (Continuità Puntuale vs Continuità Uniforme)
Uno degli errori concettuali più sanzionati nelle prove d'esame riguarda l'inversione dell'ordine dei quantificatori. Consideriamo la definizione di funzione continua rispetto a quella di funzione uniformemente continua (trattata in dettaglio in [[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]] e [[Lecture 17 - Uniform Continuity and Definition of the Derivative]]):

- **Continuità Puntuale su un intervallo $I$:**
  $$\forall x_0 \in I, \; \forall \varepsilon > 0, \; \exists \delta > 0 : \forall x \in I, \; |x - x_0| < \delta \implies |f(x) - f(x_0)| < \varepsilon$$
  In questa formulazione, il raggio $\delta$ dipende **sia da $\varepsilon$ sia dallo specifico punto $x_0$**: $\delta = \delta(x_0, \varepsilon)$.
- **Continuità Uniforme su $I$:**
  Scambiando l'ordine e portando la quantificazione su $x_0$ in fondo:
  $$\forall \varepsilon > 0, \; \exists \delta > 0 : \forall x, x_0 \in I, \; |x - x_0| < \delta \implies |f(x) - f(x_0)| < \varepsilon$$
  Ora un **singolo $\delta = \delta(\varepsilon)$** deve funzionare simultaneamente per qualsiasi coppia di punti nel dominio.

> [!WARNING] Controesempio Tipico d'Esame
> La funzione $f(x) = \frac{1}{x}$ sull'intervallo aperto $]0, 1[$ è continua puntualmente in ogni punto, ma **non è uniformemente continua**. Quando $x_0 \to 0^+$, per mantenere $|f(x) - f(x_0)| < \varepsilon$ il raggio $\delta$ necessario collassa a zero ($\delta \approx \varepsilon x_0^2$), rendendo impossibile scegliere un $\delta > 0$ valido universalmente per tutto l'intervallo.

### 2. Negazione Logica delle Definizioni Topologiche Fondamentali
Negare formalmente una definizione quantificata è la tecnica standard richiesta nei quesiti d'esame per dimostrare che una successione non converge, che una funzione è discontinua o che una condizione di Cauchy fallisce:

1. **Non-convergenza di una successione ad un limite $L$ (da [[Lecture 07 - Convergent Sequences of Real Numbers]]):**
   - Definizione: $\forall \varepsilon > 0, \; \exists N \in \mathbb{N} : \forall n \ge N \implies |a_n - L| < \varepsilon$
   - Negazione formale:
     $$\exists \varepsilon_0 > 0 : \forall N \in \mathbb{N}, \; \exists n \ge N : |a_n - L| \ge \varepsilon_0$$
   Questa negazione è lo strumento operativo con cui, in [[Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem]], si estraggono sottosuccessioni che violano la convergenza.

2. **Negazione della Condizione di Cauchy (da [[Lecture 10 - Completeness of Real Numbers and Infinite Series]]):**
   - Condizione di Cauchy: $\forall \varepsilon > 0, \; \exists N \in \mathbb{N} : \forall n, m \ge N \implies |a_n - a_m| < \varepsilon$
   - Negazione:
     $$\exists \varepsilon_0 > 0 : \forall N \in \mathbb{N}, \; \exists n, m \ge N : |a_n - a_m| \ge \varepsilon_0$$
   Applicando questa negazione con $\varepsilon_0 = 1/2$ alla successione delle somme parziali della serie armonica $S_n = \sum_{k=1}^n \frac{1}{k}$ (scegliendo $m = 2n$), si dimostra che essa non è di Cauchy e quindi diverge.

3. **Discontinuità di $f$ in $x_0$ (da [[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]):**
   $$\exists \varepsilon_0 > 0 : \forall \delta > 0, \; \exists x \in \text{dom}(f) : |x - x_0| < \delta \land |f(x) - f(x_0)| \ge \varepsilon_0$$

### 3. La Dimostrazione per Contronominale nel Test di Divergenza delle Serie
In Analisi 1, uno dei teoremi più utilizzati nella pratica degli esercizi è la condizione necessaria di convergenza per le serie numeriche (formalizzata in [[Lecture 10 - Completeness of Real Numbers and Infinite Series]]):
$$\text{Teorema Diretto: } \sum_{n=1}^{+\infty} a_n \text{ converge} \implies \lim_{n \to +\infty} a_n = 0$$
Applicando la legge della contronominale $(P \implies Q) \iff (\neg Q \implies \neg P)$:
$$\text{Criterio di Divergenza (Contronominale): } \lim_{n \to +\infty} a_n \neq 0 \text{ (oppure non esiste)} \implies \sum_{n=1}^{+\infty} a_n \text{ non converge}$$
Poiché verificare se il limite è diverso da zero è spesso immediato, la forma contronominale costituisce il primissimo test da applicare in sede d'esame prima di intraprendere criteri di convergenza complessi.

