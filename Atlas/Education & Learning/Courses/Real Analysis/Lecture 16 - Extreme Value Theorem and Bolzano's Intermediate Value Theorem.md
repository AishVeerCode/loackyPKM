---
status: permanent
type: lecture
area: education
related: ["[[Lecture 15 - Continuity of Sine and Cosine and Dirichlet's Function]]", '[[Lecture 17 - Uniform Continuity and Definition of the Derivative]]']
aliases: ['Lecture 16', 'Real Analysis Lecture 16', '18.100A Lecture 16']
source: "https://www.youtube.com/watch?v=dcUKdwHRSD8"
title: "Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teorema dei valori estremi di Weierstrass, compattezza metrica, teorema dei valori intermedi di Bolzano e teorema degli zeri."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]]

# Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>I teoremi globali sulle funzioni continue</b></font></mark> rivelano la straordinaria potenza topologica degli intervalli chiusi e limitati $[a, b]$ (insiemi compatti sulla retta reale). La sedicesima lezione del corso MIT 18.100A dimostra i due capisaldi dell'analisi classica: il Teorema dei Valori Estremi di Weierstrass (ogni funzione continua su un compatto è limitata e raggiunge massimo e minimo assoluti) e il Teorema dei Valori Intermedi di Bolzano (ogni funzione continua assume tutti i valori compresi tra gli estremi).

## Il Teorema dei Valori Estremi (Weierstrass)

Consideriamo una funzione $f: [a, b] \to \mathbb{R}$ definita su un intervallo chiuso e limitato.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema dei Valori Estremi (Extreme Value Theorem):</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ continua. Allora:
1. $f$ è **limitata** su $[a, b]$: esistono $m, M \in \mathbb{R}$ tali che $m \le f(x) \le M$ per ogni $x \in [a, b]$.
2. $f$ **raggiunge il suo massimo e il suo minimo assoluto**: esistono punti $x_{\min}, x_{\max} \in [a, b]$ tali che:
   $$f(x_{\min}) = \inf_{x \in [a, b]} f(x), \qquad f(x_{\max}) = \sup_{x \in [a, b]} f(x)$$

### Dimostrazione della Limitatezza
Supponiamo per assurdo che $f$ non sia limitata superiormente su $[a, b]$.
Allora per ogni $n \in \mathbb{N}$ esiste un punto $x_n \in [a, b]$ tale che:
$$f(x_n) > n$$
La successione $(x_n)$ è contenuta in $[a, b]$, quindi è limitata ($a \le x_n \le b$).
Per il **Teorema di Bolzano-Weierstrass** (Lezione 9), $(x_n)$ ammette una sottosuccessione convergente:
$$x_{n_k} \to x_0 \in [a, b] \quad (k \to \infty)$$
Poiché $f$ è continua in $x_0$, per la caratterizzazione sequenziale:
$$\lim_{k \to \infty} f(x_{n_k}) = f(x_0) \in \mathbb{R}$$
Tuttavia per costruzione $f(x_{n_k}) > n_k \ge k \to +\infty$, assurdo!
Dunque $f$ è superiormente limitata. Con analogo ragionamento si dimostra che $f$ è inferiormente limitata.

### Dimostrazione dell'Esistenza del Massimo
Poiché $f([a, b])$ è non vuoto e superiormente limitato, per l'Assioma di Completezza di $\mathbb{R}$ esiste:
$$M := \sup_{x \in [a, b]} f(x) = \sup f([a, b]) \in \mathbb{R}$$
Per la caratterizzazione dell'estremo superiore, per ogni $n \in \mathbb{N}$ esiste $x_n \in [a, b]$ tale che:
$$M - \frac{1}{n} < f(x_n) \le M$$
Per Bolzano-Weierstrass, $(x_n)$ ammette una sottosuccessione convergente $x_{n_k} \to x_{\max} \in [a, b]$.
Per continuità di $f$:
$$f(x_{\max}) = \lim_{k \to \infty} f(x_{n_k})$$
Ma poiché $M - \frac{1}{n_k} < f(x_{n_k}) \le M$, per il Teorema del Confronto si ha $\lim f(x_{n_k}) = M$.
Ne consegue che:
$$f(x_{\max}) = M$$
Il massimo è effettivamente assunto nel punto $x_{\max} \in [a, b]$. Con dimostrazione duale si prova l'esistenza di $x_{\min}$.

## Il Teorema dei Valori Intermedi di Bolzano

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema dei Valori Intermedi (Intermediate Value Theorem - IVT):</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ una funzione continua. Se $\gamma$ è un valore strettamente compreso tra $f(a)$ e $f(b)$ (ad esempio $f(a) < \gamma < f(b)$), allora esiste almeno un punto $c \in ]a, b[$ tale che:
$$f(c) = \gamma$$

### Dimostrazione
Senza perdita di generalità, consideriamo il caso $\gamma = 0$ con $f(a) < 0 < f(b)$ (**Teorema degli Zeri**):
Definiamo il sottoinsieme:
$$S := \{x \in [a, b] \mid f(x) < 0\}$$
1. $S \neq \emptyset$ poiché $a \in S$.
2. $S$ è limitato superiormente da $b$.
Per l'Assioma di Completezza, esiste $c := \sup S \in [a, b]$.
Dimostriamo che $f(c) = 0$ escludendo $f(c) < 0$ e $f(c) > 0$:
- **Se $f(c) < 0$:** Poiché $f(b) > 0$, deve aversi $c < b$. Per continuità di $f$ in $c$, esiste $\delta > 0$ tale che $f(x) < 0$ per ogni $x \in [c, c + \delta[$. Ma allora i punti $x \in ]c, c + \delta[$ appartengono ad $S$, contraddicendo che $c = \sup S$.
- **Se $f(c) > 0$:** Poiché $f(a) < 0$, deve aversi $c > a$. Per continuità, esiste $\delta > 0$ tale che $f(x) > 0$ per ogni $x \in ]c - \delta, c]$. Ma allora nessun elemento di $S$ può essere maggiore di $c - \delta$, rendendo $c - \delta$ un maggiorante strettamente minore di $c$, assurdo!
Per tricotomia, deve necessariamente essere $f(c) = 0$.

### Corollario del Punto Fisso
Se $g: [0, 1] \to [0, 1]$ è continua, allora $g$ ammette almeno un punto fisso $c \in [0, 1]$ tale che $g(c) = c$.
*(Dimostrazione: si applica il teorema degli zeri alla funzione ausiliaria $f(x) = g(x) - x$).*
