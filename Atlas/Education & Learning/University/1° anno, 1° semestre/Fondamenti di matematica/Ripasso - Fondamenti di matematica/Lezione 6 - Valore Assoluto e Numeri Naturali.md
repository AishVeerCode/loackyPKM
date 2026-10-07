---
status: permanent
type: lecture
area: education
related: ["[[Lezione 5 - i Numeri Reali e Assioma di Completezza]]", "[[Lezione 7 - Insiemi Numerici N Z e Q]]", "[[Lecture 01 - Sets, Set Operations and Mathematical Induction]]", "[[Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value]]", "[[Lecture 07 - Convergent Sequences of Real Numbers]]", "[[Lecture 11 - Absolute Convergence and the Comparison Test]]"]
aliases: ["Lezione 6", "Fondamenti di Matematica Lezione 6"]
source: Lezione 6.pdf
title: "Lezione 6 - Valore Assoluto e Numeri Naturali"
date: '2026-10-07'
updated: 2026-10-07T19:30
tags: [education/university, education/matematica, education/lecture]
summary: "Struttura reticolare di R, valore assoluto e disuguaglianze triangolari, costruzione induttiva dei numeri naturali, principio di induzione e assiomi di Peano."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 6 - Valore Assoluto e Numeri Naturali]]

# Lezione 6 - Valore Assoluto e Numeri Naturali

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'insieme dei numeri naturali $\mathbb{N}$</b></font></mark> viene formalizzato rigorosamente come il più piccolo sottoinsieme induttivo contenuto nel campo ordinato dei numeri reali $\mathbb{R}$, derivandone il Principio di Induzione e gli storici assiomi di Peano. La lezione stabilisce preliminarmente la struttura di reticolo di $(\mathbb{R}, \le)$ attraverso le nozioni di valore assoluto, parte positiva e parte negativa, dimostrando la disuguaglianza triangolare e la sua variante inversa, per poi analizzare le proprietà aritmetiche e la fondamentale proprietà di discretezza che caratterizza l'ordine naturale rispetto alla densità reale introdotta in [[Lezione 5 - i Numeri Reali e Assioma di Completezza]].

## Struttura Reticolare di $\mathbb{R}$ e Valore Assoluto

L'insieme ordinato $(\mathbb{R}, \le)$ possiede una struttura di <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>reticolo</b></font></mark>: ogni coppia finita di elementi $x, y \in \mathbb{R}$ ammette estremo superiore ed estremo inferiore. Trattandosi di un ordinamento totale, essi coincidono rispettivamente con il massimo e con il minimo della coppia:
$$\sup\{x, y\} = \max\{x, y\}, \qquad \inf\{x, y\} = \min\{x, y\}$$

### Definizioni Fondamentali
Dato $x \in \mathbb{R}$, si definiscono:
- **Valore assoluto (o modulo):**
  $$|x| := \max\{x, -x\}$$
- **Parte positiva:**
  $$x^+ := \max\{x, 0\}$$
- **Parte negativa:**
  $$x^- := \max\{-x, 0\}$$

Tutte e tre le quantità risultano costantemente **non negative** ($\ge 0$). Il loro comportamento in base al segno di $x$ è riassunto nella seguente tabella:

| Condizione | $|x|$ | $x^+$ | $x^-$ |
| :--- | :--- | :--- | :--- |
| $x \ge 0$ | $x$ | $x$ | $0$ |
| $x \le 0$ | $-x$ | $0$ | $-x$ |

Da tale scomposizione derivano le due identità strutturali:
$$x = x^+ - x^-, \qquad |x| = x^+ + x^-$$

*Dimostrazione:* Se $x \ge 0$, allora $-x \le 0 \le x$, per cui $x^+ = x$, $x^- = 0$ e $|x| = x$; segue $x^+ - x^- = x - 0 = x$ e $x^+ + x^- = x + 0 = |x|$. Se $x \le 0$, allora $x \le 0 \le -x$, quindi $x^+ = 0$, $x^- = -x$ e $|x| = -x$; ne discende $x^+ - x^- = 0 - (-x) = x$ e $x^+ + x^- = 0 + (-x) = -x = |x|$.

### Proprietà del Valore Assoluto
Per ogni $x, y \in \mathbb{R}$ e $a \ge 0$ valgono le seguenti proprietà:

1. **Annullamento e parità:**
   $$|x| = 0 \iff x = 0, \qquad |-x| = |x|$$
   *Dimostrazione:* Se $|x| = 0$, poiché $|x| = \max\{x, -x\}$, deve aversi $x \le 0$ e $-x \le 0 \implies x \ge 0$, da cui $x = 0$. Il viceversa è banale. Inoltre $\max\{-x, -(-x)\} = \max\{-x, x\} = |x|$.
2. **Limitazione bilaterale:**
   $$-|x| \le x \le |x|$$
   *Dimostrazione:* Discende immediatamente da $x \le \max\{x, -x\} = |x|$ e $-x \le |x| \iff x \ge -|x|$.
3. **Caratterizzazione delle disequazioni modulari:**
   $$|x| \le a \iff -a \le x \le a$$
   Inoltre, per $a > 0$:
   $$|x| < a \iff -a < x < a$$
   *Dimostrazione:* Il massimo di due quantità $\{x, -x\}$ è $\le a$ se e solo se entrambe sono $\le a$, ovvero $x \le a \land -x \le a \iff x \le a \land x \ge -a$.
4. **Omogeneità e moltiplicatività:**
   $$|xy| = |x||y|$$
   *Dimostrazione:* Se uno dei fattori è nullo, entrambi i membri valgono 0. Se $x$ e $y$ sono concordi, $xy > 0$ e $|xy| = xy = |x||y|$. Se sono discordi, $xy < 0$ e $|xy| = -(xy) = (-x)y = |x||y|$.
5. **Disuguaglianza triangolare:**
   $$|x + y| \le |x| + |y|$$
   *Dimostrazione:* Dalla proprietà (2) abbiamo $x \le |x|$ e $y \le |y|$. Sommando membro a membro:
   $$x + y \le |x| + |y|$$
   Analogamente, $-x \le |x|$ e $-y \le |y|$, per cui:
   $$-(x + y) = -x - y \le |x| + |y|$$
   Essendo $|x + y| = \max\{x + y, -(x + y)\}$, ed essendo entrambi i termini minori o uguali a $|x| + |y|$, ne consegue che $|x + y| \le |x| + |y|$.
6. **Disuguaglianza triangolare inversa:**
   $$\big| |x| - |y| \big| \le |x - y|$$
   *Dimostrazione:* Scriviamo $x = (x - y) + y$. Applicando la disuguaglianza triangolare:
   $$|x| = |(x - y) + y| \le |x - y| + |y| \implies |x| - |y| \le |x - y|$$
   Scambiando i ruoli di $x$ e $y$:
   $$|y| - |x| \le |y - x| = |-(x - y)| = |x - y| \implies -(|x| - |y|) \le |x - y|$$
   Prendendo il massimo tra $(|x| - |y|)$ e $-(|x| - |y|)$, si ottiene la tesi $\big| |x| - |y| \big| \le |x - y|$.

## I Numeri Naturali come Minimo Insieme Induttivo

Invece di postulare i numeri naturali come entità a sé stante, la moderna trattazione assiomatica li individua come un particolare sottoinsieme di $\mathbb{R}$.

### Insiemi Induttivi
Un sottoinsieme $A \subseteq \mathbb{R}$ si definisce <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>induttivo</b></font></mark> se soddisfa simultaneamente due condizioni:
1. $0 \in A$
2. $\forall x \in A \implies x + 1 \in A$

Esempi di insiemi induttivi in $\mathbb{R}$ sono l'intera retta reale $\mathbb{R}$ e la semiretta chiusa $[0, +\infty)$. La famiglia di tutti i sottoinsiemi induttivi di $\mathbb{R}$, denotata con:
$$\mathcal{F} := \{A \subseteq \mathbb{R} \mid A \text{ è induttivo}\}$$
è pertanto non vuota.

### Definizione di $\mathbb{N}$
L'insieme dei numeri naturali $\mathbb{N}$ è definito come l'intersezione di tutti i sottoinsiemi induttivi di $\mathbb{R}$:
$$\mathbb{N} := \bigcap_{A \in \mathcal{F}} A$$

**Teorema:** $\mathbb{N}$ è il più piccolo sottoinsieme induttivo di $\mathbb{R}$.
*Dimostrazione:* 
- Per definizione di intersezione, $\mathbb{N} \subseteq A$ per ogni $A \in \mathcal{F}$.
- Rimane da verificare che $\mathbb{N}$ sia a sua volta induttivo:
  1. Poiché ogni $A \in \mathcal{F}$ contiene $0$, l'intersezione contiene $0$: $0 \in \mathbb{N}$.
  2. Sia $x \in \mathbb{N}$. Allora $x \in A$ per ogni $A \in \mathcal{F}$. Essendo ciascun $A$ induttivo, ne segue che $x + 1 \in A$ per ogni $A \in \mathcal{F}$. Di conseguenza $x + 1 \in \bigcap_{A \in \mathcal{F}} A = \mathbb{N}$.
Dunque $\mathbb{N}$ è induttivo ed è minimale rispetto all'inclusione insiemistica.

Notazioni standard:
- Elementi di $\mathbb{N}$: numeri naturali.
- Insieme dei naturali non nulli: $\mathbb{N}^* := \mathbb{N} \setminus \{0\}$.
- Funzione <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>successore</b></font></mark>:
  $$s: \mathbb{N} \to \mathbb{N}, \qquad s(n) := n + 1$$
  In particolare: $1 := s(0) = 0 + 1$, $2 := s(1) = 1 + 1$, $3 := s(2) = 2 + 1$, e così via.

## Il Principio di Induzione

Dalla minimalità induttiva di $\mathbb{N}$ discende immediatamente il cardine logico delle dimostrazioni matematiche.

### Forma Insiemistica del Principio di Induzione
**Teorema:** Sia $A \subseteq \mathbb{N}$ un sottoinsieme. Se:
1. $0 \in A$ (base)
2. $\forall n \in \mathbb{N}: n \in A \implies n + 1 \in A$ (passo induttivo)

allora $A = \mathbb{N}$.

*Dimostrazione:* Per ipotesi, $A$ è un sottoinsieme induttivo di $\mathbb{R}$. Poiché $\mathbb{N}$ è l'intersezione di tutti gli insiemi induttivi, si ha $\mathbb{N} \subseteq A$. D'altra parte, per ipotesi $A \subseteq \mathbb{N}$. Pertanto $A = \mathbb{N}$.

### Forma per Predicati
**Corollario:** Sia $P(n)$ una proprietà o predicato aperto definito per $n \in \mathbb{N}$. Se:
1. $P(0)$ è vera (**base dell'induzione**)
2. $\forall n \in \mathbb{N}: P(n) \implies P(n + 1)$ (**passo induttivo**)

allora $P(n)$ è vera per ogni $n \in \mathbb{N}$.

*Dimostrazione:* Si applica il principio di induzione insiemistico all'insieme di verità $A := \{n \in \mathbb{N} \mid P(n) \text{ è vera}\}$.

> [!NOTE] Distinzione Logica tra Base e Passo
> Nel passo induttivo non si assume affatto che la proprietà valga per tutti i numeri naturali: si fissa un arbitrario elemento $n$ e si dimostra la validità dell'implicazione $P(n) \implies P(n+1)$. La base e il passo svolgono ruoli logici distinti e mutualmente indispensabili: una base senza passo non si estende, e un passo senza base descrive una catena non ancorata.

## Assiomi di Peano ed Esistenza del Predecessore

Dalla costruzione induttiva all'interno di $\mathbb{R}$ si deducono come teoremi le proprietà fondamentali storicamente postulate da Giuseppe Peano.

### Proprietà Strutturali del Successore
1. **Positività di $\mathbb{N}$:** $\mathbb{N} \subset [0, +\infty)$.
   *Dimostrazione:* L'intervallo $[0, +\infty)$ è un insieme induttivo ($0 \ge 0$, e se $x \ge 0$ allora $x + 1 \ge 1 \ge 0$). Essendo $\mathbb{N}$ l'intersezione di tutti gli induttivi, $\mathbb{N} \subseteq [0, +\infty)$.
2. **Partizione:** $\mathbb{N} = \{0\} \cup s(\mathbb{N})$.
   *Dimostrazione:* Poniamo $A := \{0\} \cup s(\mathbb{N}) \subseteq \mathbb{N}$. Chiaramente $0 \in A$. Inoltre se $n \in A \subseteq \mathbb{N}$, allora $s(n) = n + 1 \in s(\mathbb{N}) \subset A$. Per il principio di induzione, $A = \mathbb{N}$.
3. **Iniettività del successore:** $s$ è una funzione iniettiva.
   *Dimostrazione:* Siano $n, m \in \mathbb{N}$. Se $s(n) = s(m)$, allora $n + 1 = m + 1$. Per la legge di cancellazione additiva in $\mathbb{R}$, ne discende $n = m$.
4. **Origine dello zero:** Lo zero non è successore di alcun naturale:
   $$\forall n \in \mathbb{N}: s(n) \neq 0$$
   *Dimostrazione:* Per ogni $n \in \mathbb{N}$, essendo $n \ge 0$, si ha $s(n) = n + 1 \ge 0 + 1 = 1 > 0$. Dunque $s(n) \neq 0$.

### Esistenza e Unicità del Predecessore
Dalla partizione $\mathbb{N} = \{0\} \cup s(\mathbb{N})$ discende che ogni naturale non nullo ammette un unico predecessore naturale:
$$\forall n \in \mathbb{N} \setminus \{0\} \implies \exists! k \in \mathbb{N} \text{ tale che } n = k + 1 \iff n - 1 \in \mathbb{N}$$

> [!IMPORTANT] Sistema di Peano Dedotto
> La terna $(\mathbb{N}, s, 0)$ soddisfa tutti i cinque assiomi di Peano:
> 1. $0 \in \mathbb{N}$
> 2. $s: \mathbb{N} \to \mathbb{N}$ è un'applicazione ben definita
> 3. $s$ è iniettiva
> 4. $0 \notin s(\mathbb{N})$
> 5. Se un sottoinsieme contiene $0$ ed è chiuso rispetto a $s$, coincide con $\mathbb{N}$.
> In questo approccio, tali assiomi non sono postulati arbitrari ma teoremi ricavati dalla completezza e compatibilità del campo reale.

## Aritmetica e Discretezza dell'Ordine

Sull'insieme dei naturali, le operazioni di addizione e moltiplicazione ereditate da $\mathbb{R}$ risultano stabili, e l'ordinamento manifesta la sua proprietà peculiare di <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>discretezza</b></font></mark>.

### Proprietà Aritmetiche
Per ogni $m, n \in \mathbb{N}$:
1. **Dicotomia elementare:** $n = 0 \lor n \ge 1$.
   *Dimostrazione:* Se $n \neq 0$, allora $n = k + 1$ con $k \ge 0$, da cui $n \ge 1$.
2. **Non fissità del successore:** $n + 1 \neq n$ (se così fosse, per cancellazione si avrebbe $1 = 0$, violando l'assioma M2 di campo).
3. **Chiusura additiva:** $m + n \in \mathbb{N}$.
   *Dimostrazione per induzione su $n$ (fissato $m \in \mathbb{N}$):*
   - Base ($n = 0$): $m + 0 = m \in \mathbb{N}$ (vero).
   - Passo induttivo: se $m + n \in \mathbb{N}$, allora $m + (n + 1) = (m + n) + 1 = s(m + n) \in \mathbb{N}$ per induttività di $\mathbb{N}$. Poiché vale per ogni $n$ e $m$ era arbitrario, la somma è un'operazione interna.
4. **Chiusura moltiplicativa:** $m \cdot n \in \mathbb{N}$.
   *Dimostrazione per induzione su $n$ (fissato $m \in \mathbb{N}$):*
   - Base ($n = 0$): $m \cdot 0 = 0 \in \mathbb{N}$ (vero).
   - Passo induttivo: se $mn \in \mathbb{N}$, allora $m(n + 1) = mn + m \in \mathbb{N}$ grazie alla chiusura della somma appena provata.

### Caratterizzazione dell'Ordine Naturale
5. **Relazione tra ordine e differenza:**
   $$m \le n \iff n - m \in \mathbb{N} \iff \exists k \in \mathbb{N} : n = m + k$$
   *Dimostrazione:*
   - $(\impliedby)$ Se $n - m \in \mathbb{N}$, poiché $\mathbb{N} \subset [0, +\infty)$, si ha $n - m \ge 0 \implies m \le n$.
   - $(\implies)$ Fissato $n \in \mathbb{N}$, procediamo per induzione su $m$ per la proprietà $P(m): m \le n \implies n - m \in \mathbb{N}$.
     - Per $m = 0$: $n - 0 = n \in \mathbb{N}$, quindi $P(0)$ è vera.
     - Assumiamo $P(m)$ vera e consideriamo $P(m + 1)$. Se $m \ge n$, la premessa $m + 1 \le n$ è falsa e l'implicazione è vacuamente vera. Se $m < n$, per ipotesi induttiva $n - m \in \mathbb{N}$. Poiché $n - m \neq 0$, esso ammette predecessore in $\mathbb{N}$, quindi $n - (m + 1) = (n - m) - 1 \in \mathbb{N}$. L'implicazione è provata per ogni $m$.

### Teorema di Discretezza
6. **Assenza di elementi intermedi:** Non esiste alcun numero naturale strettamente compreso tra $m$ e $m + 1$:
   $$\nexists n \in \mathbb{N} \text{ tale che } m < n < m + 1$$
   *Dimostrazione:* Se esistesse un tale $n \in \mathbb{N}$, per la proprietà (5) si avrebbe $n - m \in \mathbb{N}$. Ma sottraendo $m$ dalla catena di disuguaglianze risulterebbe:
   $$0 < n - m < 1$$
   Ciò contraddirrebbe la dicotomia (1), secondo cui ogni naturale non nullo è $\ge 1$.
7. **Salto unitario:**
   $$m < n \implies m + 1 \le n$$
   *Dimostrazione:* Se per assurdo fosse $m + 1 > n$, allora $m < n < m + 1$, il che produrrebbe un naturale strettamente compreso tra $m$ e $m + 1$, violando la proprietà (6).

> [!TIP] Rilevanza Teorica
> La proprietà di discretezza costituisce la linea di demarcazione essenziale tra l'aritmetica di $\mathbb{N}$ e l'analisi dei campi densi come $\mathbb{Q}$ e $\mathbb{R}$. Essa consente di definire il concetto di passo unitario, sta alla base degli algoritmi di divisione con resto trattati in [[Lezione 7 - Insiemi Numerici N Z e Q]] e rende possibile il conteggio combinatorio.

---

## Integrazione Analisi 1 & Real Analysis: Buon Ordinamento, Disuguaglianze Metriche e Limitatezza

In **Analisi Matematica 1** e nelle lezioni [[Lecture 01 - Sets, Set Operations and Mathematical Induction]], [[Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value]], [[Lecture 07 - Convergent Sequences of Real Numbers]] e [[Lecture 11 - Absolute Convergence and the Comparison Test]], il valore assoluto costituisce la metrica naturale di $\mathbb{R}$ e l'induzione matematica fornisce il metodo deduttivo primario per le proprietà di successioni e serie.

### 1. Il Principio del Buon Ordinamento e l'Equivalenza con l'Induzione (da [[Lecture 01 - Sets, Set Operations and Mathematical Induction]])
Mentre l'induzione sembra un principio puramente computazionale, la sua essenza topologica risiede nell'ordine:

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Principio del Buon Ordinamento (Well-Ordering Principle):</b></font></mark>
Ogni sottoinsieme non vuoto $S \subseteq \mathbb{N}$ ammette un elemento minimo:
$$\forall S \subseteq \mathbb{N}, \; S \neq \emptyset \implies \exists m \in S \text{ tale che } \forall x \in S : m \le x$$

All'esame orale di Analisi 1 viene spesso richiesta la dimostrazione dell'equivalenza logica tra i due principi:
- **(Induzione $\implies$ Buon Ordinamento):** Supponiamo che $S \subseteq \mathbb{N}$ non abbia minimo. Definiamo $A = \{n \in \mathbb{N} \mid \forall s \in S, n < s\}$. Chiaramente $0 \in A$ (altrimenti $0 \in S$ ne sarebbe il minimo). Se $n \in A$, allora $n < s$ per ogni $s \in S$; per la discretezza $n + 1 \le s$, e se $n + 1 \in S$ sarebbe il minimo di $S$, assurdo. Dunque $n + 1 \in A$. Per il principio di induzione $A = \mathbb{N}$, da cui $S = \emptyset$.
- **(Buon Ordinamento $\implies$ Induzione):** Sia $P(n)$ un predicato con $P(0)$ vera e $P(n) \implies P(n+1)$. Supponiamo per assurdo che esista qualche naturale per cui $P(n)$ è falsa. Allora l'insieme $F = \{n \in \mathbb{N} \mid \neg P(n)\} \neq \emptyset$. Per il buon ordinamento, esiste $m = \min F$. Poiché $P(0)$ è vera, $m > 0$, quindi esiste il predecessore $m - 1 \in \mathbb{N}$. Per minimalità di $m$, $m - 1 \notin F$, quindi $P(m - 1)$ è vera. Ma per il passo induttivo $P(m - 1) \implies P(m)$ deve essere vera, contraddicendo $m \in F$!

> [!NOTE] Perché $\mathbb{Z}, \mathbb{Q}, \mathbb{R}$ non sono ben ordinati
> Né $\mathbb{Z}$, né $\mathbb{Q}$, né $\mathbb{R}$ soddisfano tale principio: il sottoinsieme $\mathbb{Z}^-$, l'intervallo aperto $]0, 1[$ o l'insieme $\{1/n \mid n \ge 1\}$ non ammettono minimo pur essendo inferiormente limitati.

### 2. La Disuguaglianza Triangolare Inversa nel Calcolo dei Limiti
La disuguaglianza triangolare inversa $\big| |x| - |y| \big| \le |x - y|$ è uno dei cardini di verifica nelle dimostrazioni d'esame:

1. **Continuità e Lipschitzianità del Valore Assoluto:**
   Posto $f(x) = |x|$, per ogni $x, y \in \mathbb{R}$ si ha $|f(x) - f(y)| = \big||x| - |y|\big| \le 1 \cdot |x - y|$. La funzione valore assoluto è $1$-lipschitziana su tutto $\mathbb{R}$, dunque globalmente e uniformemente continua.
2. **Conservazione della Convergenza in Modulo (da [[Lecture 07 - Convergent Sequences of Real Numbers]]):**
   Se $x_n \to x$, allora $|x_n| \to |x|$. Infatti:
   $$\big| |x_n| - |x| \big| \le |x_n - x| < \varepsilon \quad \forall n \ge N$$
3. **Dimostrazione che Ogni Successione Convergente è Limitata (da [[Lecture 07 - Convergent Sequences of Real Numbers]]):**
   Se $x_n \to x$, scegliendo $\varepsilon = 1$ nella definizione di limite, per ogni $n \ge N$:
   $$|x_n| - |x| \le |x_n - x| < 1 \implies |x_n| < |x| + 1$$
   I termini della successione sono tutti controllati da $M = \max\{|x_1|, \dots, |x_{N-1}|, |x| + 1\}$.
4. **Minorazione del Denominatore per Quozienti (da [[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]]):**
   Se $y_n \to y \neq 0$, scegliendo $\varepsilon = |y|/2 > 0$, per $n \ge N$:
   $$|y_n| = |y - (y - y_n)| \ge |y| - |y - y_n| > |y| - \frac{|y|}{2} = \frac{|y|}{2} > 0$$
   Ciò consente di stimare $\left|\frac{1}{y_n} - \frac{1}{y}\right| = \frac{|y_n - y|}{|y_n||y|} \le \frac{2}{|y|^2}|y_n - y| \to 0$.

### 3. Disuguaglianza Triangolare Generalizzata e Convergenza Assoluta (da [[Lecture 11 - Absolute Convergence and the Comparison Test]])
Applicando l'induzione matematica alla disuguaglianza triangolare ordinaria, si ottiene per qualsiasi $n \in \mathbb{N}$:
$$\left|\sum_{k=1}^n x_k\right| \le \sum_{k=1}^n |x_k|$$
In Analisi 1, passando al limite per $n \to \infty$ mediante la completezza di $\mathbb{R}$, questo risultato dimostra il **Teorema Fondamentale della Convergenza Assoluta**:
$$\sum_{n=1}^\infty |a_n| < \infty \implies \sum_{n=1}^\infty a_n \text{ converge, e } \left|\sum_{n=1}^\infty a_n\right| \le \sum_{n=1}^\infty |a_n|$$
garantendo che ogni serie assolutamente convergente è anche semplicemente convergente.

