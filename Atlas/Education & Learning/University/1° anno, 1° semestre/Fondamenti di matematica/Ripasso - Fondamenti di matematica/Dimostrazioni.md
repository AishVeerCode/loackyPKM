---
status: permanent
type: summary
area: education
related: ["[[Lezione 1 - Logica delle Proposizioni e dei Predicati]]", "[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[Lezione 3 - Relazioni e Funzioni I]]", "[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]", "[[Lezione 5 - i Numeri Reali e Assioma di Completezza]]", "[[Lezione 6 - Valore Assoluto e Numeri Naturali]]", "[[Lezione 7 - Insiemi Numerici N Z e Q]]", "[[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]", "[[Lezione 9 - Funzioni Reali ed Estremi]]", "[[Lezione 10 - Funzioni Reali II e Funzioni Elementari I]]", "[[Lezione 11 - Funzioni Reali Elementari II]]", "[[Lezione 12 - Limiti I Retta Reale Ampliata e Definizione]]", "[[Lezione 13 - Limiti II Restrizioni Limiti Laterali e Successioni]]", "[[Lezione 14 - Limiti di Successioni e Proprieta Locali]]", "[[Assiomi, proposizioni ecc...]]", "[[University]]"]
aliases: ["Dimostrazioni", "Dimostrazioni Fondamenti di Matematica", "Raccolta Dimostrazioni Lezioni 1-14"]
source: ["Lezione 1.pdf", "Lezione 2.pdf", "Lezione 3.pdf", "Lezione 4.pdf", "Lezione 5.pdf", "Lezione 6.pdf", "Lezione 7.pdf", "Lezione 8.pdf", "Lezione 9.pdf", "Lezione 10.pdf", "Lezione 11.pdf", "Lezione 12.pdf", "Lezione 13.pdf", "Lezione 14.pdf"]
title: "Dimostrazioni"
date: '2026-10-15'
updated: '2026-10-15T19:50'
tags: [education/university, education/matematica, education/dimostrazioni]
summary: "Compendio integrale e rigoroso di tutte le dimostrazioni matematiche svolte nel corso di Fondamenti di Matematica dalla Lezione 1 alla Lezione 14."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Dimostrazioni]]

# Dimostrazioni

Raccolta esaustiva di tutte le dimostrazioni analitiche e algebriche svolte nelle Lezioni da 1 a 14 del corso di Fondamenti di Matematica, articolate con passaggi logico-deduttivi formali, esplicitazione delle ipotesi e verifica delle tesi.

---

## Lezione 1: Logica delle Proposizioni e dei Predicati

### Dimostrazione per Contronominale: Parità di $n$ da $n^2$
>[!important] Enunciato
>Sia $n \in \mathbb{N}$. Se $n^2$ è pari, allora $n$ è pari:
>$$n^2 \text{ è pari} \implies n \text{ è pari}$$

**Dimostrazione:**
L'enunciato ha la forma condizionale $P(n) \implies Q(n)$, dove:
- $P(n) \equiv n^2 \text{ è pari}$
- $Q(n) \equiv n \text{ è pari}$

Per il principio logico di contrapposizione, l'implicazione $P \implies Q$ è logicamente equivalente alla sua contronominale:
$$\neg Q(n) \implies \neg P(n)$$
dove $\neg Q(n) \equiv n \text{ è dispari}$ e $\neg P(n) \equiv n^2 \text{ è dispari}$.
1. Assumiamo vera la negazione della tesi $\neg Q(n)$: $n$ è dispari.
2. Per definizione di intero dispari, esiste un intero $k \in \mathbb{N}$ tale che:
   $$n = 2k + 1$$
3. Calcoliamo il quadrato di $n$:
   $$n^2 = (2k + 1)^2 = 4k^2 + 4k + 1 = 2(2k^2 + 2k) + 1$$
4. Poiché $k \in \mathbb{N}$, anche $m = 2k^2 + 2k \in \mathbb{N}$. Ne consegue:
   $$n^2 = 2m + 1$$
   il che prova che $n^2$ è un numero dispari ($\neg P(n)$ è vera).
5. Essendo provata l'implicazione contronominale $\neg Q \implies \neg P$, risulta dimostrata l'implicazione diretta originaria $P \implies Q$. $\blacksquare$

### Dimostrazione delle Leggi di De Morgan per il Calcolo Proposizionale
>[!important] Enunciato
>Siano $P$ e $Q$ due proposizioni logiche. Valgono le equivalenze:
>1. $\neg(P \land Q) \iff \neg P \lor \neg Q$
>2. $\neg(P \lor Q) \iff \neg P \land \neg Q$

**Dimostrazione:**
Verifichiamo la prima legge mediante la tabella di verità comparativa per tutte le 4 combinazioni dei valori di verità di $P$ e $Q$:

| $P$ | $Q$ | $P \land Q$ | $\neg(P \land Q)$ | $\neg P$ | $\neg Q$ | $\neg P \lor \neg Q$ | $\neg(P \land Q) \iff (\neg P \lor \neg Q)$ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| $V$ | $V$ | $V$ | **$F$** | $F$ | $F$ | **$F$** | **$V$** |
| $V$ | $F$ | $F$ | **$V$** | $F$ | $V$ | **$V$** | **$V$** |
| $F$ | $V$ | $F$ | **$V$** | $V$ | $F$ | **$V$** | **$V$** |
| $F$ | $F$ | $F$ | **$V$** | $V$ | $V$ | **$V$** | **$V$** |

Poiché l'ultima colonna contiene esclusivamente il valore $V$, la proposizione composta è una tautologia, il che prova l'equivalenza semantica. La seconda legge si dimostra in modo del tutto speculare. $\blacksquare$

---

## Lezione 2: Teoria Assiomatica degli Insiemi

### Teorema di Unicità dell'Insieme Vuoto
>[!important] Enunciato
>Esiste un unico insieme privo di elementi, denotato con $\emptyset$.

**Dimostrazione:**
L'Assioma dell'Insieme Vuoto stabilisce l'esistenza di un insieme $E$ tale che $\forall x, x \notin E$.
Supponiamo per assurdo che esistano due insiemi privi di elementi, $E_1$ ed $E_2$.
Per l'Assioma di Estensionalità, due insiemi sono uguali se e solo se possiedono gli stessi elementi:
$$\forall x, (x \in E_1 \iff x \in E_2)$$
Poiché $E_1$ non contiene elementi, la premessa $x \in E_1$ è sempre falsa per ogni $x$, rendendo l'implicazione $x \in E_1 \implies x \in E_2$ banalmente vera. Analogamente, la premessa $x \in E_2$ è sempre falsa, rendendo vera l'implicazione inversa $x \in E_2 \implies x \in E_1$.
Di conseguenza, la coimplicazione $x \in E_1 \iff x \in E_2$ è identicamente vera per ogni $x$. Ne segue $E_1 = E_2$, stabilendo l'unicità dell'insieme vuoto $\emptyset$. $\blacksquare$

### Dimostrazione del Criterio di Doppia Inclusione
>[!important] Enunciato
>Siano $A$ e $B$ due insiemi. Allora:
>$$A = B \iff (A \subseteq B \land B \subseteq A)$$

**Dimostrazione:**
Per definizione di inclusione insiemistica:
- $A \subseteq B \iff (\forall x, x \in A \implies x \in B)$
- $B \subseteq A \iff (\forall x, x \in B \implies x \in A)$
Congiungendo le due affermazioni:
$$(A \subseteq B \land B \subseteq A) \iff \forall x, (x \in A \implies x \in B) \land (x \in B \implies x \in A) \iff \forall x, (x \in A \iff x \in B)$$
Per l'Assioma di Estensionalità, la condizione $\forall x, (x \in A \iff x \in B)$ equivale a $A = B$. $\blacksquare$

### Teorema di Esistenza e Unicità del Minimo Insieme Induttivo $\mathbb{N}$
>[!important] Enunciato
>Dato un insieme induttivo $W$ garantito dall'Assioma dell'Infinito, esiste un unico più piccolo sottoinsieme induttivo di $W$, identificato con l'insieme dei numeri naturali $\mathbb{N}$.

**Dimostrazione:**
Sia $W$ un insieme induttivo. Consideriamo la famiglia di tutti i sottoinsiemi di $W$ che sono a loro volta insiemi induttivi:
$$\mathcal{F} = \{A \in \mathcal{P}(W) : A \text{ è induttivo}\}$$
Tale famiglia non è vuota poiché $W \in \mathcal{F}$. Poniamo:
$$\mathbb{N} = \bigcap_{A \in \mathcal{F}} A$$
1. $\mathbb{N}$ è un insieme induttivo:
   - Poiché $\emptyset \in A$ per ogni $A \in \mathcal{F}$, per definizione di intersezione si ha $\emptyset \in \mathbb{N}$.
   - Se $x \in \mathbb{N}$, allora $x \in A$ per ogni $A \in \mathcal{F}$. Essendo ciascun $A$ induttivo, ne segue che il successore $x^+ = x \cup \{x\} \in A$ per ogni $A \in \mathcal{F}$. Di conseguenza $x^+ \in \mathbb{N}$.
2. $\mathbb{N}$ è il minimo insieme induttivo:
   - Se $B$ è un qualsiasi sottoinsieme induttivo di $W$, allora $B \in \mathcal{F}$. Per definizione di intersezione di una famiglia, $\bigcap_{A \in \mathcal{F}} A \subseteq B$, ossia $\mathbb{N} \subseteq B$.
L'unicità discende dalla proprietà di minimo: se esistessero due insiemi minimi $\mathbb{N}_1$ e $\mathbb{N}_2$, si avrebbe $\mathbb{N}_1 \subseteq \mathbb{N}_2$ e $\mathbb{N}_2 \subseteq \mathbb{N}_1$, donde $\mathbb{N}_1 = \mathbb{N}_2$. $\blacksquare$

---

## Lezione 3: Relazioni e Funzioni I

### Teorema della Proprietà Caratteristica della Coppia Ordinata di Kuratowski
>[!important] Enunciato
>Siano definiti $(x, y) = \{\{x\}, \{x, y\}\}$ e $(a, b) = \{\{a\}, \{a, b\}\}$. Allora:
>$$(x, y) = (a, b) \iff x = a \land y = b$$

**Dimostrazione:**
L'implicazione $(\Leftarrow)$ è ovvia: se $x = a$ e $y = b$, allora per sostituzione $\{\{x\}, \{x, y\}\} = \{\{a\}, \{a, b\}\}$.

Dimostriamo l'implicazione diretta $(\Rightarrow)$. Assumiamo che:
$$\{\{x\}, \{x, y\}\} = \{\{a\}, \{a, b\}\}$$
Notiamo preliminarmente che $(x, x) = \{\{x\}, \{x, x\}\} = \{\{x\}, \{x\}\} = \{\{x\}\}$, che è un singoletto di un singoletto.
Distinguiamo due casi mutuamente esclusivi:
- **Caso 1: $x = y$.**
  In questo caso $(x, y) = \{\{x\}\}$. Poiché $\{\{a\}, \{a, b\}\} = \{\{x\}\}$, l'insieme a destra deve essere un singoletto il cui unico elemento è $\{x\}$. Ne segue che:
  $$\{a\} = \{x\} \implies a = x$$
  $$\{a, b\} = \{x\} \implies a = b = x$$
  Quindi $a = x$ e $b = x = y$, da cui $x = a \land y = b$.
- **Caso 2: $x \ne y$.**
  In questo caso $\{\{x\}, \{x, y\}\}$ è un insieme costituito da due elementi distinti: il singoletto $\{x\}$ e la coppia non ordinata $\{x, y\}$ (avente due elementi).
  Poiché $\{\{a\}, \{a, b\}\} = \{\{x\}, \{x, y\}\}$, anche l'insieme a destra deve contenere un singoletto e una coppia di due elementi distinti.
  L'unico singoletto presente a destra è $\{a\}$, mentre a sinistra è $\{x\}$. Uguagliando i singoletti:
  $$\{a\} = \{x\} \implies a = x$$
  Uguagliando i rimanenti elementi (le coppie con due elementi):
  $$\{a, b\} = \{x, y\}$$
  Sostituendo $a = x$:
  $$\{x, b\} = \{x, y\}$$
  Dato che $y \in \{x, y\}$, deve risultare $y \in \{x, b\}$. Poiché per ipotesi del Caso 2 $y \ne x$, l'unica possibilità è $y = b$.

In entrambi i casi si ottiene $x = a$ e $y = b$. $\blacksquare$

---

## Lezione 4: Funzioni II, Proprietà e Invertibilità

### Teorema Fondamentale di Invertibilità
>[!important] Enunciato
>Sia $f: A \to B$ una funzione. Le seguenti affermazioni sono equivalenti:
>1. $f$ è invertibile, ossia esiste una funzione $g: B \to A$ tale che:
>   $$g \circ f = i_A \quad \text{e} \quad f \circ g = i_B$$
>2. $f$ è bigettiva (iniettiva e suriettiva).
>Inoltre, la funzione inversa $g$ è unica ed è denotata con $f^{-1}$.

**Dimostrazione:**
- **Dimostrazione $(1 \implies 2)$:**
  Supponiamo che esista $g: B \to A$ tale che $g(f(x)) = x$ per ogni $x \in A$ e $f(g(y)) = y$ per ogni $y \in B$.
  - *Iniettività:* Siano $x_1, x_2 \in A$ con $f(x_1) = f(x_2)$. Applicando la funzione $g$ ad ambo i membri:
  $$g(f(x_1)) = g(f(x_2))$$
    Essendo $g(f(x)) = x$, otteniamo $x_1 = x_2$. Quindi $f$ è iniettiva.
  - *Suriettività:* Sia $y \in B$ un elemento arbitrario. Poniamo $x = g(y) \in A$. Applicando $f$:
  $$f(x) = f(g(y)) = y$$
    Abbiamo trovato un elemento $x \in A$ la cui immagine tramite $f$ è $y$. Dunque $f$ è suriettiva.
  Essendo iniettiva e suriettiva, $f$ è bigettiva.

- **Dimostrazione $(2 \implies 1)$:**
  Supponiamo che $f$ sia bigettiva.
  Per ogni fissato $y \in B$, consideriamo l'equazione $f(x) = y$:
  - Per la suriettività di $f$, esiste almeno un $x \in A$ tale che $f(x) = y$.
  - Per l'iniettività di $f$, tale $x$ è unico (se $f(x_1) = f(x_2) = y$, allora $x_1 = x_2$).
  Possiamo quindi definire una funzione $g: B \to A$ associando ad ogni $y \in B$ l'unico $x \in A$ che soddisfa $f(x) = y$, ossia $g(y) = x$.
  Verifichiamo le due composizioni:
  - Per ogni $x \in A$, ponendo $y = f(x)$, si ha per costruzione $g(y) = x$, ossia $g(f(x)) = x \implies g \circ f = i_A$.
  - Per ogni $y \in B$, per costruzione $g(y)$ è l'elemento $x$ tale che $f(x) = y$, ossia $f(g(y)) = y \implies f \circ g = i_B$.
  Dunque $f$ è invertibile.

- **Dimostrazione dell'Unicità dell'Inversa:**
  Supponiamo che esistano due funzioni inverse $g_1, g_2: B \to A$ tali che $g_1 \circ f = i_A$ e $f \circ g_2 = i_B$. Sfruttando la proprietà associativa della composizione:
  $$g_1 = g_1 \circ i_B = g_1 \circ (f \circ g_2) = (g_1 \circ f) \circ g_2 = i_A \circ g_2 = g_2$$
  L'inversa è pertanto unica. $\blacksquare$

### Teorema sull'Inversa della Composizione
>[!important] Enunciato
>Siano $f: A \to B$ e $g: B \to C$ due funzioni invertibili. Allora la composizione $g \circ f: A \to C$ è invertibile e risulta:
>$$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$$

**Dimostrazione:**
Per verificare che una funzione $h: C \to A$ è l'inversa di $g \circ f$, è sufficiente verificare che $h \circ (g \circ f) = i_A$ e $(g \circ f) \circ h = i_C$. Poniamo $h = f^{-1} \circ g^{-1}$:
1. Composizione a sinistra:
   $$(f^{-1} \circ g^{-1}) \circ (g \circ f) = f^{-1} \circ (g^{-1} \circ g) \circ f = f^{-1} \circ i_B \circ f = f^{-1} \circ f = i_A$$
2. Composizione a destra:
   $$(g \circ f) \circ (f^{-1} \circ g^{-1}) = g \circ (f \circ f^{-1}) \circ g^{-1} = g \circ i_B \circ g^{-1} = g \circ g^{-1} = i_C$$
Per l'unicità dell'inversa, $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$. $\blacksquare$

---

## Lezione 5: I Numeri Reali e Assioma di Completezza

### Dimostrazione della Legge di Annullamento del Prodotto
>[!important] Enunciato
>Siano $x, y \in \mathbb{R}$. Allora:
>$$x \cdot y = 0 \iff x = 0 \lor y = 0$$

**Dimostrazione:**
- Se $x = 0$, $0 \cdot y = (0 + 0)y = 0 \cdot y + 0 \cdot y$. Sottraendo $0 \cdot y$ ad ambo i membri, si ottiene $0 = 0 \cdot y$. Analogamente per $y = 0$. Quindi $(x = 0 \lor y = 0) \implies xy = 0$.
- Viceversa, sia $x \cdot y = 0$. Supponiamo che $x \ne 0$. Poiché $(\mathbb{R}, +, \cdot)$ è un campo, per l'Assioma M4 esiste l'inverso moltiplicativo $x^{-1} \in \mathbb{R}$. Moltiplicando ambo i membri per $x^{-1}$:
  $$x^{-1} \cdot (x \cdot y) = x^{-1} \cdot 0$$
  Applicando la proprietà associativa M2 a sinistra e la proprietà dello zero a destra:
  $$(x^{-1} \cdot x) \cdot y = 0 \implies 1 \cdot y = 0 \implies y = 0$$
Dunque, se $x \ne 0$, necessariamente $y = 0$, il che dimostra la disgiunzione $x = 0 \lor y = 0$. $\blacksquare$

### Teorema di Esistenza dell'Estremo Inferiore
>[!important] Enunciato
>Ogni sottoinsieme non vuoto $B \subset \mathbb{R}$ limitato inferiormente ammette estremo inferiore in $\mathbb{R}$:
>$$\exists \inf B \in \mathbb{R}$$

**Dimostrazione:**
Sia $B \subset \mathbb{R}$ non vuoto e limitato inferiormente. Definiamo l'insieme opposto:
$$-B = \{-b \in \mathbb{R} : b \in B\}$$
1. Poiché $B \ne \emptyset$, anche $-B \ne \emptyset$.
2. Essendo $B$ limitato inferiormente, esiste un minorante $m \in \mathbb{R}$ tale che $\forall b \in B, m \le b$.
3. Per gli assiomi di ordinamento, moltiplicando per $-1$:
   $$m \le b \iff -b \le -m, \quad \forall b \in B$$
   Ciò implica che ogni elemento $x \in -B$ soddisfa $x \le -m$. Pertanto, $-B$ è limitato superiormente da $-m$.
4. Per l'Assioma di Completezza di Dedekind, l'insieme $-B$, essendo non vuoto e superiormente limitato, ammette estremo superiore in $\mathbb{R}$:
   $$\lambda = \sup(-B) \in \mathbb{R}$$
5. Dimostriamo che $-\lambda = \inf B$:
   - *Minorante:* $\forall b \in B$, $-b \in -B \implies -b \le \lambda \iff b \ge -\lambda$. Quindi $-\lambda$ è un minorante per $B$.
   - *Massimo minorante:* Sia $m'$ un qualsiasi minorante di $B$, ossia $\forall b \in B, m' \le b$. Allora $\forall b \in B, -b \le -m'$, ossia $-m'$ è un maggiorante per $-B$. Poiché $\lambda = \sup(-B)$ è il *minimo* dei maggioranti, si ha $\lambda \le -m' \iff m' \le -\lambda$.
Dunque $-\lambda$ è il massimo dei minoranti di $B$, ovvero $\inf B = -\sup(-B)$. $\blacksquare$

### Teorema di Caratterizzazione Operativa ($\varepsilon$) dell'Estremo Superiore
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ non vuoto e limitato superiormente. Un numero reale $M \in \mathbb{R}$ coincide con $\sup A$ se e solo se soddisfa le due condizioni:
>1. $\forall a \in A, a \le M$ ($M$ è un maggiorante);
>2. $\forall \varepsilon > 0, \exists a \in A : a > M - \varepsilon$ (nessun numero minore di $M$ è maggiorante).

**Dimostrazione:**
- $(\implies)$ Sia $M = \sup A$.
  - Per definizione di estremo superiore, $M$ è un maggiorante di $A$, perciò la condizione (1) è soddisfatta.
  - Sia ora $\varepsilon > 0$. Consideriamo il numero reale $M - \varepsilon$. Poiché $\varepsilon > 0$, si ha $M - \varepsilon < M$.
  - Essendo $M$ il *minimo* dei maggioranti, $M - \varepsilon$ non può essere un maggiorante per $A$. Negando la proposizione di maggiorante, deve esistere almeno un elemento $a \in A$ tale che $a > M - \varepsilon$, verificando la condizione (2).
- $(\impliedby)$ Assumiamo che $M$ soddisfi le condizioni (1) e (2).
  - Dalla condizione (1), $M$ è un maggiorante di $A$.
  - Supponiamo per assurdo che esista un maggiorante $M'$ strettamente minore di $M$, ossia $M' < M$.
  - Poniamo $\varepsilon = M - M' > 0$. Per la condizione (2), in corrispondenza di tale $\varepsilon$ esiste un elemento $a \in A$ tale che:
  $$a > M - \varepsilon = M - (M - M') = M'$$
  - Ma $a > M'$ contraddice l'ipotesi che $M'$ sia un maggiorante per $A$.
  - Pertanto nessun numero strettamente minore di $M$ è un maggiorante: $M$ è il minimo dei maggioranti, ossia $M = \sup A$. $\blacksquare$

---

## Lezione 6: Valore Assoluto e Numeri Naturali

### Teorema della Disuguaglianza Triangolare e Triangolare Inversa
>[!important] Enunciato
>Per ogni $x, y \in \mathbb{R}$ valgono:
>1. $|x + y| \le |x| + |y|$ *(Disuguaglianza Triangolare)*
>2. $||x| - |y|| \le |x - y|$ *(Disuguaglianza Triangolare Inversa)*

**Dimostrazione:**
- **Dimostrazione 1 (Triangolare):**
  Dalla proprietà $|t| \le r \iff -r \le t \le r$, sappiamo che per ogni $x, y \in \mathbb{R}$:
  $$-|x| \le x \le |x| \quad \text{e} \quad -|y| \le y \le |y|$$
  Sommando membro a membro le due catene di disuguaglianze per compatibilità dell'ordinamento con l'addizione:
  $$-(|x| + |y|) \le x + y \le |x| + |y|$$
  Applicando nuovamente l'equivalenza fondamentale con $t = x+y$ e $r = |x| + |y|$, deduciamo direttamente:
  $$|x + y| \le |x| + |y|$$

- **Dimostrazione 2 (Triangolare Inversa):**
  Scriviamo $x$ come somma telescopica: $x = (x - y) + y$. Applicando la disuguaglianza triangolare:
  $$|x| = |(x - y) + y| \le |x - y| + |y| \implies |x| - |y| \le |x - y|$$
  Invertendo i ruoli di $x$ e $y$:
  $$|y| - |x| \le |y - x| = |-(x - y)| = |x - y| \implies -(|x| - |y|) \le |x - y|$$
  Unificando le due disuguaglianze:
  $$-|x - y| \le |x| - |y| \le |x - y| \iff ||x| - |y|| \le |x - y| \quad \blacksquare$$

### Teorema di Discretezza dei Numeri Naturali
>[!important] Enunciato
>1. Per ogni $m \in \mathbb{N}$, non esiste alcun numero naturale $n \in \mathbb{N}$ tale che $m < n < m + 1$.
>2. Per ogni $m, n \in \mathbb{N}$, se $m < n$, allora $m + 1 \le n$.

**Dimostrazione:**
Dimostriamo la prima asserzione per induzione su $m \in \mathbb{N}$:
- *Base dell'induzione ($m = 0$):* Vogliamo provare che non esiste alcun $n \in \mathbb{N}$ tale che $0 < n < 1$.
  Consideriamo l'insieme $A = \{0\} \cup [1, +\infty[ \subset \mathbb{R}$.
  Verifichiamo che $A$ è induttivo:
  - $0 \in A$ per definizione.
  - Sia $x \in A$: se $x = 0$, allora $x + 1 = 1 \in A$; se $x \in [1, +\infty[$, allora $x \ge 1 \implies x + 1 \ge 2 \ge 1$, quindi $x + 1 \in A$.
  Essendo $A$ un insieme induttivo, per la minimalità di $\mathbb{N}$ si ha $\mathbb{N} \subseteq A$.
  Di conseguenza, nessun numero naturale può cadere nell'intervallo aperto $]0, 1[$. Dunque per $m=0$ la proprietà è vera.
- *Passo induttivo ($m \implies m + 1$):* Supponiamo che non esistano naturali in $]m, m+1[$.
  Supponiamo per assurdo che esista $k \in \mathbb{N}$ tale che $m + 1 < k < (m + 1) + 1 = m + 2$.
  Poiché $k > m + 1 \ge 1 > 0$, $k \ne 0$. Per il teorema di esistenza del predecessore, esiste $n \in \mathbb{N}$ tale che $k = n + 1$.
  Sostituendo $k = n + 1$:
  $$m + 1 < n + 1 < m + 2 \iff m < n < m + 1$$
  Ma ciò contraddice l'ipotesi induttiva, poiché $n \in \mathbb{N}$ si troverebbe strettamente tra $m$ e $m+1$.
Pertanto non esistono naturali strettamente compresi tra $m$ e $m+1$.
Da ciò segue immediatamente che se $m < n$, non potendo $n$ cadere in $]m, m+1[$, deve necessariamente risultare $n \ge m + 1$. $\blacksquare$

---

## Lezione 7: Insiemi Numerici $\mathbb{N}$, $\mathbb{Z}$ e $\mathbb{Q}$

### Teorema del Buon Ordinamento di $\mathbb{N}$
>[!important] Enunciato
>Ogni sottoinsieme non vuoto $X \subseteq \mathbb{N}$ ammette elemento minimo:
>$$\forall \emptyset \ne X \subseteq \mathbb{N}, \exists \min X \in X$$

**Dimostrazione:**
Supponiamo per assurdo che esista un sottoinsieme non vuoto $X \subseteq \mathbb{N}$ privo di minimo.
Definiamo l'insieme dei numeri naturali che sono minoranti stretti di $X$:
$$A = \{n \in \mathbb{N} : \forall x \in X, n < x\}$$
Dimostriamo per induzione che $A = \mathbb{N}$:
- *Base dell'induzione ($n = 0$):* Poiché $0 \le x$ per ogni $x \in \mathbb{N}$, se esistesse $x \in X$ con $x = 0$, allora $0$ sarebbe il minimo di $X$, contro l'ipotesi di assenza di minimo. Dunque $\forall x \in X, 0 < x$, il che implica $0 \in A$.
- *Passo induttivo ($n \in A \implies n + 1 \in A$):* Sia $n \in A$. Allora per ogni $x \in X$, $n < x$.
  Per il Teorema di discretezza, $n < x \implies n + 1 \le x$.
  Se esistesse $x \in X$ tale che $x = n + 1$, allora $n + 1$ sarebbe il minimo di $X$ (essendo minore o uguale a tutti gli elementi di $X$), contraddicendo l'ipotesi.
  Di conseguenza, per ogni $x \in X$ deve valere $n + 1 < x$, da cui $n + 1 \in A$.
Per il principio di induzione, $A = \mathbb{N}$.
Ma se $A = \mathbb{N}$, nessun numero naturale può appartenere ad $X$, poiché ogni $n \in \mathbb{N}$ è strettamente minore di tutti gli elementi di $X$. Ciò implica che $X = \emptyset$, contraddicendo l'ipotesi $X \ne \emptyset$.
Dunque ogni sottoinsieme non vuoto di $\mathbb{N}$ ammette elemento minimo. $\blacksquare$

### Teorema della Divisione Euclidea
>[!important] Enunciato
>Siano $n, m \in \mathbb{N}$ con $m \ne 0$. Esiste ed è unica la coppia di interi $(q, r) \in \mathbb{N} \times \mathbb{N}$ tale che:
>$$n = m \cdot q + r \quad \text{con} \quad 0 \le r < m$$

**Dimostrazione:**
- **Esistenza:**
  Consideriamo l'insieme dei multipli di $m$ che non superano $n$:
  $$A = \{k \in \mathbb{N} : k \cdot m \le n\}$$
  - $A$ non è vuoto perché $0 \cdot m = 0 \le n \implies 0 \in A$.
  - $A$ è limitato superiormente da $n$: poiché $m \ge 1$, $k \le k \cdot m \le n$, dunque ogni $k \in A$ soddisfa $k \le n$.
  Essendo $A$ un sottoinsieme di $\mathbb{N}$ non vuoto e superiormente limitato, ammette massimo:
  $$q = \max A \in \mathbb{N}$$
  Poniamo $r = n - m \cdot q$.
  Poiché $q \in A$, $m \cdot q \le n \implies r = n - mq \ge 0$.
  Inoltre, poiché $q$ è il massimo di $A$, $q + 1 \notin A$, il che significa:
  $$(q + 1)m > n \implies qm + m > n \implies m > n - qm = r \implies r < m$$
  Abbiamo quindi trovato $q, r \in \mathbb{N}$ con $n = mq + r$ e $0 \le r < m$.
- **Unicità:**
  Supponiamo che esistano due coppie $(q_1, r_1)$ e $(q_2, r_2)$ che soddisfano le condizioni. Allora:
  $$mq_1 + r_1 = mq_2 + r_2 \implies m(q_1 - q_2) = r_2 - r_1$$
  Supponiamo senza perdita di generalità $q_1 \ge q_2$.
  Se fosse $q_1 > q_2$, avremmo $q_1 - q_2 \ge 1 \implies m(q_1 - q_2) \ge m$.
  D'altra parte, poiché $0 \le r_1, r_2 < m$, la differenza soddisfa $r_2 - r_1 \le r_2 < m$.
  Ne risulterebbe $m \le m(q_1 - q_2) = r_2 - r_1 < m$, assurdo ($m < m$).
  Quindi deve essere $q_1 = q_2$. Sostituendo, $m \cdot 0 = r_2 - r_1 \implies r_1 = r_2$. $\blacksquare$

### Dimostrazione della Disuguaglianza di Bernoulli
>[!important] Enunciato
>Per ogni $x \ge -1$ e per ogni $n \in \mathbb{N}$ si ha:
>$$(1 + x)^n \ge 1 + n x$$

**Dimostrazione per Induzione su $n$:**
- *Base dell'induzione ($n = 0$):*
  $$(1 + x)^0 = 1 \quad \text{e} \quad 1 + 0 \cdot x = 1 \implies 1 \ge 1 \quad \text{(Vera)}$$
- *Passo induttivo ($n \implies n + 1$):*
  Assumiamo vera l'ipotesi induttiva per $n$: $(1 + x)^n \ge 1 + n x$.
  Vogliamo dimostrare che $(1 + x)^{n+1} \ge 1 + (n+1)x$.
  Poiché $x \ge -1$, si ha $1 + x \ge 0$. Possiamo dunque moltiplicare entrambi i membri dell'ipotesi induttiva per la quantità non negativa $(1 + x)$ preservando il verso della disuguaglianza:
  $$(1 + x)^{n+1} = (1 + x)^n \cdot (1 + x) \ge (1 + nx)(1 + x)$$
  Sviluppiamo il prodotto algebrico a destra:
  $$(1 + nx)(1 + x) = 1 + x + nx + nx^2 = 1 + (n + 1)x + n x^2$$
  Poiché $n \in \mathbb{N}$ e $x^2 \ge 0$, il termine $nx^2 \ge 0$. Omettendo tale quantità non negativa:
  $$1 + (n + 1)x + n x^2 \ge 1 + (n + 1)x$$
  Concatenando le disuguaglianze, otteniamo:
  $$(1 + x)^{n+1} \ge 1 + (n + 1)x$$
La disuguaglianza è provata per ogni $n \in \mathbb{N}$. $\blacksquare$

### Dimostrazione dell'Irrazionalità di $\sqrt{2}$
>[!important] Enunciato
>Non esiste alcun numero razionale $x \in \mathbb{Q}$ tale che $x^2 = 2$.

**Dimostrazione per Assurdo:**
Supponiamo che esista un razionale $x \in \mathbb{Q}$ tale che $x^2 = 2$.
Poiché $x^2 = (-x)^2$, possiamo supporre senza perdita di generalità $x > 0$.
Possiamo quindi scrivere $x$ come frazione ridotta ai minimi termini:
$$x = \frac{m}{n}, \quad m, n \in \mathbb{N}^* \quad \text{con} \quad \mathrm{MCD}(m, n) = 1$$
Elevando al quadrato:
$$\frac{m^2}{n^2} = 2 \implies m^2 = 2n^2$$
1. L'uguaglianza mostra che $m^2$ è un numero pari.
2. Per il Teorema dimostrato nella Lezione 1 (per contronominale), se $m^2$ è pari, allora $m$ è pari.
3. Esiste quindi un intero $k \in \mathbb{N}^*$ tale che $m = 2k$.
4. Sostituendo $m = 2k$ nell'equazione:
   $$(2k)^2 = 2n^2 \implies 4k^2 = 2n^2 \implies 2k^2 = n^2$$
5. L'uguaglianza mostra ora che anche $n^2$ è pari, il che implica che $n$ è pari.
6. Abbiamo ottenuto che sia $m$ sia $n$ sono divisibili per $2$, il che contraddice l'ipotesi che la frazione $m/n$ fosse ridotta ai minimi termini ($\mathrm{MCD}(m, n) = 1$).
L'assurdo dimostra che $\sqrt{2} \notin \mathbb{Q}$. $\blacksquare$

### Dimostrazione dell'Incompletezza di $\mathbb{Q}$
>[!important] Enunciato
>L'insieme $A = \{x \in \mathbb{Q} : x \ge 0 \land x^2 < 2\} \subset \mathbb{Q}$ è non vuoto e superiormente limitato in $\mathbb{Q}$, ma non ammette estremo superiore in $\mathbb{Q}$.

**Dimostrazione:**
1. $A \ne \emptyset$ poiché $1 \in \mathbb{Q}$, $1 \ge 0$ e $1^2 = 1 < 2 \implies 1 \in A$.
2. $A$ è limitato superiormente in $\mathbb{Q}$: per ogni $x \in A$, se fosse $x > 2$ si avrebbe $x^2 > 4 > 2$, assurdo; quindi $x \le 2$ per ogni $x \in A$. Un maggiorante è $2 \in \mathbb{Q}$.
3. Supponiamo per assurdo che esista $\lambda = \sup A \in \mathbb{Q}$. Poiché $1 \in A$, deve essere $\lambda \ge 1 > 0$.
   Poiché $\sqrt{2}$ è irrazionale, non può essere $\lambda^2 = 2$. Rimangono due casi:
   - **Caso $\lambda^2 < 2$:**
     Costruiamo un elemento di $A$ strettamente maggiore di $\lambda$. Scegliamo un intero $n \ge 1$ tale che:
  $$\left(\lambda + \frac{1}{n}\right)^2 < 2$$
     Sviluppando: $\left(\lambda + \frac{1}{n}\right)^2 = \lambda^2 + \frac{2\lambda}{n} + \frac{1}{n^2} \le \lambda^2 + \frac{2\lambda + 1}{n}$.
     Basta imporre $\lambda^2 + \frac{2\lambda+1}{n} < 2 \iff \frac{2\lambda+1}{n} < 2 - \lambda^2 \iff n > \frac{2\lambda+1}{2 - \lambda^2}$.
     Per la proprietà archimedea, tale $n \in \mathbb{N}^*$ esiste. Allora $\lambda + \frac{1}{n} \in \mathbb{Q}$, $\left(\lambda + \frac{1}{n}\right)^2 < 2 \implies \lambda + \frac{1}{n} \in A$.
     Ma $\lambda + \frac{1}{n} > \lambda$, il che contraddice il fatto che $\lambda$ sia un maggiorante di $A$.
   - **Caso $\lambda^2 > 2$:**
     Costruiamo un maggiorante di $A$ strettamente minore di $\lambda$. Cerchiamo $n \in \mathbb{N}^*$ tale che:
  $$\left(\lambda - \frac{1}{n}\right)^2 > 2$$
     Sviluppando: $\left(\lambda - \frac{1}{n}\right)^2 = \lambda^2 - \frac{2\lambda}{n} + \frac{1}{n^2} > \lambda^2 - \frac{2\lambda}{n}$.
     Basta imporre $\lambda^2 - \frac{2\lambda}{n} > 2 \iff \frac{2\lambda}{n} < \lambda^2 - 2 \iff n > \frac{2\lambda}{\lambda^2 - 2}$.
     Tale $n$ esiste per la proprietà archimedea. Dunque per ogni $x \in A$, $x^2 < 2 < \left(\lambda - \frac{1}{n}\right)^2 \implies x < \lambda - \frac{1}{n}$.
     Ciò mostra che $\lambda - \frac{1}{n} \in \mathbb{Q}$ è un maggiorante di $A$ strettamente minore di $\lambda$, contraddicendo la minimalità di $\lambda = \sup A$.
Entrambi i casi conducono a una contraddizione. Dunque $A$ non ammette estremo superiore nel campo $\mathbb{Q}$. $\blacksquare$

---

## Lezione 8: Densità, Sommatorie e Teorema del Binomio

### Dimostrazione del Teorema della Proprietà di Archimede
>[!important] Enunciato
>L'insieme dei numeri naturali $\mathbb{N}$ non è limitato superiormente in $\mathbb{R}$:
>$$\forall x \in \mathbb{R}, \exists n \in \mathbb{N} : n > x$$

**Dimostrazione per Assurdo:**
Supponiamo per assurdo che $\mathbb{N}$ sia limitato superiormente in $\mathbb{R}$.
Poiché $\mathbb{N} \ne \emptyset$ (contiene ad esempio $0$), per l'Assioma di Completezza di Dedekind esiste l'estremo superiore:
$$L = \sup \mathbb{N} \in \mathbb{R}$$
Consideriamo il numero reale $L - 1$.
Poiché $L - 1 < L$, per la caratterizzazione operativa dell'estremo superiore $L - 1$ non può essere un maggiorante di $\mathbb{N}$.
Esiste quindi un elemento $n \in \mathbb{N}$ tale che:
$$n > L - 1$$
Aggiungendo $1$ ad ambo i membri:
$$n + 1 > L$$
Poiché $n \in \mathbb{N}$, anche il suo successore $n + 1 \in \mathbb{N}$.
Abbiamo trovato un elemento di $\mathbb{N}$ strettamente maggiore di $L$, contraddicendo il fatto che $L$ sia un maggiorante di $\mathbb{N}$.
Dunque $\mathbb{N}$ è superiormente illimitato in $\mathbb{R}$. $\blacksquare$

### Dimostrazione della Densità di $\mathbb{Q}$ in $\mathbb{R}$
>[!important] Enunciato
>Per ogni coppia di numeri reali $a, b \in \mathbb{R}$ con $a < b$, esiste almeno un numero razionale $x \in \mathbb{Q}$ tale che:
>$$a < x < b$$

**Dimostrazione:**
Siano $a, b \in \mathbb{R}$ con $a < b \implies b - a > 0$.
1. Per la Proprietà di Archimede, esiste un naturale $n \in \mathbb{N}^*$ tale che:
   $$n \cdot (b - a) > 1 \iff nb - na > 1$$
2. L'intervallo aperto $]na, nb[$ possiede un'ampiezza strettamente superiore a $1$. Di conseguenza, deve contenere al suo interno almeno un numero intero relativo $m \in \mathbb{Z}$:
   $$na < m < nb$$
   *(Formalmente, ponendo $m = \lfloor na \rfloor + 1$, si ha per definizione $m - 1 \le na < m \implies na < m$; inoltre $m \le na + 1 < na + (nb - na) = nb$)*.
3. Dividendo ciascun membro per $n > 0$:
   $$a < \frac{m}{n} < b$$
Poiché $m \in \mathbb{Z}$ e $n \in \mathbb{N}^*$, il rapporto $x = \frac{m}{n} \in \mathbb{Q}$, verificando la densità. $\blacksquare$

### Dimostrazione della Somma della Successione Geometrica
>[!important] Enunciato
>Sia $q \in \mathbb{R}$. Per ogni $n \in \mathbb{N}$ si ha:
>$$\sum_{k=0}^n q^k = \begin{cases} n + 1 & \text{se } q = 1 \\ \frac{1 - q^{n+1}}{1 - q} & \text{se } q \ne 1 \end{cases}$$

**Dimostrazione:**
- Se $q = 1$: $\sum_{k=0}^n 1^k = \sum_{k=0}^n 1 = n + 1$.
- Se $q \ne 1$, poniamo $S_n = \sum_{k=0}^n q^k = 1 + q + q^2 + \dots + q^n$.
  Moltiplichiamo l'intera somma per $q$:
  $$q S_n = q(1 + q + \dots + q^n) = q + q^2 + \dots + q^n + q^{n+1}$$
  Sottraendo $q S_n$ da $S_n$:
  $$S_n - q S_n = (1 + q + q^2 + \dots + q^n) - (q + q^2 + \dots + q^{n+1})$$
  Tutti i termini intermedi si elidono telescopicamente:
  $$S_n(1 - q) = 1 - q^{n+1}$$
  Poiché $q \ne 1 \implies 1 - q \ne 0$, dividendo per $1 - q$:
  $$S_n = \frac{1 - q^{n+1}}{1 - q} \quad \blacksquare$$

### Dimostrazione della Somma dei Primi $n$ Numeri Naturali (Gauss)
>[!important] Enunciato
>Per ogni $n \in \mathbb{N}$ con $n \ge 1$:
>$$\sum_{k=1}^n k = \frac{n(n + 1)}{2}$$

**Dimostrazione:**
Scriviamo la somma $S_n$ in ordine crescente e in ordine decrescente:
$$S_n = 1 + 2 + \dots + (n - 1) + n$$
$$S_n = n + (n - 1) + \dots + 2 + 1$$
Sommando membro a membro colonna per colonna, otteniamo $n$ coppie aventi ciascuna somma pari a $(n + 1)$:
$$2 S_n = [1 + n] + [2 + (n - 1)] + \dots + [n + 1] = n(n + 1)$$
Dividendo per 2:
$$S_n = \frac{n(n + 1)}{2} \quad \blacksquare$$

### Dimostrazione dell'Identità di Pascal per i Coefficienti Binomiali
>[!important] Enunciato
>Siano $n, k \in \mathbb{N}$ con $1 \le k \le n$. Allora:
>$$\binom{n+1}{k} = \binom{n}{k-1} + \binom{n}{k}$$

**Dimostrazione:**
Sviluppiamo il membro di destra applicando la definizione $\binom{n}{k} = \frac{n!}{k!(n-k)!}$:
$$\binom{n}{k-1} + \binom{n}{k} = \frac{n!}{(k-1)!(n - k + 1)!} + \frac{n!}{k!(n - k)!}$$
Raccogliamo a fattor comune i termini fattoriali massimi: notando che $k! = k \cdot (k-1)!$ e $(n - k + 1)! = (n - k + 1) \cdot (n - k)!$:
$$= \frac{n!}{(k-1)!(n-k)!} \left[ \frac{1}{n - k + 1} + \frac{1}{k} \right]$$
Calcoliamo il minimo comune denominatore nella parentesi quadra:
$$= \frac{n!}{(k-1)!(n-k)!} \left[ \frac{k + (n - k + 1)}{k(n - k + 1)} \right] = \frac{n!}{(k-1)!(n-k)!} \left[ \frac{n + 1}{k(n - k + 1)} \right]$$
Ricombinando i prodotti algebrici:
$$= \frac{(n + 1) \cdot n!}{[k \cdot (k-1)!] \cdot [(n - k + 1) \cdot (n - k)!]} = \frac{(n + 1)!}{k!((n + 1) - k)!} = \binom{n+1}{k} \quad \blacksquare$$

### Dimostrazione per Induzione del Teorema del Binomio di Newton
>[!important] Enunciato
>Per ogni $a, b \in \mathbb{R}$ e ogni $n \in \mathbb{N}$:
>$$(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$$

**Dimostrazione per Induzione su $n$:**
- *Base ($n = 0$):* $(a + b)^0 = 1$ e $\binom{0}{0} a^0 b^0 = 1 \cdot 1 \cdot 1 = 1$. L'uguaglianza è verificata.
- *Passo induttivo ($n \implies n + 1$):*
  $$(a + b)^{n+1} = (a + b)(a + b)^n = (a + b) \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$$
  Distribuiamo il prodotto per $a$ e per $b$:
  $$= \sum_{k=0}^n \binom{n}{k} a^{n-k+1} b^k + \sum_{k=0}^n \binom{n}{k} a^{n-k} b^{k+1}$$
  Nel secondo sommatorio effettuiamo il cambio di variabile di indice $j = k + 1$ (quindi $k = j - 1$ con $j$ che varia da $1$ a $n+1$):
  $$= \left( \binom{n}{0} a^{n+1} + \sum_{k=1}^n \binom{n}{k} a^{n+1-k} b^k \right) + \left( \sum_{j=1}^n \binom{n}{j-1} a^{n+1-j} b^j + \binom{n}{n} b^{n+1} \right)$$
  Rinominiamo la variabile muta $j$ in $k$ e uniamo le due sommatorie interne:
  $$= \binom{n}{0} a^{n+1} + \sum_{k=1}^n \left[ \binom{n}{k} + \binom{n}{k-1} \right] a^{n+1-k} b^k + \binom{n}{n} b^{n+1}$$
  Per l'identità di Pascal provata in precedenza, $\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$. Inoltre $\binom{n}{0} = 1 = \binom{n+1}{0}$ e $\binom{n}{n} = 1 = \binom{n+1}{n+1}$:
  $$= \binom{n+1}{0} a^{n+1} + \sum_{k=1}^n \binom{n+1}{k} a^{n+1-k} b^k + \binom{n+1}{n+1} b^{n+1} = \sum_{k=0}^{n+1} \binom{n+1}{k} a^{n+1-k} b^k \quad \blacksquare$$

---

## Lezione 10: Funzioni Reali II e Funzioni Elementari I

### Dimostrazione del Teorema di Invertibilità per Funzioni Strettamente Monotone
>[!important] Enunciato
>Sia $f: A \subset \mathbb{R} \to \mathbb{R}$ una funzione strettamente monotona. Allora:
>1. $f$ è iniettiva, dunque invertibile sulla sua immagine $B = f(A)$;
>2. La funzione inversa $f^{-1}: B \to A$ è anch'essa strettamente monotona, con lo stesso senso di monotonia di $f$.

**Dimostrazione:**
Assumiamo senza perdita di generalità che $f$ sia strettamente crescente (il caso decrescente è speculare):
1. *Iniettività:* Siano $x_1, x_2 \in A$ con $x_1 \ne x_2$. Per la tricotomia dell'ordine reale, si ha $x_1 < x_2$ oppure $x_2 < x_1$.
   - Se $x_1 < x_2$, essendo $f$ strettamente crescente, $f(x_1) < f(x_2) \implies f(x_1) \ne f(x_2)$.
   - Se $x_2 < x_1$, allora $f(x_2) < f(x_1) \implies f(x_1) \ne f(x_2)$.
   In ogni caso $x_1 \ne x_2 \implies f(x_1) \ne f(x_2)$, dunque $f$ è iniettiva su $A$.
2. *Invertibilità e Monotonia dell'Inversa:*
   Essendo $f: A \to B = f(A)$ biiettiva, esiste l'inversa $f^{-1}: B \to A$.
   Dimostriamo che $f^{-1}$ è strettamente crescente.
   Siano $y_1, y_2 \in B$ con $y_1 < y_2$. Poniamo $x_1 = f^{-1}(y_1)$ e $x_2 = f^{-1}(y_2)$.
   Dobbiamo dimostrare che $x_1 < x_2$.
   Ragioniamo per assurdo supponendo che non sia vero: allora $x_1 \ge x_2$.
   - Se $x_1 = x_2$, allora $f(x_1) = f(x_2) \implies y_1 = y_2$, contraddicendo $y_1 < y_2$.
   - Se $x_1 > x_2$, per la stretta crescenza di $f$ avremmo $f(x_1) > f(x_2) \implies y_1 > y_2$, contraddicendo nuovamente $y_1 < y_2$.
   L'unica possibilità compatibile è $x_1 < x_2$, ovvero $f^{-1}(y_1) < f^{-1}(y_2)$. Dunque $f^{-1}$ è strettamente crescente. $\blacksquare$

---

## Lezione 11: Funzioni Reali Elementari II

### Lemma Fondamentale della Radice $n$-esima per $a > 1$
>[!important] Enunciato
>Sia $a > 1$. Allora:
>$$\inf_{n \in \mathbb{N}^*} a^{1/n} = 1$$

**Dimostrazione:**
Poiché $a > 1$, per ogni $n \in \mathbb{N}^*$ si ha $a^{1/n} > 1$.
Infatti se fosse $a^{1/n} \le 1$, elevando alla potenza $n$-esima otterremmo $a \le 1^n = 1$, assurdo.
Dunque $1$ è un minorante per l'insieme $\{a^{1/n} : n \in \mathbb{N}^*\}$.
Poniamo ora $x_n = a^{1/n} - 1 > 0$. Ne segue che:
$$a^{1/n} = 1 + x_n \implies a = (1 + x_n)^n$$
Poiché $x_n > 0 \ge -1$, possiamo applicare la Disuguaglianza di Bernoulli:
$$a = (1 + x_n)^n \ge 1 + n x_n$$
Isolando $x_n$:
$$n x_n \le a - 1 \implies 0 < x_n \le \frac{a - 1}{n}$$
Dunque:
$$1 < a^{1/n} \le 1 + \frac{a - 1}{n}$$
Sia ora $\varepsilon > 0$ arbitrario. Per la Proprietà di Archimede, possiamo scegliere un intero $n \in \mathbb{N}^*$ tale che $n > \frac{a - 1}{\varepsilon}$, da cui $\frac{a - 1}{n} < \varepsilon$.
In corrispondenza di tale $n$:
$$a^{1/n} < 1 + \varepsilon$$
Ciò verifica la condizione operativa dell'estremo inferiore, provando che $\inf_{n \in \mathbb{N}^*} a^{1/n} = 1$. $\blacksquare$

### Dimostrazione dell'Identità Iperbolica Fondamentale
>[!important] Enunciato
>Per ogni $x \in \mathbb{R}$:
>$$\cosh^2 x - \sinh^2 x = 1$$

**Dimostrazione:**
Sostituiamo le definizioni analitiche di seno e coseno iperbolico:
$$\cosh x = \frac{e^x + e^{-x}}{2}, \quad \sinh x = \frac{e^x - e^{-x}}{2}$$
Calcoliamo i quadrati:
$$\cosh^2 x = \left(\frac{e^x + e^{-x}}{2}\right)^2 = \frac{e^{2x} + 2e^x e^{-x} + e^{-2x}}{4} = \frac{e^{2x} + 2 + e^{-2x}}{4}$$
$$\sinh^2 x = \left(\frac{e^x - e^{-x}}{2}\right)^2 = \frac{e^{2x} - 2e^x e^{-x} + e^{-2x}}{4} = \frac{e^{2x} - 2 + e^{-2x}}{4}$$
Eseguiamo la differenza:
$$\cosh^2 x - \sinh^2 x = \frac{e^{2x} + 2 + e^{-2x} - (e^{2x} - 2 + e^{-2x})}{4} = \frac{4}{4} = 1 \quad \blacksquare$$

### Ricavo Analitico delle Funzioni Inverse dei Settori Iperbolici
>[!important] Enunciato
>La funzione inversa del seno iperbolico è data da:
>$$\operatorname{settsinh} y = \ln\left(y + \sqrt{y^2 + 1}\right), \quad \forall y \in \mathbb{R}$$

**Dimostrazione:**
Poniamo $y = \sinh x = \frac{e^x - e^{-x}}{2}$ e risolviamo algebricamente rispetto a $x$:
$$2y = e^x - e^{-x} \iff 2y = e^x - \frac{1}{e^x}$$
Moltiplicando ambo i membri per $e^x > 0$:
$$(e^x)^2 - 2y(e^x) - 1 = 0$$
Ponendo $t = e^x$, otteniamo un'equazione di secondo grado in $t$:
$$t^2 - 2yt - 1 = 0$$
Risolvendo tramite la formula ridotta:
$$t = y \pm \sqrt{y^2 + 1}$$
Poiché $t = e^x > 0$ per ogni $x \in \mathbb{R}$, e notando che $\sqrt{y^2 + 1} > \sqrt{y^2} = |y| \ge y$, la soluzione con il segno negativo produrrebbe un valore strettamente negativo:
$$y - \sqrt{y^2 + 1} < 0$$
Dobbiamo quindi scartare la radice negativa e mantenere unicamente la radice positiva:
$$e^x = y + \sqrt{y^2 + 1}$$
Applicando il logaritmo naturale ad entrambi i membri:
$$x = \ln\left(y + \sqrt{y^2 + 1}\right) \quad \blacksquare$$

---

## Lezione 12: Limiti I, Retta Reale Ampliata e Definizione

### Equivalenza tra Definizione Topologica e Metrica $\varepsilon-\delta$
>[!important] Enunciato
>Siano $f: A \subseteq \mathbb{R} \to \mathbb{R}$, $x_0 \in \mathbb{R}$ punto di accumulazione per $A$ e $\ell \in \mathbb{R}$. La condizione topologica:
>$$\forall V \in \mathcal{I}(\ell), \exists U \in \mathcal{I}(x_0) : \forall x \in A \cap U \setminus \{x_0\}, f(x) \in V$$
>coincide con la formulazione metrica:
>$$\forall \varepsilon > 0, \exists \delta > 0 : \forall x \in A, 0 < |x - x_0| < \delta \implies |f(x) - \ell| < \varepsilon$$

**Dimostrazione:**
- Gli intorni aperti fondamentali di $\ell \in \mathbb{R}$ sono gli intervalli simmetrici $V = ]\ell - \varepsilon, \ell + \varepsilon[$ per $\varepsilon > 0$. L'appartenenza $f(x) \in V$ equivale alla catena di disuguaglianze $\ell - \varepsilon < f(x) < \ell + \varepsilon \iff |f(x) - \ell| < \varepsilon$.
- Gli intorni aperti fondamentali di $x_0 \in \mathbb{R}$ sono gli intervalli $U = ]x_0 - \delta, x_0 + \delta[$ per $\delta > 0$. La condizione $x \in U \setminus \{x_0\}$ equivale a $x \in ]x_0 - \delta, x_0 + \delta[$ con $x \ne x_0$, ossia $0 < |x - x_0| < \delta$.
Sostituendo queste espressioni nella definizione topologica, si ottiene esattamente la formulazione metrica $\varepsilon-\delta$. $\blacksquare$

---

## Lezione 13: Limiti II, Restrizioni, Limiti Laterali e Successioni

### Dimostrazione Rigorosa per Assurdo del Teorema di Unicità del Limite
>[!important] Enunciato
>Siano $f: A \subset \mathbb{R} \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$. Se $f$ ammette limite per $x \to x_0$, tale limite è unico.

**Dimostrazione per Assurdo:**
Supponiamo per assurdo che esistano due limiti distinti $\ell_1, \ell_2 \in \overline{\mathbb{R}}$ con $\ell_1 \ne \ell_2$ tali che:
$$\lim_{x \to x_0} f(x) = \ell_1 \quad \text{e} \quad \lim_{x \to x_0} f(x) = \ell_2$$
1. Poiché $\overline{\mathbb{R}}$ è uno spazio topologico di Hausdorff (soddisfa l'assioma di separazione $T_2$), per ogni coppia di punti distinti $\ell_1 \ne \ell_2$ esistono due intorni aperti disgiunti:
   $$V_1 \in \mathcal{I}(\ell_1), \quad V_2 \in \mathcal{I}(\ell_2) \quad \text{tali che} \quad V_1 \cap V_2 = \emptyset$$
   *(Nel caso finito $\ell_1, \ell_2 \in \mathbb{R}$, basta scegliere $\varepsilon = \frac{|\ell_1 - \ell_2|}{2} > 0$ e considerare $V_1 = ]\ell_1 - \varepsilon, \ell_1 + \varepsilon[$ e $V_2 = ]\ell_2 - \varepsilon, \ell_2 + \varepsilon[$)*.
2. Per definizione di limite applicata a $\ell_1$, esiste un intorno $U_1 \in \mathcal{I}(x_0)$ tale che:
   $$\forall x \in A \cap U_1 \setminus \{x_0\} \implies f(x) \in V_1$$
3. Per definizione di limite applicata a $\ell_2$, esiste un intorno $U_2 \in \mathcal{I}(x_0)$ tale che:
   $$\forall x \in A \cap U_2 \setminus \{x_0\} \implies f(x) \in V_2$$
4. Definiamo $U = U_1 \cap U_2$. Poiché l'intersezione di due intorni di $x_0$ è ancora un intorno di $x_0$, si ha $U \in \mathcal{I}(x_0)$.
5. Poiché per ipotesi $x_0$ è un punto di accumulazione per $A$, per definizione di punto di accumulazione ogni intorno di $x_0$ interseca $A$ in almeno un punto distinto da $x_0$. Esiste dunque:
   $$x^* \in A \cap U \setminus \{x_0\}$$
6. Poiché $x^* \in U \subseteq U_1$, deduciamo che $f(x^*) \in V_1$.
   Analogamente, poiché $x^* \in U \subseteq U_2$, deduciamo che $f(x^*) \in V_2$.
7. Ne consegue che:
   $$f(x^*) \in V_1 \cap V_2$$
   Ciò è assurdo, poiché per costruzione $V_1 \cap V_2 = \emptyset$.
L'assurdo scaturisce dall'aver ipotizzato $\ell_1 \ne \ell_2$. Pertanto, il limite è unico. $\blacksquare$

### Dimostrazione del Teorema del Limite della Restrizione
>[!important] Enunciato
>Sia $f: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell$. Sia $B \subset A$ tale che $x_0$ sia punto di accumulazione per $B$. Allora:
>$$\lim_{\substack{x \to x_0 \\ x \in B}} f(x) = \lim_{x \to x_0} f|_B(x) = \ell$$

**Dimostrazione:**
Sia $V \in \mathcal{I}(\ell)$ un intorno arbitrario di $\ell$.
Poiché $\lim_{x \to x_0} f(x) = \ell$, per definizione di limite esiste un intorno $U \in \mathcal{I}(x_0)$ tale che:
$$\forall x \in A \cap U \setminus \{x_0\} \implies f(x) \in V$$
Dato che $B \subset A$, si ha banalmente l'inclusione degli insiemi:
$$B \cap U \setminus \{x_0\} \subseteq A \cap U \setminus \{x_0\}$$
Di conseguenza, per ogni $x \in B \cap U \setminus \{x_0\}$ l'implicazione è garantita: $f|_B(x) = f(x) \in V$.
Dunque $\lim_{x \to x_0, x \in B} f(x) = \ell$. $\blacksquare$

### Dimostrazione del Limite Notevole di Successioni $\lim_{n \to +\infty} \sqrt[n]{a} = 1$ ($a > 0$)
>[!important] Enunciato
>Per ogni numero reale fissato $a > 0$:
>$$\lim_{n \to +\infty} \sqrt[n]{a} = 1$$

**Dimostrazione:**
Distinguiamo tre casi:
- **Caso 1: $a = 1$.**
  Per ogni $n$, $\sqrt[n]{1} = 1$. La successione è costantemente $1$, per cui $\lim_{n \to +\infty} \sqrt[n]{1} = 1$.
- **Caso 2: $a > 1$.**
  Poiché $a > 1$, si ha $\sqrt[n]{a} > 1$ per ogni $n \in \mathbb{N}^*$.
  Possiamo definire una successione ausiliaria $x_n > 0$ ponendo:
  $$\sqrt[n]{a} = 1 + x_n$$
  Elevando alla potenza $n$-esima:
  $$a = (1 + x_n)^n$$
  Poiché $x_n > 0$, applichiamo la Disuguaglianza di Bernoulli:
  $$a = (1 + x_n)^n \ge 1 + n x_n$$
  Sottraendo $1$ e dividendo per $n$:
  $$0 < x_n \le \frac{a - 1}{n}$$
  Calcoliamo i limiti per $n \to +\infty$:
  $$\lim_{n \to +\infty} 0 = 0 \quad \text{e} \quad \lim_{n \to +\infty} \frac{a - 1}{n} = (a - 1) \lim_{n \to +\infty} \frac{1}{n} = (a - 1) \cdot 0 = 0$$
  Per il Teorema del Confronto (dei Carabinieri), ne segue che $\lim_{n \to +\infty} x_n = 0$.
  Pertanto:
  $$\lim_{n \to +\infty} \sqrt[n]{a} = \lim_{n \to +\infty} (1 + x_n) = 1 + 0 = 1$$
- **Caso 3: $0 < a < 1$.**
  Poniamo $b = \frac{1}{a} > 1$.
  Per il Caso 2 appena dimostrato, $\lim_{n \to +\infty} \sqrt[n]{b} = 1$.
  Applicando il teorema sul limite del reciproco:
  $$\lim_{n \to +\infty} \sqrt[n]{a} = \lim_{n \to +\infty} \sqrt[n]{\frac{1}{b}} = \lim_{n \to +\infty} \frac{1}{\sqrt[n]{b}} = \frac{1}{1} = 1$$

In tutti i casi il limite vale $1$. $\blacksquare$


---

---

## Lezione 14: Limiti di Successioni e Proprietà Locali

### Proposizione 1.1: Carattere Locale del Limite di Successioni
>[!important] Enunciato
>Siano $(a_n)_{n \in \mathbb{N}}$ e $(b_n)_{n \in \mathbb{N}}$ due successioni di numeri reali e supponiamo che esista un indice $\nu_0 \in \mathbb{N}$ tale che $\forall n > \nu_0 \implies a_n = b_n$. Allora:
>$$\lim_{n \to +\infty} a_n = \ell \iff \lim_{n \to +\infty} b_n = \ell$$

**Dimostrazione:**
Assumiamo che $\lim_{n \to +\infty} a_n = \ell \in \overline{\mathbb{R}}$.
Sia $V \in \mathcal{U}(\ell)$ un intorno arbitrario di $\ell$. Per la definizione topologica di limite, esiste un indice $\nu_1 \in \mathbb{N}$ tale che:
$$\forall n > \nu_1 \implies a_n \in V$$
Poniamo $\nu = \max\{\nu_0, \nu_1\} \in \mathbb{N}$. Per ogni $n > \nu$ si verificano simultaneamente:
- $n > \nu_0 \implies b_n = a_n$
- $n > \nu_1 \implies a_n \in V$
Ne consegue che per ogni $n > \nu$ si ha $b_n \in V$, il che dimostra che $\lim_{n \to +\infty} b_n = \ell$.
L'implicazione inversa segue per simmetria scambiando i ruoli di $a_n$ e $b_n$. $\blacksquare$

### Proposizione 1.2: Ogni Successione Convergente è Limitata
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ una successione reale convergente ad un limite finito $\ell \in \mathbb{R}$. Allora $(a_n)_{n \in \mathbb{N}}$ è limitata in $\mathbb{R}$:
>$$\exists C > 0 : \forall n \in \mathbb{N}, \quad |a_n| \le C$$

**Dimostrazione:**
Sia $\lim_{n \to +\infty} a_n = \ell \in \mathbb{R}$.
Applichiamo la definizione metrica di convergenza ponendo la scelta convenzionale $\varepsilon = 1 > 0$.
In corrispondenza di tale $\varepsilon$, esiste un indice soglia $\nu \in \mathbb{N}$ tale che:
$$\forall n > \nu \implies |a_n - \ell| < 1$$
Sfruttando la disuguaglianza triangolare inversa:
$$|a_n| = |(a_n - \ell) + \ell| \le |a_n - \ell| + |\ell| < 1 + |\ell|, \quad \forall n > \nu$$
I termini della successione con indice $n > \nu$ sono quindi tutti uniformemente maggiorati dal numero reale $1 + |\ell|$.
I termini rimanenti $a_0, a_1, \dots, a_\nu$ costituiscono un insieme finito di $\nu + 1$ elementi. Definiamo la costante reale:
$$C = \max\left\{|a_0|, |a_1|, \dots, |a_\nu|, \, 1 + |\ell|\right\} \in \mathbb{R}$$
Verifichiamo che $|a_n| \le C$ per ogni $n \in \mathbb{N}$:
- Se $n \le \nu$, allora $|a_n| \le \max\{|a_0|, \dots, |a_\nu|\} \le C$;
- Se $n > \nu$, allora $|a_n| < 1 + |\ell| \le C$.
In ogni caso, per ogni $n \in \mathbb{N}$ si ha $|a_n| \le C$, provando che la successione è globalmente limitata. $\blacksquare$

### Proposizione 1.3: Divergenza e Illimitatezza
>[!important] Enunciato
>1. Ogni successione numerica divergente positivamente ($\lim_{n \to +\infty} a_n = +\infty$) non è limitata superiormente: $\sup_{n \in \mathbb{N}} a_n = +\infty$.
>2. Ogni successione numerica divergente negativamente ($\lim_{n \to +\infty} a_n = -\infty$) non è limitata inferiormente: $\inf_{n \in \mathbb{N}} a_n = -\infty$.

**Dimostrazione (Punto 1):**
Per verificare l'illimitatezza superiore occorre dimostrare che per ogni $M \in \mathbb{R}$ esiste un termine $a_n$ tale che $a_n > M$.
Fissiamo arbitrariamente $M \in \mathbb{R}$. Poiché per ipotesi $\lim_{n \to +\infty} a_n = +\infty$, applicando la definizione di divergenza positiva in corrispondenza del valore $M$, esiste un indice $\nu \in \mathbb{N}$ tale che:
$$\forall n \in \mathbb{N}, \quad n > \nu \implies a_n > M$$
Dunque non solo esiste un termine maggiore di $M$, ma ne esistono infiniti (tutti quelli con indice $n > \nu$). Poiché $M$ era generico, nessun numero reale può fare da maggiorante per l'insieme $\{a_n : n \in \mathbb{N}\}$, che risulta pertanto non limitato superiormente.
La dimostrazione del punto (2) è perfettamente analoga fissando un arbitrario minorante $-M \in \mathbb{R}$. $\blacksquare$

### Lemma 2.3: Crescita dell'Indice per Sottosuccessioni
>[!important] Enunciato
>Sia $(n_k)_{k \in \mathbb{N}}$ una successione strettamente crescente di numeri naturali. Allora:
>$$\forall k \in \mathbb{N}, \quad n_k \ge k$$

**Dimostrazione per Induzione su $k$:**
- *Base dell'induzione ($k = 0$):* Poiché per definizione $(n_k)_{k \in \mathbb{N}} \subset \mathbb{N}$, si ha $n_0 \in \mathbb{N}$, da cui banalmente $n_0 \ge 0$.
- *Passo induttivo ($k \implies k + 1$):* Assumiamo per ipotesi induttiva che la disuguaglianza sia verificata per l'indice $k$, ossia $n_k \ge k$.
  Poiché la successione degli indici $(n_k)$ è strettamente crescente, si ha:
  $$n_{k+1} > n_k$$
  Trattandosi di numeri interi naturali, la condizione $n_{k+1} > n_k$ equivale a:
  $$n_{k+1} \ge n_k + 1$$
  Sfruttando l'ipotesi induttiva $n_k \ge k$:
  $$n_{k+1} \ge n_k + 1 \ge k + 1$$
  La proprietà risulta verificata per $k + 1$.
Per il Principio di Induzione Matematica, la disuguaglianza $n_k \ge k$ è valida per ogni $k \in \mathbb{N}$. $\blacksquare$

### Teorema 2.5: Invarianza del Limite per Sottosuccessioni
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ una successione di numeri reali e $(a_{n_k})_{k \in \mathbb{N}}$ una sua sottosuccessione. Se $(a_n)$ è regolare con limite $\lim_{n \to +\infty} a_n = \ell \in \overline{\mathbb{R}}$, allora anche la sottosuccessione $(a_{n_k})_{k \in \mathbb{N}}$ è regolare e ammette lo stesso limite:
>$$\lim_{k \to +\infty} a_{n_k} = \ell$$

**Dimostrazione:**
Sia $\lim_{n \to +\infty} a_n = \ell \in \overline{\mathbb{R}}$ e sia $V \in \mathcal{U}(\ell)$ un intorno arbitrario di $\ell$.
Per la definizione topologica di limite applicata alla successione principale, esiste un indice soglia $\nu \in \mathbb{N}$ tale che:
$$\forall n \in \mathbb{N}, \quad n > \nu \implies a_n \in V$$
Consideriamo ora la successione degli indici $(n_k)_{k \in \mathbb{N}}$. Per il Lemma 2.3, sappiamo che per ogni $k \in \mathbb{N}$ vale la disuguaglianza $n_k \ge k$.
Di conseguenza, se scegliamo $k > \nu$, otteniamo:
$$n_k \ge k > \nu \implies a_{n_k} \in V$$
Abbiamo così dimostrato che per ogni intorno $V \in \mathcal{U}(\ell)$ esiste l'indice soglia $\nu \in \mathbb{N}$ tale che per ogni $k > \nu$ si ha $a_{n_k} \in V$.
Ciò verifica esattamente la definizione di limite per la successione estratta, provando che $\lim_{k \to +\infty} a_{n_k} = \ell$. $\blacksquare$

### Proposizione 2.9: Limite della Successione Geometrica $q^n$
>[!important] Enunciato
>Sia $q \in \mathbb{R}$. La successione geometrica $a_n = q^n$ soddisfa:
>$$\lim_{n \to +\infty} q^n = \begin{cases} +\infty & \text{se } q > 1 \\ 1 & \text{se } q = 1 \\ 0 & \text{se } |q| < 1 \\ \text{non regolare} & \text{se } q \le -1 \end{cases}$$

**Dimostrazione:**
- **Caso $q = 1$:** La successione è costante: $q^n = 1^n = 1$ per ogni $n \in \mathbb{N}$. Quindi $\lim_{n \to +\infty} q^n = 1$.
- **Caso $q > 1$:** Poniamo $a = q - 1 > 0$, da cui $q = 1 + a$. Poiché $a > 0 \ge -1$, possiamo applicare la Disuguaglianza di Bernoulli:
  $$q^n = (1 + a)^n \ge 1 + na$$
  Fissiamo un arbitrario $M \in \mathbb{R}$. Vogliamo che $q^n > M$. È sufficiente richiedere:
  $$1 + na > M \iff na > M - 1 \iff n > \frac{M - 1}{a}$$
  Per la Proprietà di Archimede, scegliendo $\nu = \max\left\{0, \lfloor \frac{M - 1}{a} \rfloor + 1\right\}$, per ogni $n > \nu$ risulta $q^n > M$. Dunque $\lim_{n \to +\infty} q^n = +\infty$.
- **Caso $|q| < 1$:**
  - Se $q = 0$, $0^n = 0$ per $n \ge 1$, limite $0$.
  - Se $0 < |q| < 1$, poniamo $b = \frac{1}{|q|} > 1$. Per il punto precedente, $\lim_{n \to +\infty} b^n = \lim_{n \to +\infty} \left(\frac{1}{|q|}\right)^n = +\infty$.
    Applicando il teorema sul reciproco del limite di un infinito:
  $$\lim_{n \to +\infty} |q|^n = \lim_{n \to +\infty} \frac{1}{(1/|q|)^n} = \frac{1}{+\infty} = 0$$
    Dato che $\lim |a_n| = 0 \iff \lim a_n = 0$, ne segue che $\lim_{n \to +\infty} q^n = 0$.
- **Caso $q = -1$:** $q^n = (-1)^n$. Consideriamo le sottosuccessioni dei pari e dei dispari:
  $$a_{2k} = (-1)^{2k} = 1 \to 1, \quad a_{2k+1} = (-1)^{2k+1} = -1 \to -1$$
  Poiché ammette due sottosuccessioni con limiti differenti ($1 \ne -1$), per il Teorema 2.5 la successione non ammette limite.
- **Caso $q < -1$:** Consideriamo le due sottosuccessioni:
  - Termini con indice pari: $a_{2k} = q^{2k} = (q^2)^k$. Poiché $q < -1$, si ha $q^2 > 1$. Dal caso $q > 1$ già dimostrato, $\lim_{k \to +\infty} (q^2)^k = +\infty$.
  - Termini con indice dispari: $a_{2k+1} = q \cdot q^{2k} = q (q^2)^k$. Poiché $q < 0$ e $(q^2)^k \to +\infty$, per la regola dei segni del prodotto $\lim_{k \to +\infty} a_{2k+1} = -\infty$.
  Dato che le sottosuccessioni divergono a limiti distinti ($+\infty \ne -\infty$), la successione non è regolare. $\blacksquare$

### Teorema 2.10: Convergenza da Termini Pari e Dispari
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ una successione reale. Se la sottosuccessione dei termini pari e quella dei termini dispari convergono allo stesso limite $\ell \in \overline{\mathbb{R}}$, ossia:
>$$\lim_{k \to +\infty} a_{2k} = \ell \quad \land \quad \lim_{k \to +\infty} a_{2k+1} = \ell$$
>allora l'intera successione converge allo stesso limite:
>$$\lim_{n \to +\infty} a_n = \ell$$

**Dimostrazione:**
Sia $V \in \mathcal{U}(\ell)$ un intorno arbitrario di $\ell$.
- Poiché $\lim_{k \to +\infty} a_{2k} = \ell$, per definizione di limite esiste un indice $\nu_1 \in \mathbb{N}$ tale che:
  $$\forall k \in \mathbb{N}, \quad k > \nu_1 \implies a_{2k} \in V$$
- Poiché $\lim_{k \to +\infty} a_{2k+1} = \ell$, esiste un indice $\nu_2 \in \mathbb{N}$ tale che:
  $$\forall k \in \mathbb{N}, \quad k > \nu_2 \implies a_{2k+1} \in V$$
Definiamo la soglia globale $\nu = \max\{2\nu_1, \, 2\nu_2 + 1\} \in \mathbb{N}$.
Sia ora $n \in \mathbb{N}$ un generico indice con $n > \nu$:
- Se $n$ è un numero pari, allora $n = 2k$ per un opportuno $k \in \mathbb{N}$. Dalla condizione $n > \nu \ge 2\nu_1$ segue $2k > 2\nu_1 \implies k > \nu_1$, da cui $a_n = a_{2k} \in V$.
- Se $n$ è un numero dispari, allora $n = 2k + 1$ per un opportuno $k \in \mathbb{N}$. Dalla condizione $n > \nu \ge 2\nu_2 + 1$ segue $2k + 1 > 2\nu_2 + 1 \implies k > \nu_2$, da cui $a_n = a_{2k+1} \in V$.
In entrambi i casi (essendo ogni numero naturale pari o dispari), per ogni $n > \nu$ risulta $a_n \in V$.
Ciò dimostra che $\lim_{n \to +\infty} a_n = \ell$. $\blacksquare$

### Proposizione 3.3: Intersezione Finita di Proprietà Locali
>[!important] Enunciato
>Siano $P_1(x)$ e $P_2(x)$ due proprietà definite in $A \subseteq \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Se $P_1(x)$ è vera definitivamente in un intorno di $x_0$ e $P_2(x)$ è vera definitivamente in un intorno di $x_0$, allora anche la proprietà congiunta $P_1(x) \land P_2(x)$ è vera definitivamente in un intorno di $x_0$.

**Dimostrazione:**
Per ipotesi di validità locale, esistono due intorni $U_1, U_2 \in \mathcal{U}(x_0)$ tali che:
$$\forall x \in U_1 \cap (A \setminus \{x_0\}) \implies P_1(x) \text{ è vera}$$
$$\forall x \in U_2 \cap (A \setminus \{x_0\}) \implies P_2(x) \text{ è vera}$$
Poniamo $U = U_1 \cap U_2$. Per le proprietà topologiche degli intorni, l'intersezione di due intorni di un punto $x_0$ è ancora un intorno di $x_0$, quindi $U \in \mathcal{U}(x_0)$.
Sia ora $x \in U \cap (A \setminus \{x_0\})$. Poiché $x \in U_1$ e contemporaneamente $x \in U_2$:
- $x \in U_1 \cap (A \setminus \{x_0\}) \implies P_1(x)$ è vera;
- $x \in U_2 \cap (A \setminus \{x_0\}) \implies P_2(x)$ è vera.
Dunque in ogni punto dell'intorno $U \cap (A \setminus \{x_0\})$ le due proprietà sono simultaneamente verificate: $P_1(x) \land P_2(x)$ è vera. $\blacksquare$

### Proposizione 3.5: Limite del Valore Assoluto
>[!important] Enunciato
>Sia $f: A \to \mathbb{R}$, $\ell \in \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Allora:
>$$\lim_{x \to x_0} f(x) = \ell \implies \lim_{x \to x_0} |f(x)| = |\ell|$$

**Dimostrazione:**
Ricordiamo la Disuguaglianza Triangolare Inversa: per ogni $u, v \in \mathbb{R}$ vale:
$$\big| |u| - |v| \big| \le |u - v|$$
Scegliendo $u = f(x)$ e $v = \ell$, per ogni $x \in A$ risulta:
$$\big| |f(x)| - |\ell| \big| \le |f(x) - \ell|$$
Sia ora fissato un arbitrario $\varepsilon > 0$. Poiché per ipotesi $\lim_{x \to x_0} f(x) = \ell$, per la definizione metrica di limite esiste un intorno $U \in \mathcal{U}(x_0)$ tale che:
$$\forall x \in U \cap (A \setminus \{x_0\}) \implies |f(x) - \ell| < \varepsilon$$
Concatenando con la disuguaglianza triangolare inversa:
$$\forall x \in U \cap (A \setminus \{x_0\}) \implies \big| |f(x)| - |\ell| \big| \le |f(x) - \ell| < \varepsilon$$
Questo dimostra formalmente che $\lim_{x \to x_0} |f(x)| = |\ell|$. $\blacksquare$

### Proposizione 3.6: Limitatezza Locale di una Funzione Convergente
>[!important] Enunciato
>Se $f: A \to \mathbb{R}$ ammette limite finito $\lim_{x \to x_0} f(x) = \ell \in \mathbb{R}$, allora $f$ è limitata in un intorno di $x_0$:
>$$\exists U \in \mathcal{U}(x_0) : \forall x \in U \cap (A \setminus \{x_0\}) \implies |f(x)| \le 1 + |\ell|$$

**Dimostrazione:**
Poniamo nella definizione metrica di limite $\varepsilon = 1 > 0$. Poiché $\lim_{x \to x_0} f(x) = \ell$, esiste un intorno $U \in \mathcal{U}(x_0)$ tale che per ogni $x \in U \cap (A \setminus \{x_0\})$ si ha $|f(x) - \ell| < 1$.
Scriviamo $f(x) = (f(x) - \ell) + \ell$. Applicando la disuguaglianza triangolare standard:
$$|f(x)| = |(f(x) - \ell) + \ell| \le |f(x) - \ell| + |\ell| < 1 + |\ell|$$
Posto $M = 1 + |\ell| \in \mathbb{R}$, risulta $|f(x)| \le M$ per ogni $x \in U \cap (A \setminus \{x_0\})$, dimostrando che $f$ è localmente limitata in $U$. $\blacksquare$

### Teorema 3.8: Algebra dei Limiti Finiti
>[!important] Enunciato
>Siano $f, g: A \to \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \mathbb{R}$ e $\lim_{x \to x_0} g(x) = m \in \mathbb{R}$. Allora:
>1. $\lim_{x \to x_0} (f + g)(x) = \ell + m$
>2. $\lim_{x \to x_0} (f \cdot g)(x) = \ell \cdot m$
>3. Se $m \ne 0$ e $g(x) \ne 0$ definitivamente in un intorno di $x_0$, allora $\lim_{x \to x_0} \left(\frac{f}{g}\right)(x) = \frac{\ell}{m}$

**Dimostrazione:**

**1. Limite della Somma:**
Fissiamo arbitrariamente $\varepsilon > 0$. Dalla disuguaglianza triangolare:
$$|(f + g)(x) - (\ell + m)| = |(f(x) - \ell) + (g(x) - m)| \le |f(x) - \ell| + |g(x) - m|$$
Applicando la definizione di limite a $f$ e $g$ con tolleranza $\frac{\varepsilon}{2} > 0$, esistono due intorni $U_1, U_2 \in \mathcal{U}(x_0)$ tali che:
- $\forall x \in U_1 \cap A_{x_0} \implies |f(x) - \ell| < \frac{\varepsilon}{2}$
- $\forall x \in U_2 \cap A_{x_0} \implies |g(x) - m| < \frac{\varepsilon}{2}$
Per la Proposizione 3.3, nell'intorno comune $U = U_1 \cap U_2 \in \mathcal{U}(x_0)$ entrambe le proprietà valgono simultaneamente. Sommando membro a membro:
$$\forall x \in U \cap A_{x_0} \implies |(f + g)(x) - (\ell + m)| \le |f(x) - \ell| + |g(x) - m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$
Ciò prova che $\lim_{x \to x_0} (f + g)(x) = \ell + m$. $\blacksquare$

**2. Limite del Prodotto:**
Fissiamo $\varepsilon > 0$. Manipoliamo algebricamente la differenza aggiungendo e sottraendo il termine misto $f(x)m$:
$$|(f \cdot g)(x) - \ell m| = |f(x)g(x) - f(x)m + f(x)m - \ell m| \le |f(x)||g(x) - m| + |m||f(x) - \ell|$$
Per la Proposizione 3.6, la convergenza di $f$ assicura l'esistenza di un intorno $U_0 \in \mathcal{U}(x_0)$ in cui $|f(x)| \le 1 + |\ell|$. Quindi su tale intorno:
$$|(f \cdot g)(x) - \ell m| \le (1 + |\ell|)|g(x) - m| + (|m| + 1)|f(x) - \ell|$$
Poniamo:
$$\varepsilon_1 = \frac{\varepsilon}{2(|m| + 1)} > 0, \quad \varepsilon_2 = \frac{\varepsilon}{2(1 + |\ell|)} > 0$$
Per definizione di limite, esistono $U_1, U_2 \in \mathcal{U}(x_0)$ tali che $|f(x) - \ell| < \varepsilon_1$ su $U_1 \cap A_{x_0}$ e $|g(x) - m| < \varepsilon_2$ su $U_2 \cap A_{x_0}$.
Nell'intorno intersezione $U = U_0 \cap U_1 \cap U_2 \in \mathcal{U}(x_0)$:
$$|(f \cdot g)(x) - \ell m| < (1 + |\ell|)\frac{\varepsilon}{2(1 + |\ell|)} + (|m| + 1)\frac{\varepsilon}{2(|m| + 1)} = \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$$
Ciò prova che $\lim_{x \to x_0} (f \cdot g)(x) = \ell m$. $\blacksquare$

**3. Limite del Quoziente:**
Poiché $\frac{f}{g} = f \cdot \frac{1}{g}$, grazie al punto (2) è sufficiente dimostrare che $\lim_{x \to x_0} \frac{1}{g(x)} = \frac{1}{m}$.
Notiamo che:
$$\left|\frac{1}{g(x)} - \frac{1}{m}\right| = \left|\frac{m - g(x)}{g(x)m}\right| = \frac{|g(x) - m|}{|g(x)||m|}$$
Poiché $m \ne 0$, per la Proposizione 3.5 $\lim_{x \to x_0} |g(x)| = |m| > 0$. Per il Teorema della permanenza del segno (con $\varepsilon = \frac{|m|}{2}$), esiste un intorno $U_0 \in \mathcal{U}(x_0)$ in cui:
$$|g(x)| > \frac{|m|}{2} \implies \frac{1}{|g(x)|} < \frac{2}{|m|}$$
Sostituendo nella maggiorazione per ogni $x \in U_0 \cap A_{x_0}$:
$$\left|\frac{1}{g(x)} - \frac{1}{m}\right| \le \frac{2}{|m|^2}|g(x) - m|$$
Fissato $\varepsilon > 0$, sia $\varepsilon_3 = \frac{\varepsilon |m|^2}{2} > 0$. Esiste un intorno $U_1 \in \mathcal{U}(x_0)$ in cui $|g(x) - m| < \varepsilon_3$.
Nell'intorno $U = U_0 \cap U_1$:
$$\left|\frac{1}{g(x)} - \frac{1}{m}\right| < \frac{2}{|m|^2} \frac{\varepsilon |m|^2}{2} = \varepsilon$$
Dunque $\lim_{x \to x_0} \frac{1}{g(x)} = \frac{1}{m}$. Infine, applicando la regola del prodotto:
$$\lim_{x \to x_0} \left(\frac{f}{g}\right)(x) = \lim_{x \to x_0} \left(f(x) \cdot \frac{1}{g(x)}\right) = \ell \cdot \frac{1}{m} = \frac{\ell}{m} \quad \blacksquare$$
