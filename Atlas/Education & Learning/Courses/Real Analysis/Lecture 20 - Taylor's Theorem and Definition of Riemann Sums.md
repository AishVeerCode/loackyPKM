---
status: permanent
type: lecture
area: education
related: ["[[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]]", '[[Lecture 21 - The Riemann Integral of a Continuous Function]]']
aliases: ['Lecture 20', 'Real Analysis Lecture 20', '18.100A Lecture 20']
source: "https://www.youtube.com/watch?v=ImHAGH_OEow"
title: "Lecture 20 - Taylor's Theorem and Definition of Riemann Sums"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teorema di Taylor con resto di Lagrange, funzioni lisce non analitiche, partizioni e somme di Darboux per l'integrale di Riemann."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 20 - Taylor's Theorem and Definition of Riemann Sums]]

# Lecture 20 - Taylor's Theorem and Definition of Riemann Sums

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Teorema di Taylor</b></font></mark> generalizza il Teorema del Valor Medio ad approssimazioni polinomiali di ordine arbitrario, quantificando con esattezza l'errore di troncamento attraverso la formula del resto di Lagrange. La ventesima lezione del corso MIT 18.100A dimostra il teorema di Taylor, esamina il celebre controesempio di Cauchy di una funzione infinitamente derivabile ma non analitica ($e^{-1/x^2}$), per poi aprire la seconda grande sezione del corso: la teoria dell'integrazione secondo Riemann attraverso partizioni, somme di Darboux e somme integrali.

## Il Teorema di Taylor con Resto di Lagrange

Sia $f: ]a, b[ \to \mathbb{R}$ derivabile $n+1$ volte su $]a, b[$ e sia $x_0 \in ]a, b[$.
Il **polinomio di Taylor** di grado $n$ centrato in $x_0$ è:
$$P_n(x) := \sum_{k=0}^n \frac{f^{(k)}(x_0)}{k!} (x - x_0)^k = f(x_0) + f'(x_0)(x - x_0) + \dots + \frac{f^{(n)}(x_0)}{n!}(x - x_0)^n$$

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Taylor:</b></font></mark>
Per ogni $x \in ]a, b[$, esiste un punto $c$ strettamente compreso tra $x_0$ e $x$ tale che:
$$f(x) = P_n(x) + R_n(x)$$
dove il **resto di Lagrange** è dato da:
$$R_n(x) = \frac{f^{(n+1)}(c)}{(n+1)!} (x - x_0)^{n+1}$$

*Dimostrazione:*
Fissato $x \neq x_0$, poniamo $M := \frac{f(x) - P_n(x)}{(x - x_0)^{n+1}}$ e consideriamo la funzione ausiliaria $g: [x_0, x] \to \mathbb{R}$:
$$g(t) := f(x) - \sum_{k=0}^n \frac{f^{(k)}(t)}{k!}(x - t)^k - M (x - t)^{n+1}$$
- $g(x) = 0$ (perché tutti i termini con $(x - t)$ si annullano).
- $g(x_0) = f(x) - P_n(x) - M(x - x_0)^{n+1} = 0$ per la scelta di $M$.
Applicando il **Teorema di Rolle** (Lezione 19), esiste $c$ tra $x_0$ e $x$ con $g'(c) = 0$.
Calcolando la derivata di $g$ rispetto a $t$, la somma telescopica si elide lasciando solo:
$$g'(t) = -\frac{f^{(n+1)}(t)}{n!}(x - t)^n + (n+1)M(x - t)^n = (x - t)^n \left[ (n+1)M - \frac{f^{(n+1)}(t)}{n!} \right]$$
Poiché $g'(c) = 0$ e $c \neq x$, deve essere $(n+1)M = \frac{f^{(n+1)}(c)}{n!} \implies M = \frac{f^{(n+1)}(c)}{(n+1)!}$, da cui la tesi.

## Funzioni $C^\infty$ Non Analitiche: Il Controesempio di Cauchy

Una funzione derivabile infinite volte ($f \in C^\infty$) non è necessariamente rappresentabile dalla sua serie di Taylor.
Consideriamo la funzione:
$$f(x) := \begin{cases} e^{-1/x^2} & \text{se } x \neq 0 \\\\ 0 & \text{se } x = 0 \end{cases}$$
- Si dimostra per induzione che per ogni $n \in \mathbb{N}$: $f^{(n)}(0) = 0$.
- Di conseguenza, il polinomio di Taylor di qualsiasi grado centrato in $0$ è identicamente nullo: $P_n(x) = 0$.
La serie di Taylor $\sum_{n=0}^\infty \frac{f^{(n)}(0)}{n!} x^n = 0$ converge su tutto $\mathbb{R}$, ma converge alla funzione originaria $f(x)$ **soltanto nel punto $x = 0$**! Per ogni $x \neq 0$, $f(x) = e^{-1/x^2} > 0 \neq 0$.
Dunque la differenziabilità infinita non implica l'analiticità.

## Introduzione all'Integrale di Riemann

Lasciato il calcolo differenziale, il corso affronta il problema geometrico del calcolo delle aree sotto curve non regolari.

### Partizioni di un Intervallo
Dato un intervallo compatto $[a, b]$, una <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>partizione</b></font></mark> $P$ di $[a, b]$ è un insieme finito di punti ordinati:
$$P = \{x_0, x_1, x_2, \dots, x_n\} \qquad \text{con } a = x_0 < x_1 < x_2 < \dots < x_n = b$$
- L'ampiezza dell'$i$-esimo sottointervallo $[x_{i-1}, x_i]$ è $\Delta x_i := x_i - x_{i-1}$.
- Il calibro (o norma) della partizione è $\|P\| := \max_{1 \le i \le n} \Delta x_i$.

### Somme di Darboux Inferiori e Superiori
Sia $f: [a, b] \to \mathbb{R}$ una funzione limitata. Per ogni sottointervallo poniamo:
$$m_i := \inf_{x \in [x_{i-1}, x_i]} f(x), \qquad M_i := \sup_{x \in [x_{i-1}, x_i]} f(x)$$
Definiamo:
- **Somma inferiore di Darboux:** $L(f, P) := \sum_{i=1}^n m_i \Delta x_i$
- **Somma superiore di Darboux:** $U(f, P) := \sum_{i=1}^n M_i \Delta x_i$
Per ogni partizione $P$, è evidente che $L(f, P) \le U(f, P)$.
