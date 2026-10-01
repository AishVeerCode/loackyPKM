---
status: permanent
type: lecture
area: education
related: ["[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]"]
aliases: ["Lezione 5", "Fondamenti di Matematica Lezione 5"]
source: Lezione 5.pdf
title: "Lezione 5 - i Numeri Reali e Assioma di Completezza"
date: '2026-10-01'
updated: 2026-10-01T15:38
tags: [education/university, education/matematica, education/lecture]
summary: "Costruzione assiomatica di R come campo totalmente ordinato e completo, assiomi di Dedekind, estremo superiore e inferiore, caratterizzazione ed elementi separatori."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 5 - i Numeri Reali e Assioma di Completezza]]

# Lezione 5 - I Numeri Reali e Assioma di Completezza

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'insieme dei numeri reali $\mathbb{R}$</b></font></mark> viene introdotto rigorosamente mediante un sistema assiomatico che ne sancisce la natura di campo totalmente ordinato e completo. La lezione analizza gli assiomi algebrici di campo e di compatibilità con l'ordinamento, formalizza la topologia elementare degli intervalli e stabilisce la nozione cardinale di estremo superiore ed estremo inferiore, culminando nell'Assioma di Completezza di Dedekind che distingue la continuità di $\mathbb{R}$ dalle lacune computazionali dei razionali $\mathbb{Q}$.

## Gli Assiomi di Campo
Sull'insieme dei numeri reali $\mathbb{R}$ sono definite due operazioni binarie interne:
- **Addizione:** $+: \mathbb{R} \times \mathbb{R} \to \mathbb{R}, \quad (x, y) \mapsto x + y$
- **Moltiplicazione:** $\cdot: \mathbb{R} \times \mathbb{R} \to \mathbb{R}, \quad (x, y) \mapsto x \cdot y$

### Assiomi dell'Addizione
- **A1 Proprietà Associativa:** $\forall x, y, z \in \mathbb{R}: x + (y + z) = (x + y) + z$
- **A2 Esistenza dell'Elemento Neutro:** $\exists 0 \in \mathbb{R}$ tale che $\forall x \in \mathbb{R}: x + 0 = 0 + x = x$
- **A3 Esistenza degli Inversi (Opposto):** $\forall x \in \mathbb{R}, \exists -x \in \mathbb{R}$ tale che $x + (-x) = (-x) + x = 0$
- **A4 Proprietà Commutativa:** $\forall x, y \in \mathbb{R}: x + y = y + x$

La quadrupla $(\mathbb{R}, +)$ soddisfacente gli assiomi A1–A4 costituisce una struttura di <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>gruppo commutativo (abeliano)</b></font></mark>.

### Assiomi della Moltiplicazione
- **M1 Proprietà Associativa:** $\forall x, y, z \in \mathbb{R}: x \cdot (y \cdot z) = (x \cdot y) \cdot z$
- **M2 Esistenza dell'Elemento Neutro:** $\exists 1 \in \mathbb{R}, 1 \neq 0$ tale che $\forall x \in \mathbb{R}: x \cdot 1 = 1 \cdot x = x$
- **M3 Esistenza degli Inversi (Reciproco):** $\forall x \in \mathbb{R} \setminus \{0\}, \exists x^{-1} \in \mathbb{R}$ tale che $x \cdot x^{-1} = x^{-1} \cdot x = 1$
- **M4 Proprietà Commutativa:** $\forall x, y \in \mathbb{R}: x \cdot y = y \cdot x$

### Proprietà Distributiva
- **D Distributività della moltiplicazione rispetto all'addizione:**
  $$\forall x, y, z \in \mathbb{R}: x \cdot (y + z) = x \cdot y + x \cdot z$$

L'insieme degli assiomi A1–A4, M1–M4 e D certifica che $(\mathbb{R}, +, \cdot)$ è un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>campo</b></font></mark> (o corpo commutativo).

### Proprietà Algebriche Dedotte
Dagli assiomi derivano proprietà fondamentali dimostrabili:

1. **Unicità dei neutri e degli inversi:**
   L'elemento neutro additivo $0$ e moltiplicativo $1$ sono unici. Se $0'$ fosse un altro neutro, $0' = 0' + 0 = 0$. Analogamente, l'opposto $-x$ e il reciproco $x^{-1} = 1/x$ sono unici per ogni elemento.
2. **Leggi di cancellazione:**
   - Addizione: $\forall x, y, z \in \mathbb{R}: x + z = y + z \implies x = y$.
     *Dimostrazione:* $x = x + 0 = x + (z + (-z)) = (x + z) + (-z) = (y + z) + (-z) = y + 0 = y$.
   - Moltiplicazione: $\forall x, y \in \mathbb{R}, \forall z \in \mathbb{R} \setminus \{0\}: xz = yz \implies x = y$.
3. **Assorbimento dello zero e impossibilità di $0^{-1}$:**
   $\forall x \in \mathbb{R}: 0 \cdot x = 0$.
   *Dimostrazione:* $0 + 0x = 0x = (0 + 0)x = 0x + 0x$. Per cancellazione additiva: $0x = 0$.
   Se esistesse un inverso $0^{-1}$, si avrebbe $1 = 0 \cdot 0^{-1} = 0$, violando l'assioma $1 \neq 0$.
4. **Legge di annullamento del prodotto:**
   $$\forall x, y \in \mathbb{R}: xy = 0 \iff x = 0 \lor y = 0$$
5. **Regola dei segni:**
   $(-x)y = -(xy)$ e $(-x)(-y) = xy$. In particolare $(-1)x = -x$ e $(-1)(-1) = 1$.
6. **Inverso del prodotto:**
   $\forall x, y \in \mathbb{R} \setminus \{0\}: (xy)^{-1} = x^{-1}y^{-1}$.
7. **Definizione di sottrazione e divisione:**
   $x - y := x + (-y)$ e $x / y := x \cdot y^{-1}$ (per $y \neq 0$).

## Gli Assiomi di Ordinamento Totale
Su $\mathbb{R}$ è definita una relazione binaria d'ordine parziale $\le$:
- **O1 Proprietà Riflessiva:** $\forall x \in \mathbb{R}: x \le x$
- **O2 Proprietà Antisimmetrica:** $\forall x, y \in \mathbb{R}: x \le y \land y \le x \implies x = y$
- **O3 Proprietà Transitiva:** $\forall x, y, z \in \mathbb{R}: x \le y \land y \le z \implies x \le z$
- **O4 Ordinamento Totale:** $\forall x, y \in \mathbb{R}: x \le y \lor y \le x$

### Compatibilità tra Operazioni e Ordinamento
- **AO Compatibilità con l'Addizione:** $\forall x, y, z \in \mathbb{R}: x \le y \implies x + z \le y + z$
- **MO Compatibilità con la Moltiplicazione:** $\forall x, y, z \in \mathbb{R}: z \ge 0 \land x \le y \implies x \cdot z \le y \cdot z$

La quintupla $(\mathbb{R}, +, \cdot, \le)$ definisce un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>campo totalmente ordinato</b></font></mark>.

### Notazioni e Proprietà d'Ordine
- Insieme dei reali positivi: $\mathbb{R}_+ := \{x \in \mathbb{R} \mid x \ge 0\}$.
- Insieme dei reali strettamente positivi: $\mathbb{R}_+^* := \{x \in \mathbb{R} \mid x > 0\}$.
- **Positività dei quadrati:** $\forall x \in \mathbb{R}: x^2 \ge 0$.
  *Dimostrazione:* Se $x \ge 0$, per MO $x \cdot x \ge 0 \cdot x = 0$. Se $x \le 0$, allora $-x \ge 0$, da cui $(-x)^2 = x^2 \ge 0$.
- In particolare, poiché $1 = 1^2$ e $1 \neq 0$, ne discende rigorosamente che $1 > 0$.
- **Inversione:** Se $x > 0$, allora $x^{-1} > 0$. Se $0 < x < y$, allora $y^{-1} < x^{-1}$.
- **Densità dell'ordinamento:**
  $$\forall x, y \in \mathbb{R}: x < y \implies \exists z \in \mathbb{R} \text{ tale che } x < z < y$$
  *Dimostrazione costruttiva:* È sufficiente scegliere il punto medio $z = \frac{x+y}{2} = 2^{-1}(x+y)$. Poiché $1 > 0 \implies 2 = 1+1 > 0$, applicando gli assiomi AO e MO si ottiene $x < \frac{x+y}{2} < y$.

## Intervalli di $\mathbb{R}$
Dati $a, b \in \mathbb{R}$ con $a \le b$, si definiscono:

### Intervalli Limitati
| Notazione | Denominazione | Definizione Insiemistica |
| :--- | :--- | :--- |
| $[a, b]$ | Intervallo chiuso | $\{x \in \mathbb{R} \mid a \le x \le b\}$ |
| $[a, b[$ | Semiaperto a destra | $\{x \in \mathbb{R} \mid a \le x < b\}$ |
| $]a, b]$ | Semiaperto a sinistra | $\{x \in \mathbb{R} \mid a < x \le b\}$ |
| $]a, b[$ | Intervallo aperto | $\{x \in \mathbb{R} \mid a < x < b\}$ |

Per ciascuno di questi intervalli, l'**ampiezza (o misura)** è data da $|I| := b - a$.
Proprietà metrica fondamentale: $\forall x, y \in I \implies |x - y| \le |I|$.

### Intervalli Illimitati
- Illimitati superiormente: $[a, \to[ = \{x \in \mathbb{R} \mid x \ge a\}$ e $]a, \to[ = \{x \in \mathbb{R} \mid x > a\}$.
- Illimitati inferiormente: $]\leftarrow, a] = \{x \in \mathbb{R} \mid x \le a\}$ e $]\leftarrow, a[ = \{x \in \mathbb{R} \mid x < a\}$.

## Maggioranti, Minoranti, Massimo e Minimo
Sia $A \subseteq \mathbb{R}$ un sottoinsieme non vuoto.

- $M \in \mathbb{R}$ è un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>maggiorante</b></font></mark> di $A$ se $\forall a \in A: a \le M$. L'insieme di tutti i maggioranti si indica con $U(A)$ (*upper bounds*). Se $U(A) \neq \emptyset$, $A$ si dice **limitato superiormente**.
- $m \in \mathbb{R}$ è un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>minorante</b></font></mark> di $A$ se $\forall a \in A: m \le a$. L'insieme dei minoranti si indica con $L(A)$ (*lower bounds*). Se $L(A) \neq \emptyset$, $A$ si dice **limitato inferiormente**.
- $A$ si dice **limitato** se è contemporaneamente limitato superiormente e inferiormente.

### Massimo e Minimo
- Se un maggiorante di $A$ **appartiene ad $A$**, esso è detto <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>massimo</b></font></mark> di $A$, denotato con $\max A$:
  $$M = \max A \iff M \in A \land (\forall a \in A: a \le M)$$
- Se un minorante di $A$ appartiene ad $A$, esso è detto <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>minimo</b></font></mark> di $A$, denotato con $\min A$:
  $$m = \min A \iff m \in A \land (\forall a \in A: m \le a)$$

In virtù della proprietà antisimmetrica dell'ordine O2, massimo e minimo, se esistono, sono **unici**.

*Distinzione concettuale:* Un insieme limitato non ammette necessariamente massimo o minimo. Consideriamo l'intervallo $A = [0, 1[$:
- $\min A = 0$, poiché $0 \in A$ e $0 \le x$ per ogni $x \in A$.
- L'insieme dei maggioranti è $U(A) = [1, +\infty)$. Nessun elemento di $U(A)$ appartiene ad $A$. Di conseguenza $\max A$ **non esiste**.

## L'Assioma di Completezza (di Dedekind)

### Estremo Superiore ed Estremo Inferiore
- L'**estremo superiore** di $A$, indicato con $\sup A$, è il minimo dei suoi maggioranti:
  $$\sup A := \min U(A)$$
- L'**estremo inferiore** di $B$, indicato con $\inf B$, è il massimo dei suoi minoranti:
  $$\inf B := \max L(B)$$

Relazione con massimo e minimo:
$$\max A \text{ esiste} \iff \sup A \text{ esiste ed appartiene ad } A \quad (\text{in tal caso } \max A = \sup A)$$
$$\min B \text{ esiste} \iff \inf B \text{ esiste ed appartiene ad } B \quad (\text{in tal caso } \min B = \inf B)$$

### Assioma di Completezza di Dedekind
Anche nel campo dei numeri razionali $\mathbb{Q}$ valgono tutti gli assiomi di campo e di ordinamento, ma $\mathbb{Q}$ presenta delle "lacune" (ad esempio il sottoinsieme $\{q \in \mathbb{Q} \mid q^2 < 2\}$ è limitato ma non ha estremo superiore in $\mathbb{Q}$). L'analisi matematica necessita dell'assioma che colma tali discontinuità:

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Assioma di Completezza:</b></font></mark>
Ogni sottoinsieme non vuoto di $\mathbb{R}$ superiormente limitato ammette estremo superiore in $\mathbb{R}$.

### Esistenza dell'Estremo Inferiore
**Proposizione:** Ogni sottoinsieme non vuoto di $\mathbb{R}$ inferiormente limitato ammette estremo inferiore in $\mathbb{R}$.

*Dimostrazione:*
Sia $B \subset \mathbb{R}, B \neq \emptyset$ inferiormente limitato. Consideriamo l'insieme dei suoi minoranti $L(B)$.
Poiché $B$ è inferiormente limitato, $L(B) \neq \emptyset$. Inoltre, ogni elemento $b \in B$ è per definizione un maggiorante per $L(B)$ (poiché $\forall m \in L(B): m \le b$).
Dunque $L(B)$ è un insieme non vuoto e superiormente limitato. Per l'Assioma di Completezza, $L(B)$ ammette estremo superiore in $\mathbb{R}$; poniamo $i := \sup L(B)$.
Essendo ogni $b \in B$ un maggiorante per $L(B)$, per la minimalità del sup si ha $i \le b$ per ogni $b \in B$, il che prova che $i \in L(B)$. Essendo un maggiorante di $L(B)$ appartenente a $L(B)$, esso ne è il massimo:
$$i = \max L(B) = \inf B$$

### Caratterizzazione Operativa di $\sup$ e $\inf$
**Proposizione:** Siano $A, B \subset \mathbb{R}$ insiemi non vuoti.
1. Se $A$ è superiormente limitato, allora $s = \sup A$ se e solo se:
   $$(\forall a \in A: a \le s) \quad \land \quad (\forall t < s, \exists a \in A : t < a)$$
   Posto $t = s - \varepsilon$ con $\varepsilon > 0$, la seconda condizione equivale a:
   $$\forall \varepsilon > 0, \exists a \in A : a > s - \varepsilon$$
2. Se $B$ è inferiormente limitato, allora $i = \inf B$ se e solo se:
   $$(\forall b \in B: i \le b) \quad \land \quad (\forall t > i, \exists b \in B : b < t)$$
   Posto $t = i + \varepsilon$ con $\varepsilon > 0$, equivale a:
   $$\forall \varepsilon > 0, \exists b \in B : b < i + \varepsilon$$

*Dimostrazione per $\sup A$:*
- $(\implies)$ Se $s = \sup A$, la prima condizione è vera poiché $s$ è maggiorante. Supponendo per assurdo falsa la seconda, esisterebbe $t < s$ tale che $\forall a \in A, a \le t$. Allora $t$ sarebbe un maggiorante di $A$ strettamente minore del minimo maggiorante $s$, assurdo.
- $(\impliedby)$ La prima condizione garantisce che $s \in U(A)$. La seconda assicura che nessun numero $t < s$ può essere maggiorante. Di conseguenza $s$ è il più piccolo dei maggioranti, ossia $s = \min U(A) = \sup A$.

### Teorema dell'Elemento Separatore
**Teorema:** Siano $A$ e $B$ due sottoinsiemi non vuoti di $\mathbb{R}$ tali che ogni elemento di $A$ è minore o uguale a ogni elemento di $B$:
$$\forall a \in A, \forall b \in B: a \le b$$
Allora:
$$\sup A \le \inf B$$
e ogni numero reale $\lambda \in [\sup A, \inf B]$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>elemento separatore</b></font></mark> per le due classi, soddisfacendo:
$$\forall a \in A, \forall b \in B: a \le \lambda \le b$$
