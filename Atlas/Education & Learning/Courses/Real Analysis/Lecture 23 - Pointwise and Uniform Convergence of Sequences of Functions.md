---
status: permanent
type: lecture
area: education
related: ['[[Lecture 22 - Fundamental Theorem of Calculus and Change of Variables]]', '[[Lecture 24 - Uniform Convergence, Weierstrass M-Test, and Interchanging Limits]]']
aliases: ['Lecture 23', 'Real Analysis Lecture 23', '18.100A Lecture 23']
source: "https://www.youtube.com/watch?v=_HRTdXJgZ0Q"
title: "Lecture 23 - Pointwise and Uniform Convergence of Sequences of Functions"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Convergenza puntuale vs convergenza uniforme per successioni di funzioni, norma dell'estremo superiore e preservazione della continuita."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 23 - Pointwise and Uniform Convergence of Sequences of Functions]]

# Lecture 23 - Pointwise and Uniform Convergence of Sequences of Functions

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La convergenza uniforme</b></font></mark> di una successione di funzioni costituisce la nozione corretta di convergenza per garantire che le proprietà analitiche essenziali (come la continuità) si trasmettano dalla successione alla funzione limite. La ventitreesima lezione del corso MIT 18.100A illustra i limiti e i fallimenti della convergenza puntuale, formalizza la convergenza uniforme tramite la norma del sup su spazi di funzioni e dimostra il celeberrimo teorema dell'argomento a tre epsilon: il limite uniforme di funzioni continue è una funzione continua.

## Convergenza Puntuale e i Suoi Limiti

Sia $(f_n)_{n=1}^\infty$ una successione di funzioni reali definite su un insieme comune $E \subseteq \mathbb{R}$.

### Definizione di Convergenza Puntuale
Diciamo che $(f_n)$ <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>converge puntualmente</b></font></mark> (pointwise) a $f: E \to \mathbb{R}$ se per ogni singolo punto fissato $x \in E$:
$$\lim_{n \to \infty} f_n(x) = f(x)$$
ovvero: $\forall x \in E, \forall \varepsilon > 0, \exists N \in \mathbb{N} : \forall n \ge N \implies |f_n(x) - f(x)| < \varepsilon$.
L'indice $N$ dipende sia da $\varepsilon$ sia dal punto specifico $x$.

### Il Fallimento della Continuità Sotto Limite Puntuale
Consideriamo la successione di funzioni continue $f_n: [0, 1] \to \mathbb{R}$ definite da:
$$f_n(x) := x^n$$
Calcoliamo il limite puntuale per ogni $x \in [0, 1]$:
- Se $x \in [0, 1[$: $x^n \to 0$ per $n \to \infty$.
- Se $x = 1$: $1^n = 1 \to 1$.
Dunque la funzione limite è:
$$f(x) = \begin{cases} 0 & \text{se } 0 \le x < 1 \\\\ 1 & \text{se } x = 1 \end{cases}$$
Ciascuna funzione $f_n$ è un polinomio continuo su $[0, 1]$, ma la funzione limite $f(x)$ è **discontinua** in $x = 1$!
La convergenza puntuale non è sufficiente per preservare la continuità.

## La Convergenza Uniforme

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Convergenza Uniforme):</b></font></mark>
La successione di funzioni $(f_n)$ converge **uniformemente** a $f$ su $E$ (scritto $f_n \rightrightarrows f$ o $f_n \to f$ uniformemente) se:
$$\forall \varepsilon > 0, \; \exists N \in \mathbb{N} \text{ tale che } \forall n \ge N, \; \forall x \in E \implies |f_n(x) - f(x)| < \varepsilon$$
L'indice $N$ dipende solo da $\varepsilon$, indipendentemente dal punto $x$.

### Caratterizzazione con la Norma del Sup
Definiamo la **norma dell'estremo superiore** (norma uniforme) su $E$:
$$\|f - g\|_\infty := \sup_{x \in E} |f(x) - g(x)|$$
Allora:
$$f_n \to f \text{ uniformemente su } E \iff \lim_{n \to \infty} \|f_n - f\|_\infty = 0$$

## Teorema di Preservazione della Continuità

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Continuità del Limite Uniforme):</b></font></mark>
Sia $(f_n)$ una successione di funzioni continue su $E$.
Se $f_n \to f$ uniformemente su $E$, allora la funzione limite $f$ è **continua** su $E$.

*Dimostrazione (Argomento $3\varepsilon$):*
Sia $x_0 \in E$ e sia $\varepsilon > 0$. Vogliamo mostrare che esiste $\delta > 0$ tale che $|x - x_0| < \delta \implies |f(x) - f(x_0)| < \varepsilon$.
1. Poiché $f_n \to f$ uniformemente, esiste $N \in \mathbb{N}$ tale che per ogni $x \in E$:
   $$|f_N(x) - f(x)| < \frac{\varepsilon}{3}$$
2. Poiché la funzione $f_N$ è continua in $x_0$, esiste $\delta > 0$ tale che per ogni $x \in E$ con $|x - x_0| < \delta$:
   $$|f_N(x) - f_N(x_0)| < \frac{\varepsilon}{3}$$
3. Per ogni $x \in E$ con $|x - x_0| < \delta$, decomponiamo la differenza con due punti intermedi:
   $$\begin{aligned}
   |f(x) - f(x_0)| &= |f(x) - f_N(x) + f_N(x) - f_N(x_0) + f_N(x_0) - f(x_0)| \\\\
   &\le |f(x) - f_N(x)| + |f_N(x) - f_N(x_0)| + |f_N(x_0) - f(x_0)| \\\\
   &< \frac{\varepsilon}{3} + \frac{\varepsilon}{3} + \frac{\varepsilon}{3} = \varepsilon
   \end{aligned}$$
Dunque $f$ è continua in $x_0$. Essendo $x_0 \in E$ arbitrario, $f$ è continua su tutto $E$.

> [!IMPORTANT] Ritorno al Controesempio $x^n$
> Poiché per $f_n(x) = x^n$ su $[0, 1]$ il limite è discontinuo, ne consegue per contronominale che $x^n$ **non può convergere uniformemente** su $[0, 1]$:
> infatti $\|x^n - f\|_\infty = \sup_{x \in [0, 1[} x^n = 1 \not\to 0$.
