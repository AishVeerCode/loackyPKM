---
status: permanent
type: lecture
area: education
related: ['[[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]]', '[[Lecture 10 - Completeness of Real Numbers and Infinite Series]]']
aliases: ['Lecture 9', 'Real Analysis Lecture 9', '18.100A Lecture 9']
source: "https://www.youtube.com/watch?v=Xn8wL2ItzZw"
title: "Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Sottosuccessioni, teorema di Bolzano-Weierstrass per successioni limitate, definizione e proprieta di limsup e liminf."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem]]

# Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Teorema di Bolzano-Weierstrass</b></font></mark> rappresenta uno dei pilastri dell'analisi reale e della topologia metrica, garantendo che ogni successione limitata di numeri reali ammetta almeno una sottosuccessione convergente. La nona lezione del corso MIT 18.100A introduce la formalizzazione delle sottosuccessioni, dimostra Bolzano-Weierstrass tramite il metodo della bisezione e introduce i concetti cardine di limite superiore ($\limsup$) e limite inferiore ($\liminf$) come punti limite estremi di ogni successione limitata.

## Sottosuccessioni

Sia $(x_n)_{n=1}^\infty$ una successione reale.
Una <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>sottosuccessione</b></font></mark> di $(x_n)$ è la restrizione della successione a una sequenza infinita di indici strettamente crescenti:
$$n_1 < n_2 < n_3 < \dots < n_k < \dots \qquad (n_k \in \mathbb{N})$$
La sottosuccessione è denotata con $(x_{n_k})_{k=1}^\infty$.
Nota: per induzione si verifica facilmente che $n_k \ge k$ per ogni $k \in \mathbb{N}$.

**Proposizione:** Se una successione $(x_n)$ converge a $x$, allora ogni sua sottosuccessione $(x_{n_k})$ converge allo stesso limite $x$.
*Dimostrazione:* Sia $\varepsilon > 0$. Esiste $N$ tale che $|x_n - x| < \varepsilon$ per ogni $n \ge N$.
Poiché $n_k \ge k$, per ogni $k \ge N$ si ha $n_k \ge k \ge N$, dunque $|x_{n_k} - x| < \varepsilon$.

## Il Teorema di Bolzano-Weierstrass

Anche quando una successione non converge (come $(-1)^n$), essa può contenere sottosuccessioni che convergono (es. per indici pari $(-1)^{2k} = 1 \to 1$).

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Bolzano-Weierstrass:</b></font></mark>
Ogni successione reale limitata ammette almeno una sottosuccessione convergente.

*Dimostrazione (Metodo di Bisezione):*
Sia $(x_n)$ una successione limitata. Allora tutti i suoi termini sono contenuti in un intervallo chiuso e limitato $[a_1, b_1]$ di lunghezza $L_1 = b_1 - a_1$.
1. Dividiamo $[a_1, b_1]$ a metà nel punto medio $m_1 = \frac{a_1 + b_1}{2}$, ottenendo i due sottointervalli $[a_1, m_1]$ e $[m_1, b_1]$.
   Almeno uno dei due intervalli deve contenere infiniti termini della successione $(x_n)$.
   Scegliamo tale intervallo e chiamiamolo $[a_2, b_2]$. Scegliamo un elemento $x_{n_1} \in [a_1, b_1]$.
2. Dividiamo $[a_2, b_2]$ a metà; almeno una delle due metà contiene infiniti termini. Denotiamo questo intervallo con $[a_3, b_3]$, e scegliamo un indice $n_2 > n_1$ tale che $x_{n_2} \in [a_2, b_2]$.
3. Iterando indefinitamente questo procedimento per induzione, costruiamo una successione di intervalli chiusi incapsulati:
   $$[a_1, b_1] \supseteq [a_2, b_2] \supseteq [a_3, b_3] \supseteq \dots \supseteq [a_k, b_k] \supseteq \dots$$
   e una sottosuccessione $(x_{n_k})$ tale che $x_{n_k} \in [a_k, b_k]$ con $n_1 < n_2 < \dots < n_k$.
La successione degli estremi sinistri $(a_k)$ è crescente e limitata superiormente da $b_1$, quindi per il Teorema di Convergenza Monotona converge: $a_k \to x$.
La lunghezza di $[a_k, b_k]$ è $b_k - a_k = \frac{b_1 - a_1}{2^{k-1}} \to 0$.
Dunque anche $b_k = a_k + (b_k - a_k) \to x$.
Poiché per ogni $k$:
$$a_k \le x_{n_k} \le b_k$$
applicando il Teorema del Confronto (Squeeze Theorem), concludiamo che la sottosuccessione $(x_{n_k})$ converge ad $x$:
$$\lim_{k \to \infty} x_{n_k} = x$$
Il teorema è dimostrato.

## Limite Superiore ($\limsup$) e Limite Inferiore ($\liminf$)

Sia $(x_n)$ una successione limitata. Per ogni $k \in \mathbb{N}$, definiamo gli estremi delle "code":
$$y_k := \sup \{x_n \mid n \ge k\} = \sup_{n \ge k} x_n, \qquad z_k := \inf \{x_n \mid n \ge k\} = \inf_{n \ge k} x_n$$
- Poiché l'insieme su cui si calcola il sup diventa più piccolo al crescere di $k$, la successione $(y_k)$ è **monotona decrescente** e limitata inferiormente.
- Analogamente, la successione $(z_k)$ è **monotona crescente** e limitata superiormente.

Per il Teorema di Convergenza Monotona, entrambe le successioni ammettono limite finito:

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Superiore:</b></font></mark>
  $$\limsup_{n \to \infty} x_n := \lim_{k \to \infty} y_k = \lim_{k \to \infty} \left(\sup_{n \ge k} x_n\right) = \inf_{k \ge 1} \left(\sup_{n \ge k} x_n\right)$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Inferiore:</b></font></mark>
  $$\liminf_{n \to \infty} x_n := \lim_{k \to \infty} z_k = \lim_{k \to \infty} \left(\inf_{n \ge k} x_n\right) = \sup_{k \ge 1} \left(\inf_{n \ge k} x_n\right)$$

### Proprietà Fondamentali
1. $\liminf_{n \to \infty} x_n \le \limsup_{n \to \infty} x_n$.
2. $\limsup x_n$ è il **massimo** valore limite ottenibile da qualsiasi sottosuccessione convergente di $(x_n)$, e $\liminf x_n$ è il **minimo**.
3. **Criterio di Convergenza:** Una successione limitata $(x_n)$ converge se e solo se:
   $$\liminf_{n \to \infty} x_n = \limsup_{n \to \infty} x_n = L$$
   in tal caso $\lim_{n \to \infty} x_n = L$.
