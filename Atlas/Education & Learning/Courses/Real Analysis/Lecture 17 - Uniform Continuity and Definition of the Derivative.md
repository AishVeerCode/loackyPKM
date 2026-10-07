---
status: permanent
type: lecture
area: education
related: ["[[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]]", '[[Lecture 18 - Weierstrass Continuous and Nowhere Differentiable Function]]']
aliases: ['Lecture 17', 'Real Analysis Lecture 17', '18.100A Lecture 17']
source: "https://www.youtube.com/watch?v=f_sNWn7zujU"
title: "Lecture 17 - Uniform Continuity and Definition of the Derivative"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Continuita uniforme, teorema di Heine-Cantor sui compatti, definizione di derivata ed equivalenza con differenziabilita."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 17 - Uniform Continuity and Definition of the Derivative]]

# Lecture 17 - Uniform Continuity and Definition of the Derivative

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La continuità uniforme</b></font></mark> rafforza la nozione ordinaria di continuità imponendo che la scelta del raggio $\delta$ dipenda esclusivamente dalla precisione $\varepsilon$ e sia valida uniformemente su tutto il dominio. La diciassettesima lezione del corso MIT 18.100A dimostra il fondamentale Teorema di Heine-Cantor (ogni funzione continua su un intervallo compatto è uniformemente continua), introduce la definizione formale di derivata come limite del rapporto incrementale e dimostra che la derivabilità implica la continuità.

## Continuità Uniforme

Nella continuità ordinaria di $f$ su $E$, per ogni $x \in E$ e ogni $\varepsilon > 0$ esiste $\delta > 0$ che può dipendere sia da $\varepsilon$ sia dal punto $x$.

### Definizione
Una funzione $f: E \to \mathbb{R}$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>uniformemente continua</b></font></mark> su $E$ se:
$$\forall \varepsilon > 0, \; \exists \delta > 0 \text{ tale che } \forall x, y \in E : |x - y| < \delta \implies |f(x) - f(y)| < \varepsilon$$
La differenza fondamentale risiede nell'ordine dei quantificatori: esiste un unico $\delta$ che funziona contemporaneamente per tutte le coppie di punti $x, y \in E$.

### Controesempi
1. **$f(x) = \frac{1}{x}$ su $]0, 1[$:** È continua in ogni punto, ma **non** uniformemente continua. Man mano che $x \to 0^+$, la pendenza tende ad infinito e per mantenere $|f(x) - f(y)| < 1$ serve un $\delta$ che collassa a zero.
2. **$f(x) = x^2$ su $\mathbb{R}$:** Non è uniformemente continua su tutta la retta reale, poiché $|x^2 - y^2| = |x - y||x + y|$ e per $x$ arbitrariamente grande $|x + y|$ diverge.

## Il Teorema di Heine-Cantor

<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Teorema (Heine-Cantor):</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ una funzione continua su un intervallo chiuso e limitato $[a, b]$.
Allora $f$ è **uniformemente continua** su $[a, b]$.

*Dimostrazione (per assurdo):*
Supponiamo che $f$ non sia uniformemente continua su $[a, b]$. Negando la definizione:
$$\exists \varepsilon_0 > 0 : \forall \delta > 0, \; \exists x, y \in [a, b] \text{ tali che } |x - y| < \delta \text{ ma } |f(x) - f(y)| \ge \varepsilon_0$$
Per ogni $n \in \mathbb{N}$, scegliamo $\delta = 1/n$. Esistono allora successioni $(x_n)$ e $(y_n)$ in $[a, b]$ tali che:
$$|x_n - y_n| < \frac{1}{n} \qquad \text{e} \qquad |f(x_n) - f(y_n)| \ge \varepsilon_0$$
Poiché $(x_n)$ è limitata in $[a, b]$, per il Teorema di Bolzano-Weierstrass ammette una sottosuccessione convergente:
$$x_{n_k} \to x_0 \in [a, b] \quad (k \to \infty)$$
Inoltre $|y_{n_k} - x_0| \le |y_{n_k} - x_{n_k}| + |x_{n_k} - x_0| < \frac{1}{n_k} + |x_{n_k} - x_0| \to 0$, quindi anche $y_{n_k} \to x_0$.
Poiché $f$ è continua in $x_0$, per la caratterizzazione sequenziale:
$$\lim_{k \to \infty} f(x_{n_k}) = f(x_0) \qquad \text{e} \qquad \lim_{k \to \infty} f(y_{n_k}) = f(x_0)$$
Ne segue che $|f(x_{n_k}) - f(y_{n_k})| \to |f(x_0) - f(x_0)| = 0$.
Ma per costruzione avevamo $|f(x_{n_k}) - f(y_{n_k})| \ge \varepsilon_0 > 0$ per ogni $k$, assurdo!
Dunque $f$ è uniformemente continua su $[a, b]$.

## Definizione della Derivata

Sia $f: ]a, b[ \to \mathbb{R}$ e sia $c \in ]a, b[$.

### Rapporto Incrementale e Derivata
Diciamo che $f$ è <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>derivabile in $c$</b></font></mark> se esiste finito il limite del rapporto incrementale:
$$f'(c) := \lim_{x \to c} \frac{f(x) - f(c)}{x - c} = \lim_{h \to 0} \frac{f(c + h) - f(c)}{h}$$
Il numero $f'(c) \in \mathbb{R}$ è la **derivata** di $f$ in $c$ e rappresenta il coefficiente angolare della retta tangente al grafico nel punto $(c, f(c))$.

### Differenziabilità Implica Continuità
**Teorema:** Se $f$ è derivabile in $c$, allora $f$ è continua in $c$.

*Dimostrazione:*
Per $x \neq c$, possiamo scrivere:
$$f(x) - f(c) = \frac{f(x) - f(c)}{x - c} \cdot (x - c)$$
Passando al limite per $x \to c$ tramite l'algebra dei limiti:
$$\lim_{x \to c} \big(f(x) - f(c)\big) = \lim_{x \to c} \frac{f(x) - f(c)}{x - c} \cdot \lim_{x \to c} (x - c) = f'(c) \cdot 0 = 0$$
Ne segue $\lim_{x \to c} f(x) = f(c)$, provando che $f$ è continua in $c$.
