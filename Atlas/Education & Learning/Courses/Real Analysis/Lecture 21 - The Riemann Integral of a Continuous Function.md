---
status: permanent
type: lecture
area: education
related: ["[[Lecture 20 - Taylor's Theorem and Definition of Riemann Sums]]", '[[Lecture 22 - Fundamental Theorem of Calculus and Change of Variables]]']
aliases: ['Lecture 21', 'Real Analysis Lecture 21', '18.100A Lecture 21']
source: "https://www.youtube.com/watch?v=QeYUHA0UMVg"
title: "Lecture 21 - The Riemann Integral of a Continuous Function"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Integrale di Riemann, somme di Darboux, criterio di integrabilita e dimostrazione dell'integrabilita delle funzioni continue sui compatti."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 21 - The Riemann Integral of a Continuous Function]]

# Lecture 21 - The Riemann Integral of a Continuous Function

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'integrale di Riemann</b></font></mark> formalizza la nozione di area sottesa al grafico di una funzione limitata su un intervallo compatto $[a, b]$ attraverso l'approssimazione mediante somme di Darboux inferiori e superiori. La ventunesima lezione del corso MIT 18.100A stabilisce il criterio analitico di Riemann e dimostra il teorema fondamentale dell'integrazione: ogni funzione continua su un intervallo chiuso e limitato è integrabile secondo Riemann, sfruttando la continuità uniforme garantita dal Teorema di Heine-Cantor.

## Le Somme di Darboux e l'Integrale di Riemann

Sia $f: [a, b] \to \mathbb{R}$ una funzione limitata ($m \le f(x) \le M$).
Data una partizione $P = \{a = x_0 < x_1 < \dots < x_n = b\}$, ricordiamo le somme di Darboux introdotte nella Lezione 20:
$$L(f, P) = \sum_{i=1}^n m_i \Delta x_i, \qquad U(f, P) = \sum_{i=1}^n M_i \Delta x_i$$
dove $m_i = \inf_{[x_{i-1}, x_i]} f(x)$ e $M_i = \sup_{[x_{i-1}, x_i]} f(x)$.

### Raffinamento delle Partizioni
Diciamo che $P^*$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>raffinamento</b></font></mark> di $P$ se $P \subseteq P^*$.
**Lemma:** Se $P \subseteq P^*$, allora:
$$L(f, P) \le L(f, P^*) \le U(f, P^*) \le U(f, P)$$
*Dimostrazione:* Aggiungendo un punto $c \in ]x_{i-1}, x_i[$, l'infimum sui due sottointervalli non può diminuire rispetto a quello sull'intervallo intero, quindi la somma inferiore cresce. Similmente la somma superiore decresce.

**Corollario:** Per ogni coppia di partizioni arbitrarie $P_1, P_2$ di $[a, b]$:
$$L(f, P_1) \le U(f, P_2)$$
*(Dimostrazione: basta considerare la partizione comune raffinata $P^* = P_1 \cup P_2$).*

### Integrale Inferiore e Superiore di Darboux
Definiamo:
- **Integrale inferiore:** $\underline{\int_a^b} f(x) dx := \sup_{P} L(f, P)$
- **Integrale superiore:** $\overline{\int_a^b} f(x) dx := \inf_{P} U(f, P)$
Dal corollario precedente segue sempre che $\underline{\int_a^b} f \le \overline{\int_a^b} f$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Integrabilità di Riemann):</b></font></mark>
Una funzione limitata $f: [a, b] \to \mathbb{R}$ si dice **integrabile secondo Riemann** (e si scrive $f \in \mathcal{R}([a, b])$) se l'integrale inferiore e superiore coincidono:
$$\underline{\int_a^b} f(x) dx = \overline{\int_a^b} f(x) dx$$
Il loro valore comune viene denotato con $\int_a^b f(x) dx$.

## Il Criterio di Integrabilità di Riemann

<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Teorema (Criterio di Riemann):</b></font></mark>
Una funzione limitata $f: [a, b] \to \mathbb{R}$ è integrabile secondo Riemann se e solo se:
$$\forall \varepsilon > 0, \; \exists P \text{ partizione di } [a, b] \text{ tale che } U(f, P) - L(f, P) < \varepsilon$$

*Dimostrazione:*
- $(\impliedby)$ Per ogni partizione $P$, vale $L(f, P) \le \underline{\int} f \le \overline{\int} f \le U(f, P)$.
  Sottraendo, $0 \le \overline{\int} f - \underline{\int} f \le U(f, P) - L(f, P) < \varepsilon$.
  Essendo $\varepsilon > 0$ arbitrario, $\overline{\int} f = \underline{\int} f$, quindi $f \in \mathcal{R}([a, b])$.
- $(\implies)$ Se $f$ è integrabile, sia $I = \int_a^b f$. Per definizione di sup e inf, esistono partizioni $P_1, P_2$ con $I - L(f, P_1) < \varepsilon/2$ e $U(f, P_2) - I < \varepsilon/2$. Posto $P = P_1 \cup P_2$, si ottiene $U(f, P) - L(f, P) < \varepsilon$.

## Teorema di Integrabilità delle Funzioni Continue

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema Fondamentale:</b></font></mark>
Ogni funzione continua $f: [a, b] \to \mathbb{R}$ è integrabile secondo Riemann su $[a, b]$.

*Dimostrazione:*
Sia $\varepsilon > 0$.
1. Poiché $f$ è continua sul compatto $[a, b]$, per il **Teorema di Heine-Cantor** (Lezione 17), $f$ è **uniformemente continua** su $[a, b]$.
2. Esiste dunque $\delta > 0$ tale che per ogni $x, y \in [a, b]$:
   $$|x - y| < \delta \implies |f(x) - f(y)| < \frac{\varepsilon}{b - a}$$
3. Scegliamo una qualsiasi partizione $P = \{x_0, x_1, \dots, x_n\}$ con calibro $\|P\| < \delta$.
   Su ciascun sottointervallo compatto $[x_{i-1}, x_i]$, per il Teorema dei Valori Estremi (Lezione 16), esistono punti $s_i, t_i$ in cui $f$ raggiunge minimo e massimo: $f(s_i) = m_i$ e $f(t_i) = M_i$.
   Poiché $|s_i - t_i| \le \Delta x_i \le \|P\| < \delta$, si ha:
   $$M_i - m_i = f(t_i) - f(s_i) < \frac{\varepsilon}{b - a}$$
4. Calcoliamo la differenza tra somma superiore e inferiore:
   $$U(f, P) - L(f, P) = \sum_{i=1}^n (M_i - m_i) \Delta x_i < \frac{\varepsilon}{b - a} \sum_{i=1}^n \Delta x_i = \frac{\varepsilon}{b - a} (b - a) = \varepsilon$$
Per il Criterio di Riemann, $f$ è integrabile su $[a, b]$.

## Proprietà Fondamentali dell'Integrale

Siano $f, g \in \mathcal{R}([a, b])$:
1. **Linearità:** $\int_a^b (\alpha f + \beta g) = \alpha \int_a^b f + \beta \int_a^b g$.
2. **Monotonia:** Se $f(x) \le g(x)$ per ogni $x \in [a, b]$, allora $\int_a^b f \le \int_a^b g$.
3. **Disuguaglianza triangolare metrica:** $\left| \int_a^b f(x) dx \right| \le \int_a^b |f(x)| dx$.
4. **Additività sul dominio:** Per ogni $c \in ]a, b[$: $\int_a^b f = \int_a^c f + \int_c^b f$.
