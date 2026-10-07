---
status: permanent
type: lecture
area: education
related: ['[[Lecture 21 - The Riemann Integral of a Continuous Function]]', '[[Lecture 23 - Pointwise and Uniform Convergence of Sequences of Functions]]']
aliases: ['Lecture 22', 'Real Analysis Lecture 22', '18.100A Lecture 22']
source: "https://www.youtube.com/watch?v=WWZ_CeiRnIo"
title: "Lecture 22 - Fundamental Theorem of Calculus and Change of Variables"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Teorema fondamentale del calcolo integrale, integrazione per parti e formula del cambiamento di variabile."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 22 - Fundamental Theorem of Calculus and Change of Variables]]

# Lecture 22 - Fundamental Theorem of Calculus and Change of Variables

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Teorema Fondamentale del Calcolo Integrale</b></font></mark> rappresenta l'apice dell'analisi infinitesimale classica, unificando le due operazioni apparentemente disgiunte del calcolo differenziale e del calcolo integrale e mostrando che derivazione e integrazione sono operazioni mutualmente inverse. La ventiduesima lezione del corso MIT 18.100A dimostra entrambe le parti del teorema fondamentale, dimostra la formula di integrazione per parti ed esamina la formula rigorosa di cambiamento di variabili per integrali di Riemann.

## Il Teorema Fondamentale del Calcolo Integrale (FTC)

### Parte I: Derivabilità della Funzione Integrale
Sia $f \in \mathcal{R}([a, b])$ e definiamo la **funzione integrale**:
$$F: [a, b] \to \mathbb{R}, \qquad F(x) := \int_a^x f(t) dt$$

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (FTC Parte I):</b></font></mark>
1. $F$ è una funzione **continua** su $[a, b]$ (ed è anzi lipschitziana).
2. Se $f$ è **continua** in un punto $x_0 \in ]a, b[$, allora $F$ è **derivabile** in $x_0$ e vale:
   $$F'(x_0) = f(x_0)$$

*Dimostrazione:*
1. Sia $M = \sup_{[a, b]} |f(t)|$. Dati $x, y \in [a, b]$ con $x < y$:
   $$|F(y) - F(x)| = \left| \int_x^y f(t) dt \right| \le \int_x^y |f(t)| dt \le M(y - x) = M|y - x|$$
   Dunque $F$ è lipschitziana, e quindi uniformemente continua.
2. Consideriamo il rapporto incrementale di $F$ in $x_0$: per $h \neq 0$:
   $$\frac{F(x_0 + h) - F(x_0)}{h} = \frac{1}{h} \int_{x_0}^{x_0 + h} f(t) dt$$
   Notiamo che $f(x_0) = \frac{1}{h} \int_{x_0}^{x_0 + h} f(x_0) dt$. Sottraendo:
   $$\left| \frac{F(x_0 + h) - F(x_0)}{h} - f(x_0) \right| = \left| \frac{1}{h} \int_{x_0}^{x_0 + h} \big(f(t) - f(x_0)\big) dt \right| \le \frac{1}{|h|} \left| \int_{x_0}^{x_0 + h} |f(t) - f(x_0)| dt \right|$$
   Poiché $f$ è continua in $x_0$, per ogni $\varepsilon > 0$ esiste $\delta > 0$ tale che $|t - x_0| < \delta \implies |f(t) - f(x_0)| < \varepsilon$.
   Allora per ogni $|h| < \delta$:
   $$\left| \frac{F(x_0 + h) - F(x_0)}{h} - f(x_0) \right| \le \frac{1}{|h|} \cdot \varepsilon |h| = \varepsilon$$
   Passando al limite per $h \to 0$, il rapporto incrementale converge a $f(x_0)$, dunque $F'(x_0) = f(x_0)$.

### Parte II: Formula Fondamentale di Valutazione
Una funzione $G: [a, b] \to \mathbb{R}$ è detta <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>primitiva</b></font></mark> di $f$ se $G$ è derivabile e $G'(x) = f(x)$ per ogni $x \in ]a, b[$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (FTC Parte II):</b></font></mark>
Se $f: [a, b] \to \mathbb{R}$ è continua su $[a, b]$ e $G$ è una qualsiasi primitiva di $f$ su $[a, b]$, allora:
$$\int_a^b f(x) dx = G(b) - G(a) = [G(x)]_a^b$$

*Dimostrazione:*
Per la Parte I, $F(x) = \int_a^x f(t)dt$ è una primitiva di $f$.
Se $G$ è un'altra primitiva, allora $(G - F)'(x) = G'(x) - F'(x) = f(x) - f(x) = 0$.
Per il Teorema del Valor Medio (Lezione 19), una funzione con derivata nulla è costante: esiste $C \in \mathbb{R}$ tale che:
$$G(x) = F(x) + C$$
Valutando in $a$: $G(a) = F(a) + C = 0 + C \implies C = G(a)$.
Valutando in $b$: $G(b) = F(b) + G(a) \implies F(b) = G(b) - G(a)$.
Poiché $F(b) = \int_a^b f(t)dt$, la formula è dimostrata.

## Tecniche di Integrazione Dimostrate Rigorosamente

### Integrazione per Parti
**Teorema:** Siano $u, v: [a, b] \to \mathbb{R}$ derivabili con derivate continue. Allora:
$$\int_a^b u(x) v'(x) dx = u(b)v(b) - u(a)v(a) - \int_a^b u'(x) v(x) dx$$

*Dimostrazione:* Per la regola del prodotto di Leibniz: $(uv)' = u'v + uv'$.
Poiché $u'v + uv'$ è continua, integrando ambo i membri e applicando FTC Parte II:
$$\int_a^b (uv)'(x) dx = [u(x)v(x)]_a^b = \int_a^b u'(x)v(x)dx + \int_a^b u(x)v'(x)dx$$
Riorganizzando i termini si ottiene la formula.

### Cambiamento di Variabile (Integrazione per Sostituzione)
**Teorema:** Sia $\phi: [A, B] \to [a, b]$ con $\phi'$ continua su $[A, B]$ e sia $f: [a, b] \to \mathbb{R}$ continua. Allora:
$$\int_A^B f(\phi(t)) \phi'(t) dt = \int_{\phi(A)}^{\phi(B)} f(x) dx$$

*Dimostrazione:* Sia $F$ una primitiva di $f$ su $[a, b]$.
Consideriamo la funzione composta $H(t) := F(\phi(t))$.
Per la Chain Rule (Lezione 19): $H'(t) = F'(\phi(t)) \cdot \phi'(t) = f(\phi(t)) \phi'(t)$.
Applicando FTC Parte II ad $H$:
$$\int_A^B f(\phi(t))\phi'(t) dt = H(B) - H(A) = F(\phi(B)) - F(\phi(A)) = \int_{\phi(A)}^{\phi(B)} f(x) dx$$
