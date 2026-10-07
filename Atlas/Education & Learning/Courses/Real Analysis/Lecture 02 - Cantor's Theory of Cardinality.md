---
status: permanent
type: lecture
area: education
related: ['[[Lecture 01 - Sets, Set Operations and Mathematical Induction]]', "[[Lecture 03 - Cantor's Remarkable Theorem and the Least Upper Bound Property]]"]
aliases: ['Lecture 2', 'Real Analysis Lecture 2', '18.100A Lecture 2']
source: "https://www.youtube.com/watch?v=9_xG0AGRa-w"
title: "Lecture 02 - Cantor's Theory of Cardinality"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teoria della cardinalita di Cantor, biezioni, equipotenza, insiemi numerabili, numerabilita di Z e Q e unioni numerabili."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 02 - Cantor's Theory of Cardinality]]

# Lecture 02 - Cantor's Theory of Cardinality

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La teoria della cardinalità di Georg Cantor</b></font></mark> rivoluziona il concetto di infinito introducendo il criterio di corrispondenza biunivoca per confrontare le dimensioni degli insiemi. La lezione formalizza l'equipotenza tra insiemi, distingue rigorosamente gli insiemi finiti da quelli infiniti e introduce la nozione di insieme numerabile (denumerable), dimostrando che gli interi relativi $\mathbb{Z}$, il prodotto cartesiano $\mathbb{N} \times \mathbb{N}$ e persino il campo denso dei numeri razionali $\mathbb{Q}$ condividono esattamente la stessa "dimensione" discreta dei numeri naturali.

## Equipotenza e Cardinalità

Come confrontare le dimensioni di insiemi infiniti quando il semplice conteggio fallisce? Cantor stabilì che due insiemi hanno lo stesso numero di elementi se è possibile accoppiarli in modo perfetto.

### Definizioni
- Due insiemi $A$ e $B$ si dicono <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>equipotenti</b></font></mark> (o aventi la stessa cardinalità, denotato con $A \sim B$ o $|A| = |B|$) se esiste una funzione biiettiva:
  $$f: A \to B$$
- La relazione $\sim$ è una relazione di equivalenza:
  1. Riflessiva: $A \sim A$ (tramite l'identità $\mathrm{id}_A$).
  2. Simmetrica: $A \sim B \implies B \sim A$ (tramite la funzione inversa $f^{-1}$).
  3. Transitiva: $A \sim B \land B \sim C \implies A \sim C$ (tramite la composizione $g \circ f$).

### Insiemi Finiti e Numerabili
- Un insieme $A$ è **finito** se $A = \emptyset$ oppure esiste $n \in \mathbb{N}$ tale che $A \sim \{1, 2, \dots, n\}$. In tal caso la cardinalità è $|A| = n$.
- Un insieme $A$ è <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>infinito numerabile</b></font></mark> (countably infinite o denumerable) se:
  $$A \sim \mathbb{N}$$
  Ciò significa che gli elementi di $A$ possono essere elencati come una successione biunivoca: $A = \{a_1, a_2, a_3, \dots\}$.
- Un insieme è detto **numerabile** (countable) se è finito oppure infinito numerabile. Altrimenti è detto **non numerabile** (uncountable).

## Numerabilità di $\mathbb{Z}$ e di $\mathbb{N} \times \mathbb{N}$

### Numerabilità degli Interi Relativi $\mathbb{Z}$
Sebbene $\mathbb{Z} = \{\dots, -2, -1, 0, 1, 2, \dots\}$ sembri "il doppio" di $\mathbb{N}$, essi sono equipotenti.
**Proposizione:** $\mathbb{Z} \sim \mathbb{N}$.
*Dimostrazione:* Costruiamo la funzione biiettiva esplicita $f: \mathbb{N} \to \mathbb{Z}$:
$$f(n) = \begin{cases} \dfrac{n}{2} & \text{se } n \text{ è pari} \\\\ -\dfrac{n - 1}{2} & \text{se } n \text{ è dispari} \end{cases}$$
L'elenco corrispondente è: $f(1)=0, f(2)=1, f(3)=-1, f(4)=2, f(5)=-2, \dots$. Tale mappa è chiaramente sia iniettiva che suriettiva, provando che $|\mathbb{Z}| = |\mathbb{N}|$.

### Numerabilità del Prodotto Cartesiano $\mathbb{N} \times \mathbb{N}$
**Teorema:** $\mathbb{N} \times \mathbb{N}$ è infinito numerabile.
*Dimostrazione (Metodo Diagonale di Cantor):*
Disponiamo le coppie ordinate $(m, n)$ su una griglia bidimensionale infinita. Possiamo ordinare e contare le coppie percorrendo le diagonali secondarie finite $D_k = \{(m, n) \mid m + n = k\}$:
- Diagonale $k=2$: $(1,1)$
- Diagonale $k=3$: $(2,1), (1,2)$
- Diagonale $k=4$: $(3,1), (2,2), (1,3)$
- Diagonale $k=5$: $(4,1), (3,2), (2,3), (1,4)$
Poiché ogni diagonale è finita, ogni coppia $(m, n)$ occupa una posizione determinata e univoca nella lista. Una biezione algebrica chiusa è data dalla formula di accoppiamento di Cantor:
$$f(m, n) = \frac{(m + n - 1)(m + n - 2)}{2} + m$$

## Teoremi Generali sulla Numerabilità

### Sottoinsiemi di Insiemi Numerabili
**Teorema:** Ogni sottoinsieme di un insieme numerabile è numerabile.
*Dimostrazione:* Sia $A$ numerabile e $S \subseteq A$. Se $S$ è finito, la tesi è immediata. Se $S$ è infinito, enumeriamo $A = \{a_1, a_2, \dots\}$. Definiamo induttivamente gli indici $n_1 := \min \{n \in \mathbb{N} \mid a_n \in S\}$, $n_k := \min \{n \in \mathbb{N} \mid n > n_{k-1} \land a_n \in S\}$. Per il principio del buon ordinamento, tali minimi esistono sempre. La funzione $k \mapsto a_{n_k}$ fornisce una biezione tra $\mathbb{N}$ e $S$.

### Unione Numerabile di Insiemi Numerabili
**Teorema:** Sia $\{A_n\}_{n \in \mathbb{N}}$ una famiglia numerabile di insiemi numerabili. Allora l'unione:
$$A = \bigcup_{n=1}^\infty A_n$$
è un insieme numerabile.
*Dimostrazione:* Per ogni $n$, possiamo elencare gli elementi di $A_n$ come $A_n = \{a_{n, 1}, a_{n, 2}, a_{n, 3}, \dots\}$. La funzione $\phi: \mathbb{N} \times \mathbb{N} \to A$ definita da $\phi(n, k) = a_{n, k}$ è una suriezione da $\mathbb{N} \times \mathbb{N}$ su $A$. Poiché $\mathbb{N} \times \mathbb{N} \sim \mathbb{N}$, ne discende che $A$ è numerabile.

## La Numerabilità dei Numeri Razionali $\mathbb{Q}$

Un risultato apparentemente paradossale è che i razionali, pur essendo densamente distribuiti sulla retta, hanno la stessa cardinalità dei naturali.

**Teorema:** L'insieme dei numeri razionali $\mathbb{Q}$ è infinito numerabile.
*Dimostrazione:*
Ogni razionale positivo si scrive come frazione irriducibile $p/q$ con $p, q \in \mathbb{N}$. L'applicazione:
$$i: \mathbb{Q}^+ \to \mathbb{N} \times \mathbb{N}, \qquad i\left(\frac{p}{q}\right) = (p, q)$$
è un'iniezione in $\mathbb{N} \times \mathbb{N}$. Poiché $\mathbb{N} \times \mathbb{N}$ è numerabile, anche $\mathbb{Q}^+$ è numerabile come suo sottoinsieme.
Inoltre $\mathbb{Q} = \mathbb{Q}^+ \cup \{0\} \cup \mathbb{Q}^-$. Essendo $\mathbb{Q}^-$ equipotente a $\mathbb{Q}^+$, l'insieme $\mathbb{Q}$ è l'unione finita di insiemi numerabili, ed è pertanto numerabile.
