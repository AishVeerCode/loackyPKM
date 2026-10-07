---
status: permanent
type: lecture
area: education
related: ["[[Lecture 02 - Cantor's Theory of Cardinality]]", '[[Corsi]]']
aliases: ['Lecture 1', 'Real Analysis Lecture 1', '18.100A Lecture 1']
source: "https://www.youtube.com/watch?v=LY7YmuDbuW0"
title: "Lecture 01 - Sets, Set Operations and Mathematical Induction"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teoria elementare degli insiemi, operazioni booleane, leggi di De Morgan, principio del buon ordinamento e principio di induzione matematica."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 01 - Sets, Set Operations and Mathematical Induction]]

# Lecture 01 - Sets, Set Operations and Mathematical Induction

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'analisi reale</b></font></mark> poggia sui fondamenti rigorosi della teoria degli insiemi e sul principio di induzione matematica, strumenti essenziali per superare l'intuizione geometrica e formulare dimostrazioni formali inconfutabili. La prima lezione del corso MIT 18.100A (tenuta dal Prof. Casey Rodriguez) definisce le nozioni di appartenenza, inclusione e algebra booleana degli insiemi con le relative leggi di De Morgan, per poi formalizzare il Principio del Buon Ordinamento dei numeri naturali e dimostrare l'equivalenza con il Principio di Induzione Matematica.

## Fondamenti di Teoria degli Insiemi

Un insieme $A$ è una collezione ben definita di oggetti detti elementi. Se un elemento $x$ appartiene ad $A$, si scrive $x \in A$; in caso contrario, $x \notin A$.

### Relazioni di Inclusione ed Uguaglianza
- **Inclusione:** Dati due insiemi $A$ e $B$, $A$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>sottoinsieme</b></font></mark> di $B$ (scritto $A \subseteq B$) se ogni elemento di $A$ è anche elemento di $B$:
  $$\forall x : (x \in A \implies x \in B)$$
- **Uguaglianza:** Due insiemi sono uguali ($A = B$) se e solo se possiedono gli stessi identici elementi, il che equivale alla doppia inclusione:
  $$A = B \iff A \subseteq B \land B \subseteq A$$
- **Insieme vuoto:** L'insieme privo di elementi si denota con $\emptyset$. Per vacua verità logica, $\emptyset \subseteq A$ per ogni insieme $A$.

### Operazioni Insiemistiche
Fissato un insieme ambiente $X$:
1. **Unione:** $A \cup B := \{x \in X \mid x \in A \lor x \in B\}$
2. **Intersezione:** $A \cap B := \{x \in X \mid x \in A \land x \in B\}$. Se $A \cap B = \emptyset$, $A$ e $B$ si dicono disgiunti.
3. **Differenza (Complementare relativo):** $A \setminus B := \{x \in X \mid x \in A \land x \notin B\}$
4. **Complementare assoluto:** $A^c := X \setminus A = \{x \in X \mid x \notin A\}$
5. **Prodotto cartesiano:** $A \times B := \{(a, b) \mid a \in A, b \in B\}$

### Leggi di De Morgan
**Teorema:** Siano $A, B \subseteq X$. Allora:
$$(A \cup B)^c = A^c \cap B^c, \qquad (A \cap B)^c = A^c \cup B^c$$

*Dimostrazione di $(A \cup B)^c = A^c \cap B^c$:*
- $(\subseteq)$ Sia $x \in (A \cup B)^c$. Allora $x \notin (A \cup B)$, il che significa che l'enunciato $(x \in A \lor x \in B)$ è falso. Per le regole della logica proposizionale, ciò equivale a $(x \notin A \land x \notin B)$. Ne segue $x \in A^c \land x \in B^c$, ossia $x \in A^c \cap B^c$.
- $(\supseteq)$ Sia $x \in A^c \cap B^c$. Allora $x \notin A$ e $x \notin B$. Di conseguenza $x$ non può appartenere a $A \cup B$, da cui $x \in (A \cup B)^c$.
La seconda identità si dimostra in modo duale. Le leggi si generalizzano a famiglie arbitrarie di insiemi $\{A_i\}_{i \in I}$:
$$\left( \bigcup_{i \in I} A_i \right)^c = \bigcap_{i \in I} A_i^c, \qquad \left( \bigcap_{i \in I} A_i \right)^c = \bigcup_{i \in I} A_i^c$$

## Il Principio del Buon Ordinamento

Assumiamo come proprietà assiomatica dei numeri naturali $\mathbb{N} = \{1, 2, 3, \dots\}$:

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Principio del Buon Ordinamento (Well-Ordering Principle):</b></font></mark>
Ogni sottoinsieme non vuoto $S \subseteq \mathbb{N}$ ammette un elemento minimo:
$$\forall S \subseteq \mathbb{N}, S \neq \emptyset \implies \exists m \in S \text{ tale che } \forall x \in S : m \le x$$

Tale proprietà distingue nettamente $\mathbb{N}$ da insiemi come $\mathbb{Z}$, $\mathbb{Q}$ o $\mathbb{R}$, dove ad esempio l'intervallo aperto $]0, 1[$ non ammette minimo.

## Il Principio di Induzione Matematica

### Enunciato e Teorema di Equivalenza
**Teorema:** Sia $P(n)$ una famiglia di proposizioni indicizzate da $n \in \mathbb{N}$. Se:
1. $P(1)$ è vera (**base dell'induzione**)
2. $\forall k \in \mathbb{N} : P(k) \implies P(k+1)$ (**passo induttivo**)

allora $P(n)$ è vera per ogni $n \in \mathbb{N}$.

*Dimostrazione (tramite il Buon Ordinamento):*
Supponiamo per assurdo che esista almeno un $n \in \mathbb{N}$ per cui $P(n)$ è falsa. Definiamo l'insieme dei controesempi:
$$S := \{n \in \mathbb{N} \mid P(n) \text{ è falsa}\}$$
Per ipotesi di assurdo, $S \neq \emptyset$. Poiché $S \subseteq \mathbb{N}$, per il Principio del Buon Ordinamento $S$ ammette un elemento minimo $m = \min S$.
- Poiché per ipotesi la base $P(1)$ è vera, $1 \notin S$, per cui deve aversi $m > 1$.
- Consideriamo l'intero precedente $m - 1$. Poiché $m$ è il minimo di $S$ e $m - 1 < m$, si ha $m - 1 \notin S$, il che significa che $P(m - 1)$ è vera.
- Ma per l'ipotesi induttiva, la verità di $P(m - 1)$ implica la verità di $P((m - 1) + 1) = P(m)$.
Ne consegue che $P(m)$ è vera, il che contraddice $m \in S$. L'insieme dei controesempi deve dunque essere vuoto: $S = \emptyset$.

### Applicazione Classica: Somma dei Primi Naturali
Dimostriamo che per ogni $n \ge 1$:
$$\sum_{k=1}^n k = \frac{n(n+1)}{2}$$
- **Base ($n=1$):** $\sum_{k=1}^1 k = 1 = \frac{1(2)}{2} = 1$ (vera).
- **Passo induttivo:** Assumiamo $\sum_{k=1}^n k = \frac{n(n+1)}{2}$. Calcoliamo:
  $$\sum_{k=1}^{n+1} k = \left(\sum_{k=1}^n k\right) + (n+1) = \frac{n(n+1)}{2} + (n+1) = (n+1)\left(\frac{n}{2} + 1\right) = \frac{(n+1)(n+2)}{2}$$
La formula è dimostrata per tutti gli $n \in \mathbb{N}$.
