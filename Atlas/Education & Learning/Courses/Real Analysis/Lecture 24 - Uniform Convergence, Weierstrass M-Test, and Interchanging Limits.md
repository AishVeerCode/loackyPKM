---
status: permanent
type: lecture
area: education
related: ['[[Lecture 23 - Pointwise and Uniform Convergence of Sequences of Functions]]', '[[Lecture 25 - Power Series and the Weierstrass Approximation Theorem]]']
aliases: ['Lecture 24', 'Real Analysis Lecture 24', '18.100A Lecture 24']
source: "https://www.youtube.com/watch?v=gXPX29KfEc4"
title: "Lecture 24 - Uniform Convergence, Weierstrass M-Test, and Interchanging Limits"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Scambio tra integrale e limite, criterio M di Weierstrass per serie di funzioni e condizioni per lo scambio di derivata e limite."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 24 - Uniform Convergence, Weierstrass M-Test, and Interchanging Limits]]

# Lecture 24 - Uniform Convergence, Weierstrass M-Test, and Interchanging Limits

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'interscambio dei limiti</b></font></mark> rappresenta una delle questioni più delicate e cruciali dell'analisi, consentendo di integrare e derivare serie di funzioni termine a termine. La ventiquattresima lezione del corso MIT 18.100A dimostra che la convergenza uniforme autorizza il passaggio al limite sotto il segno di integrale, introduce il potentissimo Criterio M di Weierstrass per la convergenza totale di serie funzionali e stabilisce il teorema rigoroso per lo scambio tra derivata e limite.

## Integrazione e Convergenza Uniforme

**Teorema (Scambio tra Limite e Integrale):**
Sia $(f_n)$ una successione di funzioni integrabili secondo Riemann su $[a, b]$.
Se $f_n \to f$ uniformemente su $[a, b]$, allora:
1. $f$ è integrabile su $[a, b]$ ($f \in \mathcal{R}([a, b])$).
2. Vale la formula di scambio:
   $$\lim_{n \to \infty} \int_a^b f_n(x) dx = \int_a^b \left(\lim_{n \to \infty} f_n(x)\right) dx = \int_a^b f(x) dx$$

*Dimostrazione:*
Sia $\varepsilon > 0$. Poiché $f_n \to f$ uniformemente, esiste $N \in \mathbb{N}$ tale che per ogni $n \ge N$:
$$\|f_n - f\|_\infty = \sup_{x \in [a, b]} |f_n(x) - f(x)| < \frac{\varepsilon}{b - a}$$
Allora per ogni $n \ge N$:
$$\left| \int_a^b f_n(x) dx - \int_a^b f(x) dx \right| = \left| \int_a^b \big(f_n(x) - f(x)\big) dx \right| \le \int_a^b |f_n(x) - f(x)| dx \le \frac{\varepsilon}{b - a} (b - a) = \varepsilon$$
Dunque la successione numerica degli integrali converge all'integrale del limite.

## Il Criterio M di Weierstrass per Serie di Funzioni

Sia $\sum_{n=1}^\infty u_n(x)$ una serie di funzioni definite su $E$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Weierstrass M-Test):</b></font></mark>
Supponiamo che per ogni $n \in \mathbb{N}$ esista una costante numerica $M_n \ge 0$ tale che:
$$|u_n(x)| \le M_n \qquad \forall x \in E$$
Se la serie numerica $\sum_{n=1}^\infty M_n$ converge, allora:
la serie di funzioni $\sum_{n=1}^\infty u_n(x)$ converge **assolutamente e uniformemente** su $E$.

*Dimostrazione (Criterio di Cauchy Uniforme):*
Sia $\varepsilon > 0$. Poiché la serie numerica converge, per il criterio di Cauchy numerico esiste $N$ tale che per ogni $m \ge n \ge N$:
$$\sum_{k=n}^m M_k < \varepsilon$$
Allora per ogni $x \in E$:
$$\left| \sum_{k=n}^m u_k(x) \right| \le \sum_{k=n}^m |u_k(x)| \le \sum_{k=n}^m M_k < \varepsilon$$
La successione delle somme parziali soddisfa il criterio di Cauchy uniforme su $E$, dunque converge uniformemente.

## Derivazione e Limiti di Funzioni

Attenzione: la convergenza uniforme di $(f_n)$ **non garantisce** che $(f_n')$ converga a $f'$!
*(Controesempio: $f_n(x) = \frac{\sin(n^2 x)}{n} \to 0$ uniformemente, ma $f_n'(x) = n \cos(n^2 x)$ non converge).*

<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Teorema (Derivazione Termine a Termine):</b></font></mark>
Sia $(f_n)$ derivabile su $[a, b]$. Supponiamo che:
1. Esista un punto $x_0 \in [a, b]$ tale che la successione numerica $(f_n(x_0))$ converge.
2. La successione delle derivate $(f_n')$ converga **uniformemente** su $[a, b]$ a una funzione $g$.
Allora $(f_n)$ converge uniformemente su $[a, b]$ a una funzione derivabile $f$, e vale:
$$f'(x) = g(x) = \lim_{n \to \infty} f_n'(x) \qquad \forall x \in [a, b]$$
