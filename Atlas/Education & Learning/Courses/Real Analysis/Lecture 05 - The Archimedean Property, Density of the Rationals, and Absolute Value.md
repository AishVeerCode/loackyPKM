---
status: permanent
type: lecture
area: education
related: ['[[Lecture 04 - The Characterization of the Real Numbers]]', '[[Lecture 06 - The Uncountability of the Real Numbers]]']
aliases: ['Lecture 5', 'Real Analysis Lecture 5', '18.100A Lecture 5']
source: "https://www.youtube.com/watch?v=M2d4HsBsu8Y"
title: "Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value"
date: '2026-10-07'
updated: 2026-10-07T18:25
tags: [education/courses, education/matematica, education/lecture]
summary: "Proprieta di Archimede, densita di Q e numeri irrazionali sulla retta reale, valore assoluto e disuguaglianze triangolari metriche."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value]]

# Lecture 05 - The Archimedean Property, Density of the Rationals, and Absolute Value

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La Proprietà di Archimede</b></font></mark> discende direttamente dalla completezza dei numeri reali e garantisce che i numeri naturali non siano limitati superiormente, escludendo l'esistenza di infinitesimi o infiniti attuali nel campo reale. La quinta lezione del corso MIT 18.100A dimostra la proprietà archimedea e la impiega per stabilire la densità sia dei numeri razionali $\mathbb{Q}$ sia degli irrazionali $\mathbb{R} \setminus \mathbb{Q}$ in $\mathbb{R}$, introducendo poi la metrica euclidea tramite il valore assoluto e le disuguaglianze triangolari.

## La Proprietà di Archimede

Come conseguenza dell'Assioma di Completezza di Dedekind, $\mathbb{N}$ non è limitato in $\mathbb{R}$.

**Teorema (Proprietà di Archimede):**
1. Se $x, y \in \mathbb{R}$ con $x > 0$, esiste $n \in \mathbb{N}$ tale che:
   $$nx > y$$
2. In particolare, ponendo $x = 1$, per ogni $y \in \mathbb{R}$ esiste $n \in \mathbb{N}$ tale che $n > y$.
3. Per ogni $\varepsilon > 0$, esiste $n \in \mathbb{N}$ tale che $\frac{1}{n} < \varepsilon$.

*Dimostrazione (per assurdo):*
Supponiamo che esista $y \in \mathbb{R}$ tale che per ogni $n \in \mathbb{N}$ si abbia $nx \le y$.
Definiamo l'insieme dei multipli interi di $x$:
$$E := \{nx \mid n \in \mathbb{N}\}$$
Per ipotesi, $E$ è limitato superiormente da $y$. Poiché $x = 1 \cdot x \in E$, $E$ è non vuoto.
Per l'Assioma di Completezza, esiste $\alpha := \sup E \in \mathbb{R}$.
Poiché $x > 0$, si ha $\alpha - x < \alpha$. Poiché $\alpha$ è il minimo maggiorante di $E$, $\alpha - x$ non può essere un maggiorante, dunque esiste un elemento $mx \in E$ (con $m \in \mathbb{N}$) tale che:
$$mx > \alpha - x$$
Aggiungendo $x$ ad ambo i membri:
$$(m + 1)x > \alpha$$
Ma $m + 1 \in \mathbb{N}$, per cui $(m + 1)x \in E$. Abbiamo trovato un elemento di $E$ strettamente maggiore di $\alpha$, contraddicendo il fatto che $\alpha$ sia un maggiorante di $E$.
Dunque nessun tale $y$ può esistere, e la proprietà è dimostrata.

## Densità dei Razionali e degli Irrazionali

Un sottoinsieme $D \subseteq \mathbb{R}$ si dice <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>denso</b></font></mark> in $\mathbb{R}$ se tra due qualsiasi numeri reali distinti esiste sempre almeno un elemento di $D$.

### Teorema di Densità di $\mathbb{Q}$
**Teorema:** Dati $x, y \in \mathbb{R}$ con $x < y$, esiste $q \in \mathbb{Q}$ tale che:
$$x < q < y$$

*Dimostrazione:*
Poiché $x < y$, si ha $y - x > 0$. Per la proprietà di Archimede, esiste $n \in \mathbb{N}$ tale che:
$$n(y - x) > 1 \iff ny - nx > 1$$
Consideriamo ora l'insieme $S := \{k \in \mathbb{Z} \mid k > nx\}$.
- $S$ è non vuoto ed è inferiormente limitato in $\mathbb{Z}$.
Per il buon ordinamento degli interi, esiste $m = \min S$.
Ne segue che $m > nx$ e $m - 1 \le nx$, da cui:
$$nx < m \le nx + 1 < ny$$
Dividendo per $n > 0$:
$$x < \frac{m}{n} < y$$
Il numero $q := \frac{m}{n} \in \mathbb{Q}$ appartiene all'intervallo $]x, y[$.

### Densità degli Irrazionali $\mathbb{R} \setminus \mathbb{Q}$
**Corollario:** Dati $x, y \in \mathbb{R}$ con $x < y$, esiste $r \in \mathbb{R} \setminus \mathbb{Q}$ tale che $x < r < y$.
*Dimostrazione:* Consideriamo i reali traslati $\frac{x}{\sqrt{2}} < \frac{y}{\sqrt{2}}$.
Per la densità di $\mathbb{Q}$, esiste un razionale non nullo $q \in \mathbb{Q} \setminus \{0\}$ tale che:
$$\frac{x}{\sqrt{2}} < q < \frac{y}{\sqrt{2}} \implies x < q\sqrt{2} < y$$
Il numero $r := q\sqrt{2}$ è irrazionale (altrimenti $\sqrt{2} = r/q$ sarebbe razionale), e giace strettamente tra $x$ e $y$.

## Valore Assoluto e Metrica di $\mathbb{R}$

Dato $x \in \mathbb{R}$, il valore assoluto è definito da:
$$|x| := \begin{cases} x & \text{se } x \ge 0 \\\\ -x & \text{se } x < 0 \end{cases}$$
Geometricamente, la distanza tra due punti $x, y \in \mathbb{R}$ è data da $d(x, y) = |x - y|$.

### Proprietà Fondamentali
1. $|x| \ge 0$, con $|x| = 0 \iff x = 0$.
2. $|xy| = |x||y|$.
3. $-|x| \le x \le |x|$.
4. $|x| \le a \iff -a \le x \le a$ (per $a \ge 0$).
5. **Disuguaglianza triangolare:**
   $$|x + y| \le |x| + |y|$$
   *Dimostrazione:* Poiché $-|x| \le x \le |x|$ e $-|y| \le y \le |y|$, sommando otteniamo $-(|x| + |y|) \le x + y \le |x| + |y|$, da cui per la proprietà (4) segue $|x + y| \le |x| + |y|$.
6. **Disuguaglianza triangolare inversa:**
   $$\big| |x| - |y| \big| \le |x - y|$$
   *Dimostrazione:* $|x| = |(x - y) + y| \le |x - y| + |y| \implies |x| - |y| \le |x - y|$. Scambiando $x$ e $y$ si ha $|y| - |x| \le |x - y|$. Ne segue la tesi.
