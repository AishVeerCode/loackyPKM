---
status: permanent
type: lecture
area: education
related: ["[[Lezione 1 - Logica delle Proposizioni e dei Predicati]]", "[[Lezione 3 - Relazioni e Funzioni I]]"]
aliases: ["Lezione 2", "Fondamenti di Matematica Lezione 2"]
source: Lezione 2.pdf
title: "Lezione 2 - Teoria Assiomatica degli Insiemi"
date: '2026-10-01'
updated: 2026-10-01T15:38
tags: [education/university, education/matematica, education/lecture]
summary: "Fondamenti assiomatici di Zermelo-Fraenkel con assiomi di estensionalità, specificazione, unione, parti, costruzione dei numeri naturali e assioma della scelta."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 2 - Teoria Assiomatica degli Insiemi]]

# Lezione 2 - Teoria Assiomatica degli Insiemi

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La teoria assiomatica degli insiemi</b></font></mark> rappresenta l'ossatura formale su cui poggia l'intera matematica moderna. Sviluppata per superare le contraddizioni della teoria intuitiva di Cantor e Frege emerse con i paradossi di Russell e Zermelo, la teoria di Zermelo-Fraenkel (ZF) stabilisce un rigoroso sistema di assiomi che governa l'esistenza, la costruzione e le operazioni tra insiemi, consentendo di generare dal puro insieme vuoto l'intero universo dei numeri naturali.

## Genesi Storica e Superamento dei Paradossi
La teoria degli insiemi venne avviata intorno al 1870 da Georg Cantor e Richard Dedekind, per poi essere formalizzata sul piano logico da Gottlob Frege nei primi anni del Novecento. Tuttavia, l'assunzione intuitiva secondo cui *qualsiasi predicato definisse un insieme* condusse a insanabili contraddizioni logiche.

Il più celebre è il **paradosso di Russell** (formulato indipendentemente anche da Zermelo):
Sia $R = \{x \mid x \notin x\}$ la presunta collezione di tutti gli insiemi che non appartengono a se stessi. Se ci chiediamo se $R \in R$:
- Se $R \in R$, per definizione di $R$ deve valere $R \notin R$ (contraddizione).
- Se $R \notin R$, per la stessa condizione deve risultare $R \in R$ (contraddizione).

Per sanare tale frattura logica, Ernest Zermelo (1908) e successivamente Abraham Fraenkel e Thoralf Skolem (1922) definirono il sistema assiomatico formale **ZF (Zermelo-Fraenkel)**, in cui il concetto di insieme non viene descritto ingenuamente, ma regolamentato per via assiomatica, in perfetta analogia con i punti e le rette nella geometria euclidea.

## Concetti Primitivi e Notazione
Nell'approccio assiomatico si assumono come <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>concetti primitivi</b></font></mark> (non ulteriormente riducibili a nozioni più elementari):
1. Gli **insiemi** (oggetti denotati con variabili $a, b, x, y, A, B, X, Y$).
2. La relazione binaria di **appartenenza** ($\in$).
3. La relazione di **uguaglianza** ($=$).

Le espressioni $x \in A$ e $x = y$ costituiscono **predicati atomici**, la cui verità o falsità si determina una volta interpretate le variabili. A partire da essi, mediante gli operatori logici e i quantificatori introdotti in [[Lezione 1 - Logica delle Proposizioni e dei Predicati]], si costruiscono tutti i predicati complessi.

L'uguaglianza soddisfa per assioma le proprietà di una relazione di equivalenza:
- **Riflessiva:** $(\forall x)(x = x)$
- **Simmetrica:** $(\forall x, y)(x = y \implies y = x)$
- **Transitiva:** $(\forall x, y, z)(x = y \land y = z \implies x = z)$

Notazioni contratte comunemente utilizzate:
- Negazioni: $x \notin A \iff \neg(x \in A)$ e $x \neq y \iff \neg(x = y)$.
- Quantificazione ristretta: $(\forall x \in A)(P) \iff (\forall x)(x \in A \implies P)$ e $(\exists x \in A)(P) \iff (\exists x)(x \in A \land P)$.

## Gli Assiomi di Zermelo-Fraenkel

### Assioma 1: Assioma di Estensionalità
Se $A$ e $B$ sono due insiemi:
$$A = B \iff (\forall x)(x \in A \iff x \in B)$$
Due insiemi coincidono se e solo se contengono esattamente gli stessi elementi. Gli insiemi sono dunque identificati unicamente dalla loro *estensione* (dagli elementi che racchiudono) e non dal modo o dall'ordine in cui vengono presentati.

### Assioma 2: Assioma dell'Insieme Vuoto
Esiste, ed è unico in virtù dell'estensionalità, un insieme privo di elementi, detto <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>insieme vuoto</b></font></mark> e denotato con $\emptyset$:
$$(\forall x)(x \notin \emptyset)$$

### Definizione di Sottoinsieme
Siano $A$ e $B$ due insiemi. Si scrive $B \subseteq A$ per indicare che:
$$(\forall x)(x \in B \implies x \in A)$$
In tal caso si dice che $B$ è un sottoinsieme (o parte) di $A$.
Se $B \subseteq A$ e $B \neq A$, si dice che $B$ è un **sottoinsieme proprio** di $A$ (denotato talvolta con $B \subset A$).
Per ogni insieme $A$, valgono banalmente le inclusioni: $\emptyset \subseteq A$ e $A \subseteq A$.

### Assioma 3: Assioma della Coppia Non Ordinata
Dati due insiemi $x$ e $y$, esiste un unico insieme, indicato con $\{x, y\}$, che possiede $x$ e $y$ come suoi unici elementi:
$$(\forall z)(z \in \{x, y\} \iff z = x \lor z = y)$$

Ponendo $y = x$, si definisce il <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>singoletto</b></font></mark> $\{x\} := \{x, x\}$, che contiene il solo elemento $x$:
$$(\forall z)(z \in \{x\} \iff z = x)$$

Partendo unicamente dall'insieme vuoto $\emptyset$, l'assioma della coppia consente di costruire infiniti oggetti distinti:
$$\emptyset, \quad \{\emptyset\}, \quad \{\emptyset, \{\emptyset\}\}, \quad \{\{\emptyset\}, \{\emptyset, \{\emptyset\}\}\}, \dots$$

**Metafora delle scatole:** Gli insiemi possono essere visualizzati intuitivamente come scatole che contengono altre scatole. L'insieme vuoto $\emptyset$ è la scatola vuota; $\{\emptyset\}$ è una scatola contenente una scatola vuota; $\{\emptyset, \{\emptyset\}\}$ è una scatola contenente due scatole: una vuota e una con dentro una scatola vuota.

### Assioma 4: Assioma di Specificazione (o di Separazione)
Sia $A$ un insieme e $P(x)$ un predicato in cui la variabile $x$ compare libera. Allora esiste un unico insieme, denotato con $\{x \in A \mid P(x)\}$, tale che:
$$(\forall a)(a \in \{x \in A \mid P(x)\} \iff a \in A \land P(a))$$

Questo assioma demolisce alla radice il paradosso di Russell: non è lecito isolare $\{x \mid P(x)\}$ dal nulla ontologico; si possono isolare elementi per mezzo di una proprietà caratteristica solo ed esclusivamente **all'interno di un insieme preesistente $A$**.

## Operazioni Fondamentali tra Insiemi
Grazie all'assioma di specificazione si definiscono le operazioni insiemistiche canoniche:

1. **Intersezione Binaria:**
   $$A \cap B := \{x \in A \mid x \in B\} \iff x \in A \cap B \iff x \in A \land x \in B$$
2. **Differenza tra Insiemi:**
   $$A \setminus B := \{x \in A \mid x \notin B\} \iff x \in A \setminus B \iff x \in A \land x \notin B$$
3. **Insieme Complementare:**
   Se $B \subseteq A$, la differenza $A \setminus B$ prende il nome di complementare di $B$ rispetto ad $A$, denotato con $\complement_A(B)$.
4. **Intersezione di una Famiglia di Insiemi:**
   Sia $\mathcal{F}$ una famiglia non vuota di insiemi. Fissato un arbitrario $B \in \mathcal{F}$, per l'assioma di specificazione:
   $$\bigcap \mathcal{F} = \bigcap_{A \in \mathcal{F}} A := \{x \in B \mid (\forall A \in \mathcal{F})(x \in A)\}$$
   Tale insieme non dipende dalla scelta iniziale di $B$ e racchiude gli elementi comuni a tutti gli insiemi della famiglia.

### Assioma 5: Assioma dell'Unione
Sia $\mathcal{F}$ un insieme i cui elementi sono insiemi (famiglia di insiemi). Esiste un insieme, denotato con $\bigcup \mathcal{F}$ (o $\bigcup_{A \in \mathcal{F}} A$), che racchiude tutti e soli gli elementi appartenenti ad almeno un insieme di $\mathcal{F}$:
$$(\forall x)\left(x \in \bigcup \mathcal{F} \iff (\exists A \in \mathcal{F})(x \in A)\right)$$

L'**unione binaria** tra due insiemi $A$ e $B$ si ottiene applicando l'unione alla coppia non ordinata $\{A, B\}$:
$$A \cup B := \bigcup \{A, B\} \iff x \in A \cup B \iff x \in A \lor x \in B$$

### Proprietà dell'Algebra degli Insiemi
Dati tre insiemi generici $A, B, C$:
- **Elemento neutro / assorbente:** $A \cup \emptyset = A$, $A \cap \emptyset = \emptyset$.
- **Idempotenza:** $A \cap A = A$, $A \cup A = A$.
- **Commutatività:** $A \cap B = B \cap A$, $A \cup B = B \cup A$.
- **Associatività:** $(A \cap B) \cap C = A \cap (B \cap C)$, $(A \cup B) \cup C = A \cup (B \cup C)$.
- **Distributività:**
  $$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$$
  $$A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$$
- **Leggi di De Morgan per insiemi:**
  $$A \setminus (B \cap C) = (A \setminus B) \cup (A \setminus C) \iff \complement_A(B \cap C) = \complement_A(B) \cup \complement_A(C)$$
  $$A \setminus (B \cup C) = (A \setminus B) \cap (A \setminus C) \iff \complement_A(B \cup C) = \complement_A(B) \cap \complement_A(C)$$

**Definizione di insiemi per elencazione finita:** Iterando la combinazione di coppie e unioni si generano insiemi finiti: $\{a, b, c\} := \{a, b\} \cup \{c\}$, $\{a, b, c, d\} := \{a, b, c\} \cup \{d\}$, e così via.

## Insieme Potenza (Insieme delle Parti)

### Assioma 6: Assioma dell'Insieme Potenza
Sia $A$ un insieme. Esiste un insieme, denotato con $\mathcal{P}(A)$ (o $2^A$), avente per elementi tutti e soli i sottoinsiemi di $A$:
$$(\forall B)(B \in \mathcal{P}(A) \iff B \subseteq A)$$

Proprietà immediate:
- Per ogni insieme $A$, si ha sempre $\emptyset \in \mathcal{P}(A)$ e $A \in \mathcal{P}(A)$. Dunque $\mathcal{P}(A)$ non è mai vuoto.
- Se $A = \{x, y\}$ con $x \neq y$, allora $\mathcal{P}(A) = \{\emptyset, \{x\}, \{y\}, \{x, y\}\}$.
- Iterazione sui singoletti:
  $$\mathcal{P}(\emptyset) = \{\emptyset\}$$
  $$\mathcal{P}(\mathcal{P}(\emptyset)) = \{\emptyset, \{\emptyset\}\}$$
  $$\mathcal{P}(\mathcal{P}(\mathcal{P}(\emptyset))) = \{\emptyset, \{\emptyset\}, \{\{\emptyset\}\}, \{\emptyset, \{\emptyset\}\}\}$$

## Costruzione Assiomatica dei Numeri Naturali (Von Neumann)

### Assioma 7: Assioma di Fondazione (o di Regolarità)
Per ogni insieme non vuoto $A$, esiste un elemento $x \in A$ tale che $x \cap A = \emptyset$.
Una conseguenza diretta è che <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>nessun insieme può appartenere a se stesso</b></font></mark>:
$$(\forall x)(x \notin x)$$
Se infatti esistesse un insieme tale che $x \in x$, considerando il singoletto $A = \{x\}$ si avrebbe $x \cap A = \{x\} \neq \emptyset$, violando l'assioma.

### Definizione di Successivo
Dato un insieme $x$, si definisce il suo **successivo** come:
$$x^+ := x \cup \{x\}$$
Dall'assioma di fondazione segue che $x \notin x$, pertanto $x \neq x^+$. Ne consegue che $x$ è un sottoinsieme proprio di $x^+$: $x \subset x^+$, e $x^+$ possiede esattamente un elemento in più rispetto ad $x$ (l'insieme $x$ stesso).

### Costruzione degli Ordinali di Von Neumann
John von Neumann propose di identificare ciascun numero naturale con l'insieme dei numeri naturali che lo precedono:
$$0 := \emptyset$$
$$1 := 0^+ = 0 \cup \{0\} = \{\emptyset\} = \{0\}$$
$$2 := 1^+ = 1 \cup \{1\} = \{0, 1\} = \{\emptyset, \{\emptyset\}\}$$
$$3 := 2^+ = 2 \cup \{2\} = \{0, 1, 2\} = \{\emptyset, \{\emptyset\}, \{\emptyset, \{\emptyset\}\}\}$$
$$4 := 3^+ = 3 \cup \{3\} = \{0, 1, 2, 3\}$$

In questo schema formale:
$$0 \in 1 \in 2 \in 3 \in 4 \in \dots$$
Ciascun numero naturale $n$ è un insieme finito avente esattamente $n$ elementi.

### Assioma 8: Assioma dell'Infinito
Gli assiomi precedenti permettono di costruire numeri naturali arbitrariamente grandi, ma non garantiscono l'esistenza di un insieme complessivo che li contenga tutti simultaneamente. L'**Assioma dell'Infinito** colma questa lacuna postulando l'esistenza di un insieme $W$ tale che:
$$\begin{cases} \emptyset \in W \\ (\forall x)(x \in W \implies x^+ \in W) \end{cases}$$

Un insieme che soddisfa queste condizioni è detto <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>insieme induttivo</b></font></mark>.

### Teorema dell'Esistenza di $\mathbb{N}$
**Teorema:** Esiste il più piccolo insieme induttivo, denotato con $\mathbb{N}$.

*Dimostrazione:*
Sia $W$ l'insieme induttivo garantito dall'Assioma dell'Infinito. Consideriamo la famiglia di tutti i sottoinsiemi induttivi di $W$:
$$\mathcal{F} = \{A \in \mathcal{P}(W) \mid A \text{ è induttivo}\}$$
Poiché $W \in \mathcal{F}$, tale famiglia è non vuota. Possiamo allora definire mediante l'assioma di specificazione l'intersezione di tutti i suoi membri:
$$\mathbb{N} := \bigcap_{A \in \mathcal{F}} A$$
L'intersezione di insiemi induttivi è anch'essa induttiva. Se $E$ è un qualsiasi altro insieme induttivo dell'universo, allora $E \cap W$ appartiene ad $\mathcal{F}$, e quindi $\mathbb{N} \subseteq E \cap W \subseteq E$. Ne consegue che $\mathbb{N}$ è il minimo insieme induttivo: esso racchiude tutti e soli i numeri naturali $0, 1, 2, 3, \dots$.

## Assioma della Scelta (Axiom of Choice - AC)

### Assioma 9: Assioma della Scelta
Sia $\mathcal{F}$ una famiglia di insiemi non vuoti e a due a due disgiunti (cioè $(\forall A, B \in \mathcal{F})(A \neq B \implies A \cap B = \emptyset)$).
Allora esiste un insieme $X \subseteq \bigcup \mathcal{F}$ tale che, per ogni $A \in \mathcal{F}$, l'intersezione $A \cap X$ è costituita da un unico elemento:
$$|A \cap X| = 1 \quad \forall A \in \mathcal{F}$$

L'insieme $X$ effettua una "scelta" di un singolo rappresentante per ciascun insieme della famiglia. Mentre per famiglie finite la scelta è banale conseguenza della logica dei predicati, per famiglie infinite questo principio richiede un postulato dedicato, indispensabile per dimostrare teoremi cardine dell'analisi e dell'algebra (esistenza di basi negli spazi vettoriali infiniti, compattezza topologica, teorema di Hahn-Banach).
