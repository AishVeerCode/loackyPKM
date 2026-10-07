---
status: permanent
type: lecture
area: education
related: ['[[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]', "[[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]]"]
aliases: ['Lecture 15', 'Real Analysis Lecture 15', '18.100A Lecture 15']
source: "https://www.youtube.com/watch?v=smIcuRZybsA"
title: "Lecture 15 - Continuity of Sine and Cosine and Dirichlet's Function"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Continuita trigonometrica globale, disuguaglianze per seno e coseno, funzione indicatrice di Dirichlet e patologie analitiche."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 15 - Continuity of Sine and Cosine and Dirichlet's Function]]

# Lecture 15 - Continuity of Sine and Cosine and Dirichlet's Function

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La continuità globale</b></font></mark> di una funzione garantisce che piccole perturbazioni dell'input producano scostamenti arbitrariamente piccoli dell'output su tutto il dominio. La quindicesima lezione del corso MIT 18.100A dimostra la continuità di seno e coseno su tutto $\mathbb{R}$ tramite disuguaglianze geometriche fondamentali, per poi analizzare le patologie della continuità introducendo la Funzione di Dirichlet (ovunque discontinua) e la Funzione di Thomae, evidenziando il ruolo critico della densità dei razionali e degli irrazionali.

## Continuità delle Funzioni Trigonometriche

Per provare la continuità globale di $\sin(x)$ e $\cos(x)$, partiamo dalla fondamentale disuguaglianza geometrica (valida per ogni $x \in \mathbb{R}$):
$$|\sin x| \le |x|$$

### Continuità del Seno
**Teorema:** La funzione $f(x) = \sin(x)$ è continua su tutto $\mathbb{R}$.

*Dimostrazione:*
Sia $c \in \mathbb{R}$. Utilizziamo le formule di prostaferesi per la differenza di seni:
$$\sin x - \sin c = 2 \sin\left(\frac{x - c}{2}\right) \cos\left(\frac{x + c}{2}\right)$$
Prendendo il valore assoluto e ricordando che $|\cos \theta| \le 1$ per ogni $\theta$:
$$|\sin x - \sin c| = 2 \left|\sin\left(\frac{x - c}{2}\right)\right| \left|\cos\left(\frac{x + c}{2}\right)\right| \le 2 \left|\sin\left(\frac{x - c}{2}\right)\right|$$
Applicando la disuguaglianza $|\sin \theta| \le |\theta|$ con $\theta = \frac{x - c}{2}$:
$$|\sin x - \sin c| \le 2 \left|\frac{x - c}{2}\right| = |x - c|$$
Sia ora $\varepsilon > 0$. Scegliendo semplicemente $\delta := \varepsilon$:
$$|x - c| < \delta \implies |\sin x - \sin c| \le |x - c| < \varepsilon$$
Dunque $\sin(x)$ è continua in ogni punto $c \in \mathbb{R}$ (ed è addirittura $1$-lipschitziana).

### Continuità del Coseno
**Teorema:** La funzione $g(x) = \cos(x)$ è continua su tutto $\mathbb{R}$.
*Dimostrazione:* Analogamente, usando $|\cos x - \cos c| = 2 |\sin(\frac{x-c}{2}) \sin(\frac{x+c}{2})| \le |x - c|$. La continuità segue ponendo $\delta = \varepsilon$.

## Funzioni Patologiche: La Funzione di Dirichlet

La continuità può fallire in modo drammatico anche per funzioni definite in modo apparentemente elementare.

### Definizione
La <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione di Dirichlet</b></font></mark> è la funzione indicatrice dei numeri razionali su $\mathbb{R}$:
$$D(x) := \begin{cases} 1 & \text{se } x \in \mathbb{Q} \\\\ 0 & \text{se } x \notin \mathbb{Q} \end{cases}$$

### Teorema di Discontinuità Ovunque
**Teorema:** La funzione di Dirichlet $D: \mathbb{R} \to \mathbb{R}$ è <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>discontinua in ogni punto</b></font></mark> $c \in \mathbb{R}$.

*Dimostrazione (tramite la Caratterizzazione Sequenziale):*
Distinguiamo due casi per il punto $c \in \mathbb{R}$:
1. **Caso $c \in \mathbb{Q}$ ($D(c) = 1$):**
   Per la densità degli irrazionali (dimostrata nella Lezione 5), esiste una successione di numeri irrazionali $(y_n)$ tale che $y_n \to c$.
   Valutando la funzione: $D(y_n) = 0$ per ogni $n$.
   Dunque $\lim_{n \to \infty} D(y_n) = 0 \neq 1 = D(c)$.
   La funzione non è continua in $c$.
2. **Caso $c \notin \mathbb{Q}$ ($D(c) = 0$):**
   Per la densità dei razionali, esiste una successione di numeri razionali $(x_n)$ tale che $x_n \to c$.
   Valutando la funzione: $D(x_n) = 1$ per ogni $n$.
   Dunque $\lim_{n \to \infty} D(x_n) = 1 \neq 0 = D(c)$.
   La funzione non è continua in $c$.
In ogni punto della retta reale la funzione oscilla violentemente tra 0 e 1, rendendo impossibile tracciarne il grafico.

## La Funzione di Thomae (Popcorn Function)

Un esempio ancora più sorprendente è la funzione di Thomae $T: ]0, 1[ \to \mathbb{R}$:
$$T(x) := \begin{cases} \dfrac{1}{q} & \text{se } x = \frac{p}{q} \in \mathbb{Q} \text{ ridotta ai minimi termini} \\\\ 0 & \text{se } x \notin \mathbb{Q} \end{cases}$$
- $T$ è **continua in ogni numero irrazionale**.
- $T$ è **discontinua in ogni numero razionale**.
Questo risultato dimostra che l'insieme dei punti di continuità può essere estremamente complicato dal punto di vista insiemistico.
