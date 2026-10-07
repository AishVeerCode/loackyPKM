---
status: permanent
type: lecture
area: education
related: ['[[Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value]]', '[[Lecture 07 - Convergent Sequences of Real Numbers]]']
aliases: ['Lecture 6', 'Real Analysis Lecture 6', '18.100A Lecture 6']
source: "https://www.youtube.com/watch?v=PnDtMfyZSIE"
title: "Lecture 06 - The Uncountability of the Real Numbers"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Non-numerabilita di R, argomento diagonale di Cantor per allineamenti decimali, non-numerabilita dei numeri irrazionali e trascendenti."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 06 - The Uncountability of the Real Numbers]]

# Lecture 06 - The Uncountability of the Real Numbers

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'insieme dei numeri reali $\mathbb{R}$</b></font></mark> non è numerabile, segnando una discontinuità fondamentale rispetto alla cardinalità discreta di $\mathbb{N}$ e $\mathbb{Q}$. La sesta lezione del corso MIT 18.100A dimostra il celeberrimo Teorema di Cantor attraverso l'argomento diagonale applicato all'intervallo $[0, 1]$, prova che la quasi totalità del continuo reale è costituita da numeri irrazionali e trascendenti, e introduce le nozioni topologiche preliminari degli intorni aperti sulla retta metrica.

## L'Argomento Diagonale di Cantor per $\mathbb{R}$

Dopo aver dimostrato che $\mathbb{Q}$ è numerabile, sorge spontaneo domandarsi se anche $\mathbb{R}$ possa essere enumerato in una lista ordinata. Cantor rispose negativamente nel 1874 con un argomento geometrico e nel 1891 con l'argomento diagonale.

### Teorema della Non-Numerabilità
**Teorema:** L'intervallo reale aperto $]0, 1[$ (e di conseguenza l'intera retta reale $\mathbb{R}$) è <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>non numerabile (uncountable)</b></font></mark>.

*Dimostrazione (Argomento Diagonale di Cantor):*
Ogni numero reale $x \in ]0, 1[$ ammette una rappresentazione decimale:
$$x = 0.d_1 d_2 d_3 d_4 \dots \qquad (d_i \in \{0, 1, \dots, 9\})$$
Per evitare ambiguità dovute ai decimali periodici (es. $0.4999\dots = 0.5000\dots$), escludiamo le espansioni che terminano con una sequenza infinita di soli $9$.
Supponiamo per assurdo che $]0, 1[$ sia numerabile. Allora esisterebbe una funzione biiettiva da $\mathbb{N}$ a $]0, 1[$, ovvero potremmo elencare tutti gli elementi dell'intervallo in una successione esaustiva:
$$\begin{aligned}
x_1 &= 0.d_{11} d_{12} d_{13} d_{14} \dots \\\\
x_2 &= 0.d_{21} d_{22} d_{23} d_{24} \dots \\\\
x_3 &= 0.d_{31} d_{32} d_{33} d_{34} \dots \\\\
x_4 &= 0.d_{41} d_{42} d_{43} d_{44} \dots \\\\
&\;\;\vdots
\end{aligned}$$
Costruiamo ora un nuovo numero reale $y = 0.a_1 a_2 a_3 a_4 \dots \in ]0, 1[$ modificando progressivamente le cifre lungo la **diagonale principale** $d_{nn}$:
$$a_n := \begin{cases} 4 & \text{se } d_{nn} \neq 4 \\\\ 5 & \text{se } d_{nn} = 4 \end{cases}$$
- Poiché ogni cifra $a_n$ è scelta tra $4$ e $5$, l'espansione non termina con soli $9$ o con soli $0$, quindi rappresenta un numero reale univocamente determinato in $]0, 1[$.
- Confrontiamo $y$ con ciascun elemento della lista:
  - Per $n = 1$: la prima cifra decimale di $y$ è $a_1 \neq d_{11}$, quindi $y \neq x_1$.
  - Per $n = 2$: la seconda cifra decimale di $y$ è $a_2 \neq d_{22}$, quindi $y \neq x_2$.
  - In generale, per ogni $n \in \mathbb{N}$, l'$n$-esima cifra di $y$ differisce dall'$n$-esima cifra di $x_n$ ($a_n \neq d_{nn}$), per cui $y \neq x_n$.
Ne segue che $y$ non compare in alcun punto dell'elenco, contraddicendo l'ipotesi che la lista includesse tutti i numeri di $]0, 1[$.
Dunque $]0, 1[$ non è numerabile, e poiché $]0, 1[ \subseteq \mathbb{R}$, anche $\mathbb{R}$ è non numerabile.

## Sovrabbondanza degli Irrazionali e Numeri Trascendenti

### Non-Numerabilità degli Irrazionali
**Corollario:** L'insieme dei numeri irrazionali $\mathbb{R} \setminus \mathbb{Q}$ è non numerabile.
*Dimostrazione:* Sappiamo che $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$. Se $\mathbb{R} \setminus \mathbb{Q}$ fosse numerabile, allora $\mathbb{R}$, essendo l'unione di due insiemi numerabili, risulterebbe numerabile. Poiché $\mathbb{R}$ è non numerabile, $\mathbb{R} \setminus \mathbb{Q}$ deve essere non numerabile.

### Numeri Algebrici e Trascendenti
- Un numero reale $x$ si dice <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>algebrico</b></font></mark> se è radice di un polinomio a coefficienti interi non nullo:
  $$a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 = 0 \qquad (a_i \in \mathbb{Z}, a_n \neq 0)$$
  Tutti i razionali e numeri come $\sqrt{2}, \sqrt[3]{5}$ sono algebrici.
- **Teorema:** L'insieme di tutti i numeri algebrici è numerabile.
  *(Dimostrazione: per ogni grado $n$ e altezza finita dei coefficienti vi sono un numero finito di polinomi, ciascuno con al più $n$ radici; l'insieme complessivo è unione numerabile di insiemi finiti).*
- Un numero reale non algebrico è detto **trascendente** (ad esempio $\pi$ ed $e$).
- **Conclusione:** Poiché $\mathbb{R}$ è non numerabile e i numeri algebrici sono numerabili, l'insieme dei numeri trascendenti è **non numerabile**. Senza esibire un singolo numero trascendente, Cantor provò che la stragrande maggioranza dei numeri reali sulla retta è trascendente.
