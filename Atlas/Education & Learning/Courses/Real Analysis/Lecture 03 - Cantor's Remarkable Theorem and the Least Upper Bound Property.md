---
status: permanent
type: lecture
area: education
related: ["[[Lecture 02 - Cantor's Theory of Cardinality]]", '[[Lecture 04 - The Characterization of the Real Numbers]]']
aliases: ['Lecture 3', 'Real Analysis Lecture 3', '18.100A Lecture 3']
source: "https://www.youtube.com/watch?v=nbENJ-Ce7Nc"
title: "Lecture 03 - Cantor's Remarkable Theorem and the Least Upper Bound Property"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teorema dell'insieme delle parti di Cantor, non esistenza di suriezioni su P(A), gerarchia degli infiniti e lacune dei razionali."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 03 - Cantor's Remarkable Theorem and the Least Upper Bound Property]]

# Lecture 03 - Cantor's Remarkable Theorem and the Least Upper Bound Property

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Teorema di Cantor</b></font></mark> sancisce che l'insieme delle parti $\mathcal{P}(A)$ di qualsiasi insieme $A$ possiede una cardinalità strettamente superiore a quella di $A$, escludendo l'esistenza di suriezioni da $A$ a $\mathcal{P}(A)$ e aprendo la porta a una gerarchia infinita di infiniti. La lezione dimostra questa celebre tesi mediante l'argomento diagonale insiemistico, per poi passare all'analisi dell'insufficienza strutturale di $\mathbb{Q}$: il campo razionale non possiede la proprietà del minimo maggiorante (Least Upper Bound Property), evidenziando le "lacune" che motivano la costruzione di $\mathbb{R}$.

## Il Teorema di Cantor sull'Insieme delle Parti

Dato un insieme $A$, l'<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>insieme delle parti</b></font></mark> (power set) $\mathcal{P}(A)$ è la famiglia di tutti i sottoinsiemi di $A$:
$$\mathcal{P}(A) := \{S \mid S \subseteq A\}$$
Se $A$ è finito con $|A| = n$, allora $|\mathcal{P}(A)| = 2^n > n$. Cantor dimostrò che questa stretta disuguaglianza permane per qualunque insieme, anche infinito.

### Teorema di Cantor
**Teorema:** Per ogni insieme $A$, non esiste alcuna funzione suriettiva $f: A \to \mathcal{P}(A)$. Di conseguenza, non esiste alcuna biezione tra $A$ e $\mathcal{P}(A)$, ovvero $|A| < |\mathcal{P}(A)|$.

*Dimostrazione (Argomento Diagonale Insiemistico):*
Sia $f: A \to \mathcal{P}(A)$ una generica funzione. Per ogni elemento $x \in A$, la sua immagine $f(x)$ è un sottoinsieme di $A$.
Ha senso chiedersi se $x$ appartenga o meno al proprio sottoinsieme immagine $f(x)$.
Definiamo il sottoinsieme diagonale $B \subseteq A$:
$$B := \{x \in A \mid x \notin f(x)\}$$
Poiché $B$ è un sottoinsieme di $A$, esso è a pieno titolo un elemento dell'insieme delle parti: $B \in \mathcal{P}(A)$.
Dimostriamo che $B$ **non appartiene all'immagine** di $f$:
Supponiamo per assurdo che $f$ sia suriettiva. Allora deve esistere un elemento $y \in A$ la cui immagine sia esattamente $B$:
$$f(y) = B$$
Ora chiediamoci se $y \in B$:
- Se $y \in B$, per definizione di $B$ deve aversi $y \notin f(y) = B$, assurdo!
- Se $y \notin B = f(y)$, allora $y$ soddisfa la condizione di appartenenza a $B$, dunque $y \in B$, assurdo!
In entrambi i casi si giunge a una flagrante contraddizione logica ($y \in B \iff y \notin B$).
Ne consegue che l'ipotesi di suriettività era falsa: nessun elemento $y \in A$ può avere $B$ come immagine. Dunque $f$ non è suriettiva.

> [!IMPORTANT] Conseguenza: Infinità degli Ordini di Infinito
> Poiché l'iniezione naturale $x \mapsto \{x\}$ garantisce $|A| \le |\mathcal{P}(A)|$, il teorema prova che:
> $$|A| < |\mathcal{P}(A)|$$
> Partendo da $\mathbb{N}$, otteniamo una catena infinita di insiemi infiniti non equipotenti:
> $$|\mathbb{N}| < |\mathcal{P}(\mathbb{N})| < |\mathcal{P}(\mathcal{P}(\mathbb{N}))| < \dots$$
> Esistono infiniti insiemi non numerabili di dimensioni progressivamente maggiori.

## Il Fallimento della Completezza in $\mathbb{Q}$

Lasciata la teoria pura degli insiemi, il corso si rivolge alle basi analitiche della retta numerica.
Nel campo dei numeri razionali $\mathbb{Q}$, valgono gli assiomi di campo (addizione, moltiplicazione) e di ordinamento totale. Tuttavia $\mathbb{Q}$ presenta gravi "buchi".

### Maggioranti ed Estremo Superiore
Sia $S \subseteq \mathbb{Q}$ un insieme non vuoto.
- $M \in \mathbb{Q}$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>maggiorante</b></font></mark> di $S$ se $\forall x \in S : x \le M$.
- $S$ si dice limitato superiormente se possiede almeno un maggiorante.
- Un numero $L$ è il **minimo maggiorante** o **estremo superiore** di $S$ (indicato con $\sup S$ o Least Upper Bound - LUB) se:
  1. $L$ è un maggiorante di $S$.
  2. Per ogni maggiorante $M$ di $S$, si ha $L \le M$.

### Proprietà del Minimo Maggiorante (LUB Property)
Un insieme ordinato $X$ gode della proprietà del minimo maggiorante se ogni sottoinsieme non vuoto superiormente limitato ammette estremo superiore in $X$.

**Teorema:** Il campo razionale $(\mathbb{Q}, \le)$ non possiede la proprietà del minimo maggiorante.

*Dimostrazione:*
Consideriamo il sottoinsieme:
$$S := \{q \in \mathbb{Q} \mid q > 0 \land q^2 < 2\}$$
1. $S \neq \emptyset$ poiché $1 \in S$ ($1^2 = 1 < 2$).
2. $S$ è limitato superiormente in $\mathbb{Q}$: infatti per ogni $q \in S$, $q^2 < 2 < 4 = 2^2 \implies q < 2$. Dunque $2$ è un maggiorante razionale.
3. Supponiamo per assurdo che esista $L \in \mathbb{Q}$ tale che $L = \sup S$.
   Chiaramente $L \ge 1 > 0$. Sappiamo che in $\mathbb{Q}$ non esiste alcun elemento con $L^2 = 2$. Restano due possibilità:
   - Se $L^2 < 2$, è possibile trovare un razionale piccolo $\varepsilon > 0$ tale che $(L + \varepsilon)^2 < 2$, collocando $L + \varepsilon \in S$. Ma $L + \varepsilon > L$, contraddicendo che $L$ sia un maggiorante.
   - Se $L^2 > 2$, è possibile trovare un razionale $\varepsilon > 0$ tale che $(L - \varepsilon)^2 > 2$, rendendo $L - \varepsilon$ un maggiorante strettamente minore di $L$, contraddicendo che $L$ sia il *minimo* maggiorante.
In entrambi i casi si ha contraddizione. Dunque $S$ non possiede estremo superiore in $\mathbb{Q}$.
Questa lacuna strutturale impone l'introduzione assiomatica dei numeri reali $\mathbb{R}$.
