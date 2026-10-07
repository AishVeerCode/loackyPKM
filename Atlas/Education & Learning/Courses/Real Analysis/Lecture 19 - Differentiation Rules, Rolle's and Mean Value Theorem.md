---
status: permanent
type: lecture
area: education
related: ['[[Lecture 18 - Weierstrass Continuous and Nowhere Differentiable Function]]', "[[Lecture 20 - Taylor's Theorem and Definition of Riemann Sums]]"]
aliases: ['Lecture 19', 'Real Analysis Lecture 19', '18.100A Lecture 19']
source: "https://www.youtube.com/watch?v=V3Wg_jrMSQY"
title: "Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Regole di derivazione, regola della catena, teorema di Fermat, teorema di Rolle e teorema del valor medio di Lagrange con applicazioni."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]]

# Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Teorema del Valor Medio di Lagrange</b></font></mark> rappresenta lo strumento analitico per eccellenza del calcolo differenziale, fungendo da ponte fondamentale tra le proprietà puntuali della derivata prima $f'(x)$ e il comportamento globale della funzione $f(x)$ su un intervallo. La diciannovesima lezione del corso MIT 18.100A dimostra le regole algebriche di derivazione e la Chain Rule, formula il Teorema di Fermat sui punti estremali interni, dimostra il Teorema di Rolle e giunge al Mean Value Theorem con i suoi criteri di monotonia.

## Regole di Derivazione e Regola della Catena

Siano $f, g$ derivabili in $x \in ]a, b[$.
1. $(f + g)'(x) = f'(x) + g'(x)$
2. **Regola di Leibniz (Prodotto):** $(fg)'(x) = f'(x)g(x) + f(x)g'(x)$
3. **Regola della Catena (Chain Rule):** Se $g$ è derivabile in $x$ e $f$ è derivabile in $g(x)$, allora $(f \circ g)'(x) = f'(g(x)) \cdot g'(x)$.

## Teorema di Fermat sui Punti Stazionari

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Fermat:</b></font></mark>
Sia $f: ]a, b[ \to \mathbb{R}$. Se $c \in ]a, b[$ è un punto di massimo locale o minimo locale per $f$, e se $f$ è derivabile in $c$, allora:
$$f'(c) = 0$$

*Dimostrazione (per massimo locale):*
Esiste $\delta > 0$ tale che per ogni $x \in ]c - \delta, c + \delta[$ vale $f(x) \le f(c)$.
- Per $x \in ]c - \delta, c[$, si ha $x - c < 0$, quindi $\frac{f(x) - f(c)}{x - c} \ge 0 \implies f'(c) = \lim_{x \to c^-} \frac{f(x) - f(c)}{x - c} \ge 0$.
- Per $x \in ]c, c + \delta[$, si ha $x - c > 0$, quindi $\frac{f(x) - f(c)}{x - c} \le 0 \implies f'(c) = \lim_{x \to c^+} \frac{f(x) - f(c)}{x - c} \le 0$.
Dovendo coincidere i limiti destro e sinistro, deve aversi $0 \le f'(c) \le 0 \implies f'(c) = 0$.

## Teorema di Rolle e Teorema del Valor Medio

### Teorema di Rolle
<mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>Teorema (Rolle):</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ continua su $[a, b]$, derivabile su $]a, b[$, con $f(a) = f(b)$.
Allora esiste almeno un punto $c \in ]a, b[$ tale che:
$$f'(c) = 0$$

*Dimostrazione:*
Per il Teorema dei Valori Estremi di Weierstrass (Lezione 16), $f$ ammette massimo assoluto $M$ e minimo assoluto $m$ su $[a, b]$.
- Se $M = m$, la funzione è costante su $[a, b]$, quindi $f'(x) = 0$ per ogni $x \in ]a, b[$.
- Se $M \neq m$, poiché $f(a) = f(b)$, almeno uno tra il massimo o il minimo deve essere assunto in un punto interno $c \in ]a, b[$.
Per il Teorema di Fermat, $f'(c) = 0$.

### Teorema del Valor Medio di Lagrange (Mean Value Theorem - MVT)
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema del Valor Medio:</b></font></mark>
Sia $f: [a, b] \to \mathbb{R}$ continua su $[a, b]$ e derivabile su $]a, b[$. Allora esiste almeno un punto $c \in ]a, b[$ tale che:
$$f(b) - f(a) = f'(c)(b - a) \iff f'(c) = \frac{f(b) - f(a)}{b - a}$$

*Dimostrazione:*
Definiamo la funzione ausiliaria $g: [a, b] \to \mathbb{R}$ sottraendo a $f(x)$ la retta secante passante per $(a, f(a))$ e $(b, f(b))$:
$$g(x) := f(x) - f(a) - \frac{f(b) - f(a)}{b - a}(x - a)$$
1. $g$ è continua su $[a, b]$ e derivabile su $]a, b[$.
2. $g(a) = 0$ e $g(b) = 0$, dunque $g(a) = g(b) = 0$.
Applicando il **Teorema di Rolle** a $g$, esiste $c \in ]a, b[$ tale che $g'(c) = 0$. Calcolando la derivata:
$$g'(c) = f'(c) - \frac{f(b) - f(a)}{b - a} = 0 \implies f'(c) = \frac{f(b) - f(a)}{b - a}$$

## Conseguenze Fondamentali del Teorema del Valor Medio

1. **Funzioni a derivata nulla:** Se $f'(x) = 0$ per ogni $x \in ]a, b[$, allora $f$ è **costante**.
2. **Criterio di Monotonia:**
   - $f'(x) \ge 0$ su $]a, b[ \iff f$ è monotona crescente.
   - $f'(x) \le 0$ su $]a, b[ \iff f$ è monotona decrescente.
   - $f'(x) > 0$ su $]a, b[ \implies f$ è strettamente crescente.
