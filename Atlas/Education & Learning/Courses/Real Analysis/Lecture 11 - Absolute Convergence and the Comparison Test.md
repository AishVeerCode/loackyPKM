---
status: permanent
type: lecture
area: education
related: ['[[Lecture 10 - Completeness of Real Numbers and Infinite Series]]', '[[Lecture 12 - Ratio, Root, and Alternating Series Tests]]']
aliases: ['Lecture 11', 'Real Analysis Lecture 11', '18.100A Lecture 11']
source: "https://www.youtube.com/watch?v=RzSp9nIFnbo"
title: "Lecture 11 - Absolute Convergence and the Comparison Test"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Convergenza assoluta e convergenza semplice, criterio del confronto per serie numeriche e divergenza della serie armonica."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 11 - Absolute Convergence and the Comparison Test]]

# Lecture 11 - Absolute Convergence and the Comparison Test

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La convergenza assoluta</b></font></mark> rappresenta la forma più robusta di convergenza per le serie numeriche infinite, garantendo la stabilità della somma rispetto a qualsiasi riordinamento dei termini. L'undicesima lezione del corso MIT 18.100A dimostra che ogni serie assolutamente convergente è convergente nel senso ordinario, introduce il Criterio del Confronto per serie a termini non negativi ed analizza la celebre divergenza della serie armonica attraverso la condensazione di Cauchy.

## Convergenza Assoluta e Convergenza Semplice

Sia $\sum_{n=1}^\infty a_n$ una serie di numeri reali.

### Definizioni
- La serie $\sum_{n=1}^\infty a_n$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>assolutamente convergente</b></font></mark> se converge la serie dei valori assoluti:
  $$\sum_{n=1}^\infty |a_n| < \infty$$
- Se $\sum a_n$ converge ma $\sum |a_n|$ diverge, la serie si dice **condizionatamente convergente**.

### Teorema Fondamentale
**Teorema:** Se una serie converge assolutamente, allora converge semplicemente:
$$\sum_{n=1}^\infty |a_n| < \infty \implies \sum_{n=1}^\infty a_n \text{ converge, e } \left|\sum_{n=1}^\infty a_n\right| \le \sum_{n=1}^\infty |a_n|$$

*Dimostrazione (tramite il Criterio di Cauchy):*
Per il Criterio di Cauchy per le serie, $\sum a_n$ converge se e solo se la successione delle somme parziali è di Cauchy:
$$\forall \varepsilon > 0, \exists N \in \mathbb{N} : \forall m \ge n \ge N \implies \left|\sum_{k=n}^m a_k\right| < \varepsilon$$
Poiché per ipotesi $\sum |a_n|$ converge, essa soddisfa il criterio di Cauchy: per ogni $\varepsilon > 0$ esiste $N$ tale che per $m \ge n \ge N$:
$$\sum_{k=n}^m |a_k| < \varepsilon$$
Applicando la disuguaglianza triangolare generalizzata:
$$\left|\sum_{k=n}^m a_k\right| \le \sum_{k=n}^m |a_k| < \varepsilon$$
Dunque anche la serie $\sum a_n$ soddisfa il criterio di Cauchy ed è pertanto convergente in $\mathbb{R}$.

## Il Criterio del Confronto (Comparison Test)

Per serie a termini non negativi ($a_n \ge 0$), la successione delle somme parziali $S_N = \sum_{n=1}^N a_n$ è monotona crescente.
Dal Teorema di Convergenza Monotona discende che:
$$\sum_{n=1}^\infty a_n \text{ converge } \iff (S_N) \text{ è limitata superiormente}$$

### Enunciato del Criterio
<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Teorema (Criterio del Confronto):</b></font></mark>
Siano $(a_n)$ e $(b_n)$ successioni reali tali che $0 \le a_n \le b_n$ per ogni $n \ge N_0$.
1. Se $\sum_{n=1}^\infty b_n$ converge, allora $\sum_{n=1}^\infty a_n$ **converge**.
2. Se $\sum_{n=1}^\infty a_n$ diverge, allora $\sum_{n=1}^\infty b_n$ **diverge**.

*Dimostrazione:*
Siano $S_N = \sum_{n=1}^N a_n$ e $T_N = \sum_{n=1}^N b_n$. Per $N \ge N_0$, $S_N \le T_N + C$.
Se $\sum b_n$ converge a $B$, allora $S_N \le B + C$, quindi $(S_N)$ è limitata superiormente e monotona, dunque converge. Se $(S_N)$ non è limitata, neanche $(T_N)$ può esserlo.

## Divergenza della Serie Armonica

La serie armonica $\sum_{n=1}^\infty \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots$ ha termine generale $1/n \to 0$, ma diverge.

**Teorema:** La serie armonica diverge ad infinito.
*Dimostrazione (Metodo di Raggruppamento di Oresme):*
Consideriamo le somme parziali con indici potenze di $2$:
$$\begin{aligned}
S_{2^k} &= 1 + \frac{1}{2} + \left(\frac{1}{3} + \frac{1}{4}\right) + \left(\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}\right) + \dots + \sum_{j=2^{k-1}+1}^{2^k} \frac{1}{j} \\\\
&> 1 + \frac{1}{2} + \left(\frac{1}{4} + \frac{1}{4}\right) + \left(\frac{1}{8} + \frac{1}{8} + \frac{1}{8} + \frac{1}{8}\right) + \dots + 2^{k-1} \cdot \frac{1}{2^k} \\\\
&= 1 + \frac{1}{2} + \frac{1}{2} + \frac{1}{2} + \dots + \frac{1}{2} = 1 + \frac{k}{2}
\end{aligned}$$
Poiché $1 + \frac{k}{2} \to +\infty$ per $k \to \infty$, la successione delle somme parziali non è limitata.
Dunque la serie armonica diverge.
