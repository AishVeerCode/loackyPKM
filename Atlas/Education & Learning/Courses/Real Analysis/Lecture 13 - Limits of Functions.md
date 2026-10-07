---
status: permanent
type: lecture
area: education
related: ['[[Lecture 12 - Ratio, Root, and Alternating Series Tests]]', '[[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]']
aliases: ['Lecture 13', 'Real Analysis Lecture 13', '18.100A Lecture 13']
source: "https://www.youtube.com/watch?v=cjeXg5rJ9D8"
title: "Lecture 13 - Limits of Functions"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Punti di accumulazione, definizione metrica epsilon-delta di limite di funzione ed esempi fondamentali di verifica analitica."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 13 - Limits of Functions]]

# Lecture 13 - Limits of Functions

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il limite di una funzione</b></font></mark> estende la nozione di convergenza infinitesimale dallo spazio discreto $\mathbb{N}$ a domini reali continui, formalizzando come i valori $f(x)$ si stabilizzino in prossimità di un punto di accumulazione. La tredicesima lezione del corso MIT 18.100A introduce la nozione topologica di punto di accumulazione (cluster point), definisce rigorosamente il limite tramite la formulazione metrica $\varepsilon-\delta$ di Weierstrass, dimostra l'unicità del limite ed illustra le tecniche di maggiorazione per verificare analiticamente i limiti.

## Punti di Accumulazione (Cluster Points)

Per poter definire il limite di $f(x)$ per $x \to c$, il punto $c$ deve poter essere "avvicinato" da punti del dominio diversi da $c$.

### Definizione
Sia $E \subseteq \mathbb{R}$. Un punto $c \in \mathbb{R}$ è detto <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>punto di accumulazione</b></font></mark> (cluster point o limit point) di $E$ se per ogni raggio $\delta > 0$:
$$\big( ]c - \delta, c + \delta[ \setminus \{c\} \big) \cap E \neq \emptyset$$
In altri termini, ogni intorno di $c$ contiene almeno un punto di $E$ distinto da $c$.
- *Nota:* Il punto $c$ **non deve necessariamente appartenere ad $E$** (es. $0$ è punto di accumulazione per $]0, 1[$).
- Un punto $x \in E$ che non è di accumulazione è detto **punto isolato**.

## La Definizione $\varepsilon-\delta$ di Limite

Sia $f: E \to \mathbb{R}$ e sia $c$ un punto di accumulazione di $E$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Limite di Funzione):</b></font></mark>
Diciamo che $f(x)$ tende ad $L \in \mathbb{R}$ per $x \to c$ (scritto $\lim_{x \to c} f(x) = L$) se:
$$\forall \varepsilon > 0, \; \exists \delta > 0 \text{ tale che } \forall x \in E : 0 < |x - c| < \delta \implies |f(x) - L| < \varepsilon$$

- La condizione $0 < |x - c|$ assicura che $x \neq c$: il comportamento della funzione nel punto $c$ stesso è irrilevante ai fini del limite.
- $\delta$ dipende in generale sia da $\varepsilon$ che dal punto $c$.

### Teorema di Unicità del Limite
**Teorema:** Se $\lim_{x \to c} f(x) = L_1$ e $\lim_{x \to c} f(x) = L_2$, allora $L_1 = L_2$.
*Dimostrazione:* Sia $\varepsilon > 0$. Esistono $\delta_1, \delta_2 > 0$ tali che:
- $0 < |x - c| < \delta_1 \implies |f(x) - L_1| < \varepsilon/2$
- $0 < |x - c| < \delta_2 \implies |f(x) - L_2| < \varepsilon/2$
Poiché $c$ è punto di accumulazione, esiste $x \in E$ tale che $0 < |x - c| < \min\{\delta_1, \delta_2\}$.
Allora: $|L_1 - L_2| \le |L_1 - f(x)| + |f(x) - L_2| < \varepsilon/2 + \varepsilon/2 = \varepsilon$.
Essendo $\varepsilon > 0$ arbitrario, $|L_1 - L_2| = 0 \implies L_1 = L_2$.

## Esempi Analitici Svolti

1. **Funzione Lineare $f(x) = 3x + 1$, $x \to 2$:** Mostriamo che $\lim_{x \to 2} (3x + 1) = 7$.
   Sia $\varepsilon > 0$. Calcoliamo:
   $$|f(x) - 7| = |(3x + 1) - 7| = |3x - 6| = 3|x - 2|$$
   Vogliamo $3|x - 2| < \varepsilon \iff |x - 2| < \varepsilon / 3$.
   Basta scegliere $\delta := \frac{\varepsilon}{3}$.

2. **Funzione Quadratica $f(x) = x^2$, $x \to c$:** Mostriamo che $\lim_{x \to c} x^2 = c^2$.
   Calcoliamo:
   $$|x^2 - c^2| = |x - c||x + c|$$
   Per controllare $|x + c|$, vincoliamo preliminarmente $\delta \le 1$.
   Se $|x - c| < 1$, allora $|x| \le |c| + 1$, quindi $|x + c| \le |x| + |c| \le 2|c| + 1$.
   Dunque $|x^2 - c^2| \le (2|c| + 1)|x - c|$.
   Dato $\varepsilon > 0$, scegliamo $\delta := \min\left\{1, \frac{\varepsilon}{2|c| + 1}\right\}$.
   Allora $0 < |x - c| < \delta \implies |x^2 - c^2| < \varepsilon$.
