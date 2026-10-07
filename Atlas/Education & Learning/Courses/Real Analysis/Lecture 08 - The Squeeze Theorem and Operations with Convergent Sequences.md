---
status: permanent
type: lecture
area: education
related: ['[[Lecture 07 - Convergent Sequences of Real Numbers]]', '[[Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem]]']
aliases: ['Lecture 8', 'Real Analysis Lecture 8', '18.100A Lecture 8']
source: "https://www.youtube.com/watch?v=os_XGBNPllM"
title: "Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Algebra dei limiti di successioni, teorema del confronto dei carabinieri, conservazione delle disuguaglianze e convergenza monotona."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]]

# Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'algebra dei limiti</b></font></mark> consente di calcolare il comportamento asintotico di espressioni complesse decomponendole nelle loro componenti elementari. L'ottava lezione del corso MIT 18.100A dimostra la linearità e la moltiplicatività del limite per successioni convergenti, dimostra il fondamentale Teorema del Confronto (Squeeze Theorem o Teorema dei Carabinieri), analizza la conservazione delle disuguaglianze deboli e culmina nel Teorema di Convergenza Monotona, che lega le successioni crescenti e decrescenti alla completezza di $\mathbb{R}$.

## Algebra dei Limiti di Successioni

**Teorema:** Siano $(x_n)$ e $(y_n)$ due successioni convergenti con $x_n \to x$ e $y_n \to y$. Allora:
1. $\lim_{n \to \infty} (x_n + y_n) = x + y$
2. $\lim_{n \to \infty} (c \cdot x_n) = c \cdot x$ per ogni costante $c \in \mathbb{R}$
3. $\lim_{n \to \infty} (x_n \cdot y_n) = x \cdot y$
4. Se $y \neq 0$ e $y_n \neq 0$ per ogni $n$, allora $\lim_{n \to \infty} \frac{1}{y_n} = \frac{1}{y}$ e $\lim_{n \to \infty} \frac{x_n}{y_n} = \frac{x}{y}$.

### Dimostrazioni
- **Somma:** Sia $\varepsilon > 0$. Esistono $N_1, N_2$ tali che $|x_n - x| < \varepsilon/2$ per $n \ge N_1$ e $|y_n - y| < \varepsilon/2$ per $n \ge N_2$.
  Sia $N = \max\{N_1, N_2\}$. Per ogni $n \ge N$:
  $$|(x_n + y_n) - (x + y)| = |(x_n - x) + (y_n - y)| \le |x_n - x| + |y_n - y| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$
- **Prodotto:** Riscriviamo il termine aggiungendo e sottraendo $x_n y$:
  $$|x_n y_n - xy| = |x_n(y_n - y) + y(x_n - x)| \le |x_n||y_n - y| + |y||x_n - x|$$
  Poiché $(x_n)$ converge, essa è limitata: esiste $M > 0$ tale che $|x_n| \le M$ per ogni $n$.
  Dato $\varepsilon > 0$:
  - esiste $N_1$ tale che $|y_n - y| < \frac{\varepsilon}{2M}$ per $n \ge N_1$.
  - esiste $N_2$ tale che $|x_n - x| < \frac{\varepsilon}{2(|y| + 1)}$ per $n \ge N_2$.
  Per $n \ge \max\{N_1, N_2\}$, sommando le due stime si ottiene $|x_n y_n - xy| < \varepsilon$.
- **Reciproco:** Poiché $y \neq 0$, scegliamo $\varepsilon_0 = |y|/2 > 0$. Esiste $N_1$ tale che $|y_n - y| < |y|/2$ per ogni $n \ge N_1$.
  Ne segue $|y_n| \ge |y| - |y_n - y| > |y|/2 > 0$. Allora per $n \ge N_1$:
  $$\left|\frac{1}{y_n} - \frac{1}{y}\right| = \frac{|y - y_n|}{|y_n||y|} \le \frac{|y_n - y|}{\frac{|y|}{2} |y|} = \frac{2}{|y|^2} |y_n - y|$$
  Poiché $|y_n - y| \to 0$, anche $\frac{1}{y_n} \to \frac{1}{y}$.

## Teorema del Confronto (Squeeze Theorem)

**Teorema (dei Carabinieri):** Siano $(a_n)$, $(b_n)$, $(c_n)$ tre successioni reali tali che:
$$a_n \le b_n \le c_n \qquad \forall n \ge N_0$$
Se $\lim_{n \to \infty} a_n = L$ e $\lim_{n \to \infty} c_n = L$, allora anche $(b_n)$ converge e:
$$\lim_{n \to \infty} b_n = L$$

*Dimostrazione:*
Sia $\varepsilon > 0$.
- Esiste $N_1$ tale che per ogni $n \ge N_1$: $L - \varepsilon < a_n < L + \varepsilon$.
- Esiste $N_2$ tale che per ogni $n \ge N_2$: $L - \varepsilon < c_n < L + \varepsilon$.
Per $n \ge N := \max\{N_0, N_1, N_2\}$, combinando con l'ipotesi d'ordine:
$$L - \varepsilon < a_n \le b_n \le c_n < L + \varepsilon \implies L - \varepsilon < b_n < L + \varepsilon \implies |b_n - L| < \varepsilon$$
Dunque $b_n \to L$.

### Conservazione dell'Ordine nel Limite
**Teorema:** Se $x_n \to x$ e $y_n \to y$, e se $x_n \le y_n$ per ogni $n$, allora:
$$x \le y$$
*Attenzione:* Le disuguaglianze *strette* non si conservano nel limite ($x_n < y_n \not\implies x < y$, es. $0 < 1/n$ ma $\lim 0 = \lim 1/n = 0$).

## Teorema di Convergenza Monotona

Una successione $(x_n)$ si dice **monotona crescente** se $x_1 \le x_2 \le x_3 \le \dots$ (ovvero $x_n \le x_{n+1}$ per ogni $n$).
Si dice **monotona decrescente** se $x_1 \ge x_2 \ge x_3 \ge \dots$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Convergenza Monotona (MCT):</b></font></mark>
Una successione reale monotona converge se e solo se è limitata.
Più precisamente:
1. Se $(x_n)$ è crescente e limitata superiormente, allora:
   $$\lim_{n \to \infty} x_n = \sup \{x_n \mid n \in \mathbb{N}\}$$
2. Se $(x_n)$ è decrescente e limitata inferiormente, allora:
   $$\lim_{n \to \infty} x_n = \inf \{x_n \mid n \in \mathbb{N}\}$$

*Dimostrazione del punto 1:*
Sia $S = \{x_n \mid n \in \mathbb{N}\}$. Poiché $S \neq \emptyset$ ed è superiormente limitato, per l'Assioma di Completezza di $\mathbb{R}$ esiste $L := \sup S \in \mathbb{R}$.
Mostriamo che $x_n \to L$. Sia $\varepsilon > 0$.
Poiché $L = \sup S$, $L - \varepsilon$ non è maggiorante per $S$. Esiste dunque un indice $N \in \mathbb{N}$ tale che:
$$x_N > L - \varepsilon$$
Poiché la successione è monotona crescente, per ogni $n \ge N$ abbiamo:
$$L - \varepsilon < x_N \le x_n \le L < L + \varepsilon$$
Ne segue che per ogni $n \ge N$: $|x_n - L| < \varepsilon$. Dunque $x_n \to L$.
