---
status: permanent
type: lecture
area: education
related: ["[[Lecture 03 - Cantor's Remarkable Theorem and the Least Upper Bound Property]]", '[[Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value]]']
aliases: ['Lecture 4', 'Real Analysis Lecture 4', '18.100A Lecture 4']
source: "https://www.youtube.com/watch?v=mlPLLXHZ8_U"
title: "Lecture 04 - The Characterization of the Real Numbers"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Assiomi di campo, ordinamento totale, assioma di completezza dei numeri reali ed esistenza rigorosa della radice quadrata di 2 in R."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 04 - The Characterization of the Real Numbers]]

# Lecture 04 - The Characterization of the Real Numbers

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'insieme dei numeri reali $\mathbb{R}$</b></font></mark> viene caratterizzato univocamente come l'unico campo totalmente ordinato che soddisfa la Proprietà del Minimo Maggiorante (Assioma di Completezza). La quarta lezione del corso MIT 18.100A formalizza gli assiomi algebrici di campo e di ordinamento, introduce la nozione di estremo superiore ed estremo inferiore in $\mathbb{R}$, e sfrutta la completezza reale per dimostrare in modo ineccepibile l'esistenza e l'unicità di $\sqrt{2}$ come numero reale soddisfacente $x^2 = 2$.

## Definizione Assiomatica di $\mathbb{R}$

I numeri reali non sono introdotti mediante costruzioni computazionali (come allineamenti decimali infiniti o sezioni di Dedekind), ma assiomaticamente:

**Teorema di Caratterizzazione:** Esiste un insieme $\mathbb{R}$, dotato di due operazioni binarie $+$, $\cdot$ e di una relazione d'ordine totale $\le$, tale che:
1. $(\mathbb{R}, +, \cdot)$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>campo</b></font></mark> (operazioni associative, commutative, neutri $0$ e $1$, opposti $-x$, reciproci $x^{-1}$ per $x \neq 0$, distributività).
2. $(\mathbb{R}, \le)$ è un **insieme totalmente ordinato** compatibile con le operazioni:
   - $\forall x, y, z : x \le y \implies x + z \le y + z$
   - $\forall x, y, z : x \le y \land z \ge 0 \implies xz \le yz$
3. **Proprietà del Minimo Maggiorante (Assioma di Completezza):** Ogni sottoinsieme non vuoto $E \subseteq \mathbb{R}$ superiormente limitato ammette estremo superiore in $\mathbb{R}$ ($\sup E \in \mathbb{R}$).

Tale struttura è unica a meno di isomorfismi d'ordine e di campo.

## Estremo Superiore ed Estremo Inferiore

Sia $E \subseteq \mathbb{R}$ non vuoto.
- **Estremo Superiore ($\sup E$):**
  $L = \sup E$ se e solo se:
  1. $\forall x \in E : x \le L$ ($L$ è maggiorante)
  2. $\forall \varepsilon > 0, \exists x \in E : x > L - \varepsilon$ (nessun numero minore di $L$ è maggiorante)
- **Estremo Inferiore ($\inf E$):**
  $m = \inf E$ se e solo se:
  1. $\forall x \in E : m \le x$ ($m$ è minorante)
  2. $\forall \varepsilon > 0, \exists x \in E : x < m + \varepsilon$ (nessun numero maggiore di $m$ è minorante)

### Teorema del Massimo dei Minoranti (Greatest Lower Bound)
**Teorema:** Ogni sottoinsieme non vuoto $E \subseteq \mathbb{R}$ inferiormente limitato ammette estremo inferiore in $\mathbb{R}$, e vale:
$$\inf E = -\sup(-E), \qquad \text{dove } -E = \{-x \mid x \in E\}$$

*Dimostrazione:* Sia $E$ inferiormente limitato da $m$. Allora per ogni $x \in E$, $m \le x \implies -x \le -m$.
Dunque l'insieme $-E$ è non vuoto e superiormente limitato da $-m$.
Per l'Assioma di Completezza, esiste $S = \sup(-E) \in \mathbb{R}$. Poniamo $L = -S$.
Per ogni $x \in E$, $-x \le S \implies x \ge -S = L$, quindi $L$ è minorante di $E$.
Se $m'$ è un qualsiasi minorante di $E$, allora $-m'$ è maggiorante di $-E$, quindi $S \le -m' \implies m' \le -S = L$.
Dunque $L$ è il massimo dei minoranti: $\inf E = L = -\sup(-E)$.

## Esistenza Rigorosa di $\sqrt{2}$ in $\mathbb{R}$

Completando la questione aperta nella Lezione 3, usiamo la completezza per dimostrare l'esistenza delle radici.

**Teorema:** Esiste un unico numero reale positivo $x \in \mathbb{R}$ tale che:
$$x^2 = 2$$

*Dimostrazione:*
Definiamo il sottoinsieme dei reali:
$$E := \{t \in \mathbb{R} \mid t > 0 \land t^2 < 2\}$$
1. **$E$ è non vuoto:** $1 \in E$ poiché $1 > 0$ e $1^2 = 1 < 2$.
2. **$E$ è superiormente limitato:** Se $t \in E$, allora $t^2 < 2 < 4 = 2^2 \implies t < 2$. Dunque $2$ è un maggiorante.
Per l'Assioma di Completezza di $\mathbb{R}$, esiste $x := \sup E \in \mathbb{R}$. Poiché $1 \in E$, $x \ge 1 > 0$.
Dimostriamo che $x^2 = 2$ escludendo per tricotomia i casi $x^2 < 2$ e $x^2 > 2$:

- **Esclusione di $x^2 < 2$:**
  Supponiamo $x^2 < 2$. Allora $2 - x^2 > 0$. Cerchiamo un $n \in \mathbb{N}$ tale che $(x + 1/n) \in E$, ossia $(x + 1/n)^2 < 2$.
  Espandendo il quadrato per $n \ge 1$:
  $$\left(x + \frac{1}{n}\right)^2 = x^2 + \frac{2x}{n} + \frac{1}{n^2} \le x^2 + \frac{2x + 1}{n}$$
  Basta scegliere $n$ sufficientemente grande in modo che:
  $$\frac{2x + 1}{n} < 2 - x^2 \iff n > \frac{2x + 1}{2 - x^2}$$
  Con tale $n$, abbiamo $(x + 1/n)^2 < 2$, il che implica $(x + 1/n) \in E$.
  Ma $x + 1/n > x = \sup E$, in palese contraddizione col fatto che $x$ è maggiorante di $E$. Quindi non può essere $x^2 < 2$.

- **Esclusione di $x^2 > 2$:**
  Supponiamo $x^2 > 2$. Allora $x^2 - 2 > 0$. Cerchiamo un $n \in \mathbb{N}$ tale che $(x - 1/n)^2 > 2$.
  Espandendo il quadrato:
  $$\left(x - \frac{1}{n}\right)^2 = x^2 - \frac{2x}{n} + \frac{1}{n^2} > x^2 - \frac{2x}{n}$$
  Basta scegliere $n$ tale che:
  $$\frac{2x}{n} < x^2 - 2 \iff n > \frac{2x}{x^2 - 2}$$
  Con tale $n$, abbiamo $(x - 1/n)^2 > 2$. Di conseguenza per ogni $t \in E$ vale $t^2 < 2 < (x - 1/n)^2 \implies t < x - 1/n$.
  Ne consegue che $x - 1/n$ è un maggiorante di $E$ strettamente minore di $x$, contraddicendo che $x$ sia il *minimo* maggiorante. Quindi non può essere $x^2 > 2$.

Poiché né $x^2 < 2$ né $x^2 > 2$ sono possibili, deve aversi necessariamente $x^2 = 2$.
L'unicità di $x > 0$ segue dalla stretta monotonia del prodotto positivo ($0 < x_1 < x_2 \implies x_1^2 < x_2^2$).
Tale numero viene indicato con $\sqrt{2}$.
