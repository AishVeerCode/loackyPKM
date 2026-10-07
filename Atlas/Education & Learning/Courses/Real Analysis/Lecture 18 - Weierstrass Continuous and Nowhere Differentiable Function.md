---
status: permanent
type: lecture
area: education
related: ['[[Lecture 17 - Uniform Continuity and Definition of the Derivative]]', "[[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]]"]
aliases: ['Lecture 18', 'Real Analysis Lecture 18', '18.100A Lecture 18']
source: "https://www.youtube.com/watch?v=PuRJ9IgUW-M"
title: "Lecture 18 - Weierstrass Continuous and Nowhere Differentiable Function"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Il mostro di Weierstrass, costruzione della funzione continua ovunque e derivabile in nessun punto, e convergenza uniforme."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 18 - Weierstrass Continuous and Nowhere Differentiable Function]]

# Lecture 18 - Weierstrass Continuous and Nowhere Differentiable Function

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La funzione di Weierstrass</b></font></mark> scosse alle fondamenta l'analisi matematica ottocentesca, confutando la convinzione radicata (sostenuta persino da Gauss e Ampère) che ogni funzione continua dovesse essere derivabile quasi ovunque. La diciottesima lezione del corso MIT 18.100A esamina in dettaglio la celebre costruzione presentata da Karl Weierstrass nel 1872, provando che è possibile definire una curva continua che non ammette retta tangente in alcun punto reale, anticipando di un secolo la moderna geometria dei frattali.

## Il Contesto Storico e la Patologia

Fino alla seconda metà del XIX secolo, i matematici ritenevano che la continuità garantisse la derivabilità tranne al più in una collezione discreta di punti angolosi isolati. Karl Weierstrass dimostrò che la realtà dell'analisi reale è infinitamente più complessa.

### La Costruzione della Funzione di Weierstrass
Siano $a, b \in \mathbb{R}$ tali che:
$$0 < a < 1, \qquad b \text{ intero dispari}, \qquad ab > 1 + \frac{3}{2}\pi$$
Definiamo la funzione $f: \mathbb{R} \to \mathbb{R}$ come serie infinita di funzioni trigonometriche:
$$f(x) := \sum_{n=0}^\infty a^n \cos(b^n \pi x)$$

## Dimostrazione della Continuità Globale

La continuità di $f$ è conseguenza immediata della convergenza uniforme della serie.

**Teorema:** La funzione $f(x) = \sum_{n=0}^\infty a^n \cos(b^n \pi x)$ è continua su tutto $\mathbb{R}$.

*Dimostrazione:*
Per ogni $n \in \mathbb{N}$ e ogni $x \in \mathbb{R}$:
$$|a^n \cos(b^n \pi x)| \le a^n$$
Poiché $0 < a < 1$, la serie geometrica $\sum_{n=0}^\infty a^n$ converge a $\frac{1}{1-a}$.
Per il **Criterio M di Weierstrass** (Weierstrass M-Test, approfondito nella Lezione 24), la serie converge uniformemente e assolutamente su tutto $\mathbb{R}$.
Poiché ciascun termine $u_n(x) = a^n \cos(b^n \pi x)$ è una funzione continua su $\mathbb{R}$, il limite uniforme di funzioni continue è continuo. Dunque $f$ è continua su tutto $\mathbb{R}$.

## Dimostrazione della Non-Derivabilità Ovunque

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Weierstrass, 1872):</b></font></mark>
La funzione $f$ non è derivabile in alcun punto $x_0 \in \mathbb{R}$.

*Idea della Dimostrazione (Studio del Rapporto Incrementale):*
Fissato un punto arbitrario $x_0 \in \mathbb{R}$, vogliamo mostrare che il rapporto incrementale:
$$\frac{f(x_0 + h) - f(x_0)}{h}$$
non ammette limite finito per $h \to 0$.
Per ogni intero $m \in \mathbb{N}$, scriviamo $b^m x_0 = \alpha_m + \xi_m$ dove $\alpha_m \in \mathbb{Z}$ e $-\frac{1}{2} \le \xi_m < \frac{1}{2}$.
Scegliamo un incremento opportuno:
$$h_m := \frac{1 - \xi_m}{b^m}$$
Chiaramente $h_m \to 0$ per $m \to \infty$. Scomponiamo la serie del rapporto incrementale in due parti:
$$\frac{f(x_0 + h_m) - f(x_0)}{h_m} = \sum_{n=0}^{m-1} a^n \frac{\cos(b^n \pi (x_0 + h_m)) - \cos(b^n \pi x_0)}{h_m} + \sum_{n=m}^\infty a^n \frac{\cos(b^n \pi (x_0 + h_m)) - \cos(b^n \pi x_0)}{h_m}$$
1. La prima somma finita (per $n < m$) è controllata dalle derivate dei singoli termini e cresce al più come una costante moltiplicata per $(ab)^m$.
2. La seconda somma infinita (per $n \ge m$) è dominata dal termine $n = m$, il quale, grazie alla scelta di $b$ dispari e $h_m$, assume lo stesso segno e ammette una minorazione dal basso proporzionale a $\frac{2}{3}(ab)^m$.
Poiché per ipotesi $ab > 1 + \frac{3\pi}{2} > 1$, la quantità $(ab)^m \to +\infty$ quando $m \to \infty$.
Di conseguenza, il rapporto incrementale oscilla con ampiezza infinita al tendere di $h_m \to 0$, impedendo l'esistenza di qualsiasi derivata finita.
