---
status: permanent
type: lecture
area: education
related: ['[[Lecture 24 - Uniform Convergence, Weierstrass M-Test, and Interchanging Limits]]', '[[Corsi]]']
aliases: ['Lecture 25', 'Real Analysis Lecture 25', '18.100A Lecture 25']
source: "https://www.youtube.com/watch?v=u4qQ1oIQcW8"
title: "Lecture 25 - Power Series and the Weierstrass Approximation Theorem"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Serie di potenze, formula di Cauchy-Hadamard per il raggio di convergenza e teorema di approssimazione polinomiale di Weierstrass."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 25 - Power Series and the Weierstrass Approximation Theorem]]

# Lecture 25 - Power Series and the Weierstrass Approximation Theorem

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Le serie di potenze</b></font></mark> e il Teorema di Approssimazione di Weierstrass coronano il corso di Analisi Reale MIT 18.100A, fornendo gli strumenti definitivi per rappresentare funzioni continue generali attraverso polinomi. La venticinquesima lezione determina il raggio di convergenza tramite la formula di Cauchy-Hadamard, dimostra la regolarità analitica e la derivabilità termine a termine all'interno dell'intervallo di convergenza, e conclude con il fondamentale Teorema di Weierstrass, sancendo che ogni funzione continua su un intervallo compatto può essere approssimata con precisione arbitraria da polinomi.

## La Teoria delle Serie di Potenze

Una <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>serie di potenze</b></font></mark> centrata in $x_0 \in \mathbb{R}$ è una serie di funzioni della forma:
$$\sum_{n=0}^\infty a_n (x - x_0)^n = a_0 + a_1(x - x_0) + a_2(x - x_0)^2 + \dots$$

### Raggio di Convergenza e Formula di Cauchy-Hadamard
Definiamo il numero $\alpha := \limsup_{n \to \infty} \sqrt[n]{|a_n|} \in [0, +\infty]$.
Il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>raggio di convergenza</b></font></mark> $R \in [0, +\infty]$ è definito da:
$$R := \begin{cases} \dfrac{1}{\alpha} & \text{se } 0 < \alpha < \infty \\\\ +\infty & \text{se } \alpha = 0 \\\\ 0 & \text{se } \alpha = +\infty \end{cases}$$

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Cauchy-Hadamard):</b></font></mark>
Data la serie $\sum a_n (x - x_0)^n$ con raggio di convergenza $R$:
1. Se $|x - x_0| < R$, la serie converge **assolutamente**.
2. Se $|x - x_0| > R$, la serie **diverge**.
3. Per ogni $0 < r < R$, la serie converge **uniformemente** sull'intervallo chiuso $[x_0 - r, x_0 + r]$.

*Dimostrazione:*
Applicando il Criterio della Radice (Lezione 12) alla serie di termini $u_n(x) = a_n (x - x_0)^n$:
$$\limsup_{n \to \infty} \sqrt[n]{|u_n(x)|} = \limsup_{n \to \infty} \sqrt[n]{|a_n|} |x - x_0| = \alpha |x - x_0|$$
- Se $\alpha |x - x_0| < 1 \iff |x - x_0| < 1/\alpha = R$, la serie converge assolutamente.
- Se $\alpha |x - x_0| > 1 \iff |x - x_0| > R$, la serie diverge.
Sul compatto $[x_0 - r, x_0 + r]$, $|u_n(x)| \le |a_n| r^n =: M_n$. Poiché $r < R$, $\sum M_n$ converge, e la convergenza uniforme segue dal Weierstrass M-Test.

### Derivabilità e Analiticità delle Serie di Potenze
**Teorema:** Una serie di potenze definisce una funzione infinitamente derivabile $f \in C^\infty(]x_0 - R, x_0 + R[)$.
La serie può essere derivata e integrata termine a termine un numero arbitrario di volte con lo stesso raggio di convergenza $R$:
$$f'(x) = \sum_{n=1}^\infty n a_n (x - x_0)^{n-1}$$
Inoltre i coefficienti corrispondono alle derivate: $a_n = \frac{f^{(n)}(x_0)}{n!}$.

## Il Teorema di Approssimazione di Weierstrass

Come conclusione del corso, Weierstrass risponde alla domanda: è possibile approssimare qualsiasi curva continua mediante semplici polinomi?

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Approssimazione di Weierstrass (1885):</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ una qualsiasi funzione continua su un intervallo compatto $[a, b]$.
Allora per ogni $\varepsilon > 0$, esiste un polinomio $P(x)$ a coefficienti reali tale che:
$$\|f - P\|_\infty = \sup_{x \in [a, b]} |f(x) - P(x)| < \varepsilon$$

In termini topologici: l'algebra dei polinomi $\mathbb{R}[x]$ è **densa** nello spazio delle funzioni continue $C([a, b])$ dotato della metrica uniforme.

### Dimostrazione Costruttiva tramite Polinomi di Bernstein
Senza perdita di generalità, consideriamo l'intervallo $[0, 1]$.
Sergei Bernstein (1912) fornì una dimostrazione costruttiva esplicita introducendo i polinomi:
$$B_n(f)(x) := \sum_{k=0}^n f\left(\frac{k}{n}\right) \binom{n}{k} x^k (1 - x)^{n-k}$$
- Ciascun termine $\binom{n}{k} x^k (1 - x)^{n-k}$ è una probabilità binomiale che somma ad $1$ (per il Teorema del Binomio, Lezione 8 di Fondamenti).
- Sfruttando la continuità uniforme di $f$ su $[0, 1]$ (Teorema di Heine-Cantor, Lezione 17) e la legge dei grandi numeri (disuguaglianza di Chebyshev sulle varianze binomiali), si dimostra che:
  $$\lim_{n \to \infty} \|B_n(f) - f\|_\infty = 0$$
I polinomi di Bernstein $B_n(f)$ convergono uniformemente a $f$ su tutto $[0, 1]$.

## Retrospettiva del Corso MIT 18.100A

Il percorso di Real Analysis ha completato l'edificazione del continuo matematico:
1. **Fondamenti:** Insiemi, induzione, cardinalità e la scoperta che $|\mathbb{R}| > |\mathbb{N}|$.
2. **La Retta Reale:** Completezza di Dedekind (LUB Property), proprietà di Archimede e densità.
3. **Successioni e Serie:** Limiti $\varepsilon-N$, Bolzano-Weierstrass, convergenza di Cauchy e criteri di sommabilità.
4. **Funzioni Continue e Derivata:** Teorema dei Valori Estremi, Teorema dei Valori Intermedi, Heine-Cantor, controesempio di Weierstrass, e Teorema del Valor Medio di Lagrange.
5. **Integrazione e Spazi di Funzioni:** Integrale di Riemann, Teorema Fondamentale del Calcolo, convergenza uniforme e approssimazione polinomiale.
