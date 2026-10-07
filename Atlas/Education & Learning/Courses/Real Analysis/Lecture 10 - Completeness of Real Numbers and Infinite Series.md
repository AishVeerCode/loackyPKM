---
status: permanent
type: lecture
area: education
related: ['[[Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem]]', '[[Lecture 11 - Absolute Convergence and the Comparison Test]]']
aliases: ['Lecture 10', 'Real Analysis Lecture 10', '18.100A Lecture 10']
source: "https://www.youtube.com/watch?v=0_w-R_g5lRA"
title: "Lecture 10 - Completeness of Real Numbers and Infinite Series"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Successioni di Cauchy, completezza metrica di R, introduzione alle serie numeriche infinite, condizione necessaria e serie geometrica."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 10 - Completeness of Real Numbers and Infinite Series]]

# Lecture 10 - Completeness of Real Numbers and Infinite Series

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Criterio di Cauchy</b></font></mark> permette di stabilire se una successione converge analizzando esclusivamente le distanze reciproche tra i suoi termini, senza conoscere a priori il valore del limite. La decima lezione del corso MIT 18.100A dimostra che $\mathbb{R}$ è uno spazio metrico completo (ogni successione di Cauchy converge in $\mathbb{R}$), introduce formalmente la teoria delle serie numeriche infinite come limiti delle somme parziali, e dimostra la condizione necessaria di convergenza assieme al calcolo della serie geometrica.

## Successioni di Cauchy e Completezza di $\mathbb{R}$

### Definizione di Successione di Cauchy
Una successione reale $(x_n)$ è detta <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>successione di Cauchy</b></font></mark> se:
$$\forall \varepsilon > 0, \; \exists N \in \mathbb{N} \text{ tale che } \forall n, m \ge N : |x_n - x_m| < \varepsilon$$

Intuizione: i termini della successione si addensano indefinitamente l'uno vicino all'altro man mano che gli indici crescono.

### Lemmi Fondamentali
1. **Ogni successione convergente è di Cauchy:**
   *Dimostrazione:* Sia $x_n \to x$. Dato $\varepsilon > 0$, esiste $N$ tale che $|x_k - x| < \varepsilon/2$ per ogni $k \ge N$.
   Se $n, m \ge N$, per la disuguaglianza triangolare:
   $$|x_n - x_m| \le |x_n - x| + |x - x_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$
2. **Ogni successione di Cauchy è limitata:**
   *Dimostrazione:* Scegliendo $\varepsilon = 1$, esiste $N$ tale che $|x_n - x_N| < 1$ per ogni $n \ge N$. I termini sono controllati da $\max\{|x_1|, \dots, |x_{N-1}|, |x_N| + 1\}$.

### Teorema di Completezza di Cauchy
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema:</b></font></mark> Una successione in $\mathbb{R}$ converge se e solo se è una successione di Cauchy.

*Dimostrazione:*
$(\implies)$ Già dimostrato nel Lemma 1.
$(\impliedby)$ Sia $(x_n)$ una successione di Cauchy.
1. Per il Lemma 2, $(x_n)$ è limitata.
2. Per il Teorema di Bolzano-Weierstrass (Lezione 9), $(x_n)$ ammette una sottosuccessione convergente $(x_{n_k})$ tale che $x_{n_k} \to x \in \mathbb{R}$.
3. Mostriamo che l'intera successione converge allo stesso $x$:
   Sia $\varepsilon > 0$.
   - Poiché $(x_n)$ è di Cauchy, esiste $N_1$ tale che per ogni $n, m \ge N_1$: $|x_n - x_m| < \varepsilon/2$.
   - Poiché $x_{n_k} \to x$, esiste $K$ tale che per ogni $k \ge K$: $|x_{n_k} - x| < \varepsilon/2$.
   Fissiamo un indice $k \ge K$ tale che $n_k \ge N_1$ (possibile perché $n_k \ge k$).
   Allora per ogni $n \ge N_1$, ponendo $m = n_k$:
   $$|x_n - x| \le |x_n - x_{n_k}| + |x_{n_k} - x| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$
Dunque $x_n \to x$. La completezza di $\mathbb{R}$ è provata.

## Introduzione alle Serie Numeriche Infinite

Data una successione di numeri reali $(a_n)_{n=1}^\infty$, definiamo la successione delle sue <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>somme parziali</b></font></mark> $(S_N)_{N=1}^\infty$:
$$S_N := \sum_{n=1}^N a_n = a_1 + a_2 + \dots + a_N$$

### Definizione di Serie
La serie infinita $\sum_{n=1}^\infty a_n$ si dice **convergente** con somma $S \in \mathbb{R}$ se la successione delle somme parziali converge ad $S$:
$$\sum_{n=1}^\infty a_n := \lim_{N \to \infty} S_N = S$$
Se il limite non esiste finito, la serie si dice **divergente**.

### Condizione Necessaria di Convergenza
**Teorema:** Se la serie $\sum_{n=1}^\infty a_n$ converge, allora:
$$\lim_{n \to \infty} a_n = 0$$

*Dimostrazione:*
Sia $S = \lim_{N \to \infty} S_N$. Notiamo che per $n \ge 2$:
$$a_n = S_n - S_{n-1}$$
Passando al limite per $n \to \infty$:
$$\lim_{n \to \infty} a_n = \lim_{n \to \infty} (S_n - S_{n-1}) = \lim_{n \to \infty} S_n - \lim_{n \to \infty} S_{n-1} = S - S = 0$$

> [!WARNING] Criterio di Divergenza
> Se $\lim_{n \to \infty} a_n \neq 0$ (o non esiste), allora la serie $\sum a_n$ **diverge sicuramente**.
> *Attenzione:* Il viceversa è falso! La serie armonica $\sum_{n=1}^\infty \frac{1}{n}$ ha termine generale $1/n \to 0$, ma diverge ad infinito.

### La Serie Geometrica
**Teorema:** Per ogni $q \in \mathbb{R}$, la serie geometrica $\sum_{n=0}^\infty q^n$:
1. Converge a $\dfrac{1}{1 - q}$ se e solo se $|q| < 1$.
2. Diverge se $|q| \ge 1$.

*Dimostrazione:*
La somma parziale è $S_N = \sum_{n=0}^N q^n = \frac{1 - q^{N+1}}{1 - q}$ per $q \neq 1$.
Se $|q| < 1$, $q^{N+1} \to 0$ per $N \to \infty$, dunque $S_N \to \frac{1}{1 - q}$.
Se $|q| \ge 1$, il termine generale $q^n$ non tende a zero, dunque la serie diverge.
