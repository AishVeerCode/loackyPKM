---
status: permanent
type: lecture
area: education
related: ['[[Lecture 13 - Limits of Functions]]', "[[Lecture 15 - Continuity of Sine and Cosine and Dirichlet's Function]]"]
aliases: ['Lecture 14', 'Real Analysis Lecture 14', '18.100A Lecture 14']
source: "https://www.youtube.com/watch?v=bBESL68iX6s"
title: "Lecture 14 - Limits of Functions in Terms of Sequences and Continuity"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Caratterizzazione sequenziale dei limiti, ponte tra successioni e funzioni, definizione di continuita in un punto e algebra delle funzioni continue."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]

# Lecture 14 - Limits of Functions in Terms of Sequences and Continuity

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La caratterizzazione sequenziale dei limiti</b></font></mark> stabilisce un ponte indissolubile tra l'analisi delle successioni e i limiti di funzione, consentendo di importare tutti i teoremi asintotici precedentemente provati nel contesto continuo. La quattordicesima lezione del corso MIT 18.100A dimostra l'equivalenza tra la definizione $\varepsilon-\delta$ e la convergenza lungo qualsiasi successione, formula la nozione cardine di continuità puntuale ed estende l'algebra delle funzioni continue e della loro composizione.

## Caratterizzazione Sequenziale del Limite

Sia $f: E \to \mathbb{R}$ e sia $c$ un punto di accumulazione di $E$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Caratterizzazione Sequenziale):</b></font></mark>
Le seguenti affermazioni sono equivalenti:
1. $\lim_{x \to c} f(x) = L$
2. Per ogni successione $(x_n)$ in $E \setminus \{c\}$ tale che $\lim_{n \to \infty} x_n = c$, si ha:
   $$\lim_{n \to \infty} f(x_n) = L$$

*Dimostrazione:*
- $(1 \implies 2)$: Assumiamo $\lim_{x \to c} f(x) = L$ e sia $x_n \to c$ con $x_n \neq c$.
  Sia $\varepsilon > 0$. Per ipotesi esiste $\delta > 0$ tale che $0 < |x - c| < \delta \implies |f(x) - L| < \varepsilon$.
  Poiché $x_n \to c$, esiste $N \in \mathbb{N}$ tale che per ogni $n \ge N$: $|x_n - c| < \delta$.
  Essendo $x_n \neq c$, abbiamo $0 < |x_n - c| < \delta$, da cui $|f(x_n) - L| < \varepsilon$. Dunque $f(x_n) \to L$.
- $(2 \implies 1)$ Dimostriamo la contronominale: supponiamo che il limite non sia $L$.
  Negando la definizione $\varepsilon-\delta$:
  $$\exists \varepsilon_0 > 0 : \forall \delta > 0, \; \exists x \in E \text{ con } 0 < |x - c| < \delta \text{ ma } |f(x) - L| \ge \varepsilon_0$$
  Per ogni $n \in \mathbb{N}$, scegliamo $\delta = 1/n$. Esiste allora un elemento $x_n \in E \setminus \{c\}$ tale che:
  $$|x_n - c| < \frac{1}{n} \quad \text{e} \quad |f(x_n) - L| \ge \varepsilon_0$$
  La successione $(x_n)$ soddisfa $x_n \to c$, ma $f(x_n)$ non converge ad $L$ (poiché dista almeno $\varepsilon_0$ da $L$).
  Dunque l'affermazione (2) è falsa. L'equivalenza è provata.

> [!TIP] Utilità della Caratterizzazione Sequenziale
> Per dimostrare che un limite **non esiste**, basta esibire due successioni $x_n \to c$ e $y_n \to c$ tali che $\lim f(x_n) \neq \lim f(y_n)$.

## La Continuità di una Funzione

### Definizione di Continuità in un Punto
Sia $f: E \to \mathbb{R}$ e sia $c \in E$. Diciamo che $f$ è <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>continua in $c$</b></font></mark> se:
$$\forall \varepsilon > 0, \; \exists \delta > 0 \text{ tale che } \forall x \in E : |x - c| < \delta \implies |f(x) - f(c)| < \varepsilon$$

Se $c$ è un punto di accumulazione di $E$, la continuità equivale a:
$$\lim_{x \to c} f(x) = f(c)$$
Equivalentemente, per la caratterizzazione sequenziale: per ogni successione $x_n \to c$ in $E$:
$$\lim_{n \to \infty} f(x_n) = f\left(\lim_{n \to \infty} x_n\right) = f(c)$$
La continuità consente lo scambio tra il simbolo di limite e l'applicazione funzionale.

### Algebra delle Funzioni Continue
**Teorema:** Siano $f, g: E \to \mathbb{R}$ continue in $c \in E$. Allora:
1. $f + g$ è continua in $c$.
2. $c \cdot f$ è continua in $c$.
3. $f \cdot g$ è continua in $c$.
4. Se $g(c) \neq 0$, allora $f / g$ è continua in $c$.

### Continuità della Funzione Composta
**Teorema:** Sia $f: A \to B$ continua in $c \in A$ e sia $g: B \to \mathbb{R}$ continua in $f(c) \in B$.
Allora la funzione composta:
$$(g \circ f): A \to \mathbb{R}, \qquad (g \circ f)(x) = g(f(x))$$
è continua in $c$.

*Dimostrazione (Sequenziale):*
Sia $x_n \to c$ in $A$. Poiché $f$ è continua in $c$, $y_n := f(x_n) \to f(c)$.
Poiché $g$ è continua in $f(c)$, $g(y_n) = g(f(x_n)) \to g(f(c))$.
Dunque $(g \circ f)(x_n) \to (g \circ f)(c)$. La continuità è provata.
