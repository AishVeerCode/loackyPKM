---
status: permanent
type: lecture
area: education
related: ['[[Lecture 11 - Absolute Convergence and the Comparison Test]]', '[[Lecture 13 - Limits of Functions]]']
aliases: ['Lecture 12', 'Real Analysis Lecture 12', '18.100A Lecture 12']
source: "https://www.youtube.com/watch?v=ZjjpLMKs7Tc"
title: "Lecture 12 - Ratio, Root, and Alternating Series Tests"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Criterio della radice di Cauchy, criterio del rapporto di D'Alembert, serie a segni alterni di Leibniz e riordinamento di Riemann."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 12 - Ratio, Root, and Alternating Series Tests]]

# Lecture 12 - Ratio, Root, and Alternating Series Tests

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>I criteri asintotici di convergenza</b></font></mark> consentono di determinare la sommabilità di serie numeriche confrontando i loro termini con la serie geometrica. La dodicesima lezione del corso MIT 18.100A dimostra il Criterio della Radice di Cauchy ed il Criterio del Rapporto di D'Alembert attraverso il limite superiore ($\limsup$), formalizza il Criterio di Leibniz per serie a segni alterni con relativa stima del resto ed illustra il Teorema di Riemann sui riordinamenti per serie condizionatamente convergenti.

## Il Criterio della Radice (Root Test)

Il criterio della radice di Cauchy confronta la velocità asintotica di decadimento dei termini con una progressione geometrica.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Criterio della Radice di Cauchy):</b></font></mark>
Sia $\sum_{n=1}^\infty a_n$ una serie reale e poniamo:
$$\alpha := \limsup_{n \to \infty} \sqrt[n]{|a_n|}$$
1. Se $\alpha < 1$, la serie converge **assolutamente**.
2. Se $\alpha > 1$, la serie **diverge**.
3. Se $\alpha = 1$, il criterio è inconcludente.

*Dimostrazione:*
1. Se $\alpha < 1$, scegliamo un numero $r$ tale che $\alpha < r < 1$.
   Per definizione di $\limsup$, esiste $N \in \mathbb{N}$ tale che per ogni $n \ge N$:
   $$\sqrt[n]{|a_n|} < r \implies |a_n| < r^n$$
   Poiché $r < 1$, la serie geometrica $\sum r^n$ converge. Per il Criterio del Confronto, $\sum |a_n|$ converge.
2. Se $\alpha > 1$, esiste una sottosuccessione infinita per cui $\sqrt[n_k]{|a_{n_k}|} > 1 \implies |a_{n_k}| > 1$.
   Il termine generale $a_n$ non tende a zero, dunque la serie diverge.
3. Se $\alpha = 1$, consideriamo $\sum 1/n$ (diverge, $\sqrt[n]{1/n} \to 1$) e $\sum 1/n^2$ (converge, $\sqrt[n]{1/n^2} \to 1$).

## Il Criterio del Rapporto (Ratio Test)

**Teorema (Criterio del Rapporto di D'Alembert):**
Sia $\sum a_n$ una serie a termini non nulli.
1. Se $\limsup_{n \to \infty} \left|\frac{a_{n+1}}{a_n}\right| < 1$, la serie converge assolutamente.
2. Se esiste $N$ tale che $\left|\frac{a_{n+1}}{a_n}\right| \ge 1$ per ogni $n \ge N$, la serie diverge.

*Nota comparativa:* Se il criterio del rapporto converge, converge anche la radice; la radice è tuttavia strettamente più potente del rapporto (può decidere serie dove il rapporto oscilla).

## Il Criterio di Leibniz per Serie a Segni Alterni

Una serie a segni alterni ha la forma $\sum_{n=1}^\infty (-1)^{n+1} b_n$ con $b_n \ge 0$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Criterio di Leibniz):</b></font></mark>
Sia $(b_n)$ una successione reale tale che:
1. $b_n \ge b_{n+1} \ge 0$ per ogni $n$ (monotona decrescente)
2. $\lim_{n \to \infty} b_n = 0$

Allora la serie $\sum_{n=1}^\infty (-1)^{n+1} b_n$ converge. Inoltre la somma $S$ soddisfa la **stima del resto**:
$$|S - S_N| \le b_{N+1} \qquad \forall N \ge 1$$

*Dimostrazione:*
Consideriamo le somme parziali pari $S_{2k}$:
$$S_{2k+2} = S_{2k} + (b_{2k+1} - b_{2k+2}) \ge S_{2k}$$
Dunque $(S_{2k})$ è monotona crescente. Inoltre $S_{2k} = b_1 - (b_2 - b_3) - \dots - b_{2k} \le b_1$, quindi è limitata superiormente.
Per il Teorema di Convergenza Monotona, $S_{2k} \to S$.
Analogamente, $S_{2k+1} = S_{2k} + b_{2k+1} \to S + 0 = S$. Le due sottosuccessioni convergono allo stesso limite $S$.

## Il Teorema di Riordinamento di Riemann

Se una serie è assolutamente convergente, ogni permutazione dei suoi termini converge alla stessa somma. Al contrario:

**Teorema di Riemann:** Se $\sum a_n$ converge condizionatamente, per ogni $L \in [-\infty, +\infty]$ esiste una permutazione $\sigma: \mathbb{N} \to \mathbb{N}$ tale che:
$$\sum_{n=1}^\infty a_{\sigma(n)} = L$$
Questo evidenzia la natura patologica della convergenza condizionata.
