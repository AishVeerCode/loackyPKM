---
status: permanent
type: lecture
area: education
related: ['[[Lecture 06 - The Uncountability of the Real Numbers]]', '[[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]]']
aliases: ['Lecture 7', 'Real Analysis Lecture 7', '18.100A Lecture 7']
source: "https://www.youtube.com/watch?v=49Ro2zf9hAc"
title: "Lecture 07 - Convergent Sequences of Real Numbers"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Successioni reali, definizione rigorosa di limite epsilon-N, unicita del limite e limitatezza delle successioni convergenti."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 07 - Convergent Sequences of Real Numbers]]

# Lecture 07 - Convergent Sequences of Real Numbers

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La teoria delle successioni convergenti</b></font></mark> costituisce il mattone elementare dell'intera analisi infinitesimale, traducendo l'idea intuitiva di "avvicinamento continuo" nel linguaggio rigoroso delle disuguaglianze $\varepsilon-N$. La settima lezione del corso MIT 18.100A formalizza la definizione di limite di una successione reale, dimostra l'unicità del valore limite, stabilisce il teorema fondamentale secondo cui ogni successione convergente è limitata ed illustra le tecniche standard per verificare la convergenza.

## Definizione di Limite di una Successione

Una successione di numeri reali è un'applicazione $x: \mathbb{N} \to \mathbb{R}$, solitamente denotata con $(x_n)_{n=1}^\infty$ dove $x_n := x(n)$.

### Definizione $\varepsilon-N$ di Convergenza
Sia $(x_n)$ una successione reale e sia $x \in \mathbb{R}$. Diciamo che $(x_n)$ <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>converge</b></font></mark> a $x$ (scritto $\lim_{n \to \infty} x_n = x$ o $x_n \to x$) se:
$$\forall \varepsilon > 0, \; \exists N \in \mathbb{N} \text{ tale che } \forall n \ge N : |x_n - x| < \varepsilon$$

- Il numero reale $x$ è detto **limite** della successione.
- Se una successione non converge ad alcun numero reale $x \in \mathbb{R}$, si dice che essa **diverge** (o non converge).
- *Interpretazione geometrica:* Per quanto piccolo sia il raggio $\varepsilon > 0$, l'intervallo aperto $]x - \varepsilon, x + \varepsilon[$ contiene **tutti** i termini della successione tranne al più un numero finito (i primi $N - 1$ termini).

### Esempi Fondamentali di Verifica
1. **Successione $x_n = \frac{1}{n}$:** Mostriamo che $\lim_{n \to \infty} \frac{1}{n} = 0$.
   Sia $\varepsilon > 0$. Dobbiamo verificare $|\frac{1}{n} - 0| = \frac{1}{n} < \varepsilon$.
   Per la Proprietà di Archimede, esiste $N \in \mathbb{N}$ tale che $N > \frac{1}{\varepsilon}$.
   Allora per ogni $n \ge N$:
   $$\frac{1}{n} \le \frac{1}{N} < \varepsilon$$
   Dunque $1/n \to 0$.

2. **Successione costante $x_n = c$:** Mostriamo che $\lim_{n \to \infty} c = c$.
   Per ogni $\varepsilon > 0$, scegliamo $N = 1$. Per ogni $n \ge 1$: $|c - c| = 0 < \varepsilon$.

3. **Successione $x_n = \frac{n}{n + 1}$:** Mostriamo che $\lim_{n \to \infty} x_n = 1$.
   Calcoliamo $|x_n - 1| = \left|\frac{n}{n+1} - 1\right| = \left|\frac{-1}{n+1}\right| = \frac{1}{n+1} < \frac{1}{n}$.
   Dato $\varepsilon > 0$, scegliamo $N > 1/\varepsilon$. Allora per ogni $n \ge N$: $|x_n - 1| < 1/n \le 1/N < \varepsilon$.

## Teoremi Strutturali sulle Successioni Convergenti

### Teorema di Unicità del Limite
**Teorema:** Il limite di una successione convergente è <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>unico</b></font></mark>.

*Dimostrazione (per assurdo):*
Supponiamo che $x_n \to x$ e $x_n \to y$ con $x \neq y$. Allora $|x - y| > 0$.
Scegliamo $\varepsilon := \frac{|x - y|}{2} > 0$.
- Poiché $x_n \to x$, esiste $N_1 \in \mathbb{N}$ tale che per ogni $n \ge N_1$: $|x_n - x| < \varepsilon$.
- Poiché $x_n \to y$, esiste $N_2 \in \mathbb{N}$ tale che per ogni $n \ge N_2$: $|x_n - y| < \varepsilon$.
Scegliamo $n \ge \max\{N_1, N_2\}$. Applicando la disuguaglianza triangolare:
$$|x - y| = |(x - x_n) + (x_n - y)| \le |x - x_n| + |x_n - y| < \varepsilon + \varepsilon = 2\varepsilon = |x - y|$$
Abbiamo ottenuto $|x - y| < |x - y|$, assurdo. Di conseguenza deve aversi $x = y$.

### Limitatezza delle Successioni Convergenti
Una successione $(x_n)$ si dice **limitata** se l'insieme dei suoi valori $\{x_n \mid n \in \mathbb{N}\}$ è limitato in $\mathbb{R}$, ossia:
$$\exists M \in \mathbb{R} \text{ tale che } \forall n \in \mathbb{N} : |x_n| \le M$$

**Teorema:** Se una successione $(x_n)$ è convergente, allora $(x_n)$ è limitata.

*Dimostrazione:*
Sia $x = \lim_{n \to \infty} x_n$. Applicando la definizione di limite con $\varepsilon = 1$:
esiste $N \in \mathbb{N}$ tale che per ogni $n \ge N$:
$$|x_n - x| < 1$$
Dalla disuguaglianza triangolare inversa:
$$|x_n| - |x| \le |x_n - x| < 1 \implies |x_n| < |x| + 1 \quad \forall n \ge N$$
I termini della successione per $n \ge N$ sono tutti maggiorati in modulo da $|x| + 1$.
I termini precedenti a $N$ costituiscono un insieme finito $\{x_1, x_2, \dots, x_{N-1}\}$.
Definiamo:
$$M := \max\{|x_1|, |x_2|, \dots, |x_{N-1}|, |x| + 1\}$$
Chiaramente per ogni $n \in \mathbb{N}$ si ha $|x_n| \le M$. Dunque $(x_n)$ è limitata.

> [!WARNING] Implicazione Non Invertibile
> L'essere limitata è condizione *necessaria* ma **non sufficiente** per la convergenza.
> Esempio classico: la successione a segni alterni $x_n = (-1)^n$ è limitata ($|x_n| = 1$), ma non converge ad alcun limite reale.
