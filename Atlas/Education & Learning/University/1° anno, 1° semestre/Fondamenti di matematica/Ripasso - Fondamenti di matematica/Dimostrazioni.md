---
status: permanent
type: summary
area: education
related: ["[[Lezione 1 - Logica delle Proposizioni e dei Predicati]]", "[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[Lezione 3 - Relazioni e Funzioni I]]", "[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]", "[[Lezione 5 - i Numeri Reali e Assioma di Completezza]]", "[[Lezione 6 - Valore Assoluto e Numeri Naturali]]", "[[Lezione 7 - Insiemi Numerici N Z e Q]]", "[[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]", "[[Lezione 9 - Funzioni Reali ed Estremi]]", "[[Lezione 10 - Funzioni Reali II e Funzioni Elementari I]]", "[[Lezione 11 - Funzioni Reali Elementari II]]", "[[Lezione 12 - Limiti I Retta Reale Ampliata e Definizione]]", "[[Lezione 13 - Limiti II Restrizioni Limiti Laterali e Successioni]]", "[[Lezione 14 - Limiti di Successioni e Proprieta Locali]]", "[[Lezione 15 - Proprieta dei Limiti]]", "[[Lezione 17 - Limiti delle Funzioni Composte e Confronto Locale]]", "[[Lezione 18 - Gerarchie di Infiniti e Infinitesimi e Continuita I]]", "[[Lezione 19 - Funzioni Continue e Punti di Discontinuita]]", "[[Lezione 20 - Continuita delle Funzioni Monotone e Limiti Notevoli]]", "[[Lezione 21 - Teoremi di Bolzano e Proprieta Topologiche per Successioni]]", "[[Lezione 22 - Valori Intermedi Punti Fissi e Teorema di Bolzano-Weierstrass]]", "[[Lezione 23 - Insiemi Compatti Teorema di Weierstrass e Successioni per Ricorrenza]]", "[[Lezione 24 - Serie Numeriche I Definizioni Proprieta e Serie Geometrica]]", "[[Lezione 25 - Serie Numeriche II Serie Resto e Criteri di Confronto]]", "[[Lezione 26 - Serie Numeriche III Criteri della Radice e del Rapporto e Condensazione di Cauchy]]", "[[Lezione 27 - Serie Numeriche IV Criterio di Leibniz Convergenza Assoluta e Serie Esponenziale]]", "[[Assiomi, proposizioni ecc...]]", "[[University]]"]
aliases: ["Dimostrazioni", "Dimostrazioni Fondamenti di Matematica", "Raccolta Dimostrazioni Lezioni 1-20"]
source: ["Lezione 1.pdf", "Lezione 2.pdf", "Lezione 3.pdf", "Lezione 4.pdf", "Lezione 5.pdf", "Lezione 6.pdf", "Lezione 7.pdf", "Lezione 8.pdf", "Lezione 9.pdf", "Lezione 10.pdf", "Lezione 11.pdf", "Lezione 12.pdf", "Lezione 13.pdf", "Lezione 14.pdf", "Lezione 15.pdf", "Lezione 17.pdf", "Lezione 18.pdf", "Lezione 19.pdf", "Lezione 20.pdf", "Lezione 21.pdf", "Lezione 22.pdf", "Lezione 23.pdf", "Lezione 24.pdf", "Lezione 25.pdf", "Lezione 26.pdf", "Lezione 27.pdf"]
title: "Dimostrazioni"
date: '2026-10-15'
updated: '2026-11-08T01:15'
tags: [education/university, education/matematica, education/dimostrazioni]
summary: "Compendio integrale e rigoroso di tutte le dimostrazioni matematiche svolte nel corso di Fondamenti di Matematica dalla Lezione 1 alla Lezione 27."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Dimostrazioni]]

# Dimostrazioni

Raccolta esaustiva di tutte le dimostrazioni analitiche e algebriche svolte nelle Lezioni da 1 a 27 del corso di Fondamenti di Matematica, articolate con passaggi logico-deduttivi formali, esplicitazione delle ipotesi e verifica delle tesi.

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


---

## Lezione 15: Proprietà dei Limiti

### Esempio 1.1: Limiti di Monomi, Polinomi e Funzioni Razionali
>[!important] Enunciato
>1. **(Monomio):** Siano $a \in \mathbb{R}$, $n \in \mathbb{N}$ e $x_0 \in \mathbb{R}$. Allora:
>$$\lim_{x \to x_0} a x^n = a x_0^n$$
>2. **(Polinomio):** Per ogni funzione polinomiale $P: \mathbb{R} \to \mathbb{R}$, $P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$ con $a_k \in \mathbb{R}$ ($k = 0, \dots, n$), e per ogni $x_0 \in \mathbb{R}$, vale:
>$$\lim_{x \to x_0} P(x) = a_n x_0^n + a_{n-1} x_0^{n-1} + \dots + a_1 x_0 + a_0 = P(x_0)$$
>3. **(Funzione Razionale):** Siano $P(x)$ e $Q(x)$ due polinomi e sia $f: A \to \mathbb{R}$, $f(x) = \frac{P(x)}{Q(x)}$ definita su $A = \mathbb{R} \setminus \{x_1, \dots, x_m\}$, dove $x_i$ sono gli zeri di $Q(x)$. Per ogni $x_0 \in A$:
>$$\lim_{x \to x_0} \frac{P(x)}{Q(x)} = \frac{P(x_0)}{Q(x_0)}$$

**Dimostrazione:**
- **1. Monomio (per induzione su $n \in \mathbb{N}$):**
  - *Base induttiva ($n = 0$):* La tesi è vera perché la funzione $x \mapsto a x^0 = a$ è costante, e il limite di una costante è la costante stessa: $\lim_{x \to x_0} a x^0 = a = a x_0^0$.
  - *Passo induttivo ($n \implies n + 1$):* Supponiamo che la tesi sia vera per $n$, ossia $\lim_{x \to x_0} a x^n = a x_0^n$. Poiché:
$$a x^{n+1} = (a x^n) \cdot x$$
  ed essendo $\lim_{x \to x_0} x = x_0$, dal Teorema sul prodotto dei limiti segue:
$$\lim_{x \to x_0} a x^{n+1} = \left(\lim_{x \to x_0} a x^n\right) \left(\lim_{x \to x_0} x\right) = a x_0^n \cdot x_0 = a x_0^{n+1}$$
- **2. Polinomio:** Poiché $P(x) = \sum_{k=0}^n a_k x^k$ è una somma finita di monomi del tipo considerato al punto (1), applicando il Teorema sulla somma dei limiti si ottiene $\lim_{x \to x_0} P(x) = \sum_{k=0}^n a_k x_0^k = P(x_0)$.
- **3. Funzione Razionale:** Se $x_0 \in A = \mathbb{R} \setminus \{x_1, \dots, x_m\}$, dal punto (2) segue che $\lim_{x \to x_0} P(x) = P(x_0)$ e $\lim_{x \to x_0} Q(x) = Q(x_0) \ne 0$. Applicando il Teorema sul limite del rapporto si ha:
$$\lim_{x \to x_0} \frac{P(x)}{Q(x)} = \frac{P(x_0)}{Q(x_0)} \quad \blacksquare$$

### Teorema 2.1: Teorema della Permanenza delle Disuguaglianze
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ due funzioni e supponiamo che:
>$$\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}} \quad \text{e} \quad \lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}}$$
>Allora:
>$$\ell > m \implies f(x) > g(x) \text{ in un intorno di } x_0$$

**Dimostrazione:**
Per ipotesi $\ell, m \in \overline{\mathbb{R}}$ e $\ell > m$. Per la proprietà di separazione di $\overline{\mathbb{R}}$, possiamo scegliere due intorni $V_1 \in \mathcal{U}(\ell)$ e $V_2 \in \mathcal{U}(m)$, rispettivamente di $\ell$ e $m$, in modo che siano disgiunti e separati:
$$V_1 \cap V_2 = \emptyset \quad \text{e} \quad V_1 \ge V_2 \quad \text{(sono separati)}$$
In altri termini, vale la relazione d'ordine stretta tra ogni coppia di elementi dei due intorni:
$$\forall y_1 \in V_1, \, \forall y_2 \in V_2 : \quad y_1 > y_2 \tag{1}$$
Poiché per ipotesi $f(x) \to \ell$ e $g(x) \to m$ per $x \to x_0$, per la definizione topologica di limite si deve avere:
$$f(x) \in V_1 \text{ in un intorno di } x_0 \quad \text{e} \quad g(x) \in V_2 \text{ in un intorno di } x_0$$
Per la proprietà di intersezione di due proprietà locali (Proposizione 3.3 della Lezione 14), risulta che:
$$f(x) \in V_1 \quad \text{e} \quad g(x) \in V_2 \quad \text{simultaneamente in un intorno di } x_0$$
Di conseguenza, applicando la $(1)$ con $y_1 = f(x)$ e $y_2 = g(x)$, si conclude che:
$$f(x) > g(x) \text{ in un intorno di } x_0 \quad \blacksquare$$

### Corollario 2.3: Confronto Locale con una Costante
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f: A \to \mathbb{R}$ e $\lambda \in \mathbb{R}$ e supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
>$$\ell > \lambda \text{ (risp. } \ell < \lambda\text{)} \implies f(x) > \lambda \text{ (risp. } f(x) < \lambda\text{) in un intorno di } x_0$$

**Dimostrazione:**
Consegue direttamente dal Teorema 2.1 (della permanenza delle disuguaglianze) scegliendo come seconda funzione la funzione costante $g(x) \equiv \lambda$, il cui limite per $x \to x_0$ è $m = \lambda$. $\blacksquare$

### Corollario 2.4: Teorema della Permanenza del Segno
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e $f: A \to \mathbb{R}$. Sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$. Supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
>$$\ell > 0 \text{ (risp. } \ell < 0\text{)} \implies f(x) > 0 \text{ (risp. } f(x) < 0\text{) in un intorno di } x_0$$

**Dimostrazione:**
Consegue immediatamente dal Corollario 2.3 ponendo $\lambda = 0$. $\blacksquare$

### Corollario 2.5: Teorema di Prolungamento delle Disuguaglianze
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ due funzioni e supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$ e $\lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}}$. Allora:
>$$f(x) \le g(x) \text{ in un intorno di } x_0 \implies \ell \le m$$

**Dimostrazione:**
Supponiamo che $f(x) \le g(x)$ in un intorno di $x_0$. La dimostrazione procede **per assurdo**: supponiamo che la tesi sia falsa, ovvero che sia $\ell > m$.
Per il Teorema della permanenza delle disuguaglianze (Teorema 2.1), da $\ell > m$ si avrebbe:
$$f(x) > g(x) \text{ in un intorno di } x_0$$
Ma per ipotesi stiamo supponendo che $f(x) \le g(x)$ in un intorno di $x_0$; prendendo l'intersezione dei due intorni si arriverebbe a:
$$f(x) \le g(x) \quad \text{e} \quad f(x) > g(x) \quad \text{simultaneamente in un intorno di } x_0$$
Questo produce una contraddizione, dato che un numero reale non può essere simultaneamente minore o uguale e strettamente maggiore di un altro numero reale. Pertanto deve necessariamente valere $\ell \le m$. $\blacksquare$

### Teorema 2.7: Teorema del Confronto (o della Convergenza Obbligata o dei Carabinieri)
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f, g, h: A \to \mathbb{R}$ tre funzioni definite in $A$ a valori in $\mathbb{R}$ e supponiamo che:
>1. $f(x) \le g(x) \le h(x)$ in un intorno di $x_0$;
>2. $\lim_{x \to x_0} f(x) = \ell$ e $\lim_{x \to x_0} h(x) = \ell$, con $\ell \in \overline{\mathbb{R}}$.
>
>Allora:
>$$\lim_{x \to x_0} g(x) = \ell$$

**Dimostrazione:**
Sia $V \in \mathcal{U}(\ell)$ un intorno arbitrario di $\ell$. Dobbiamo provare che $g(x) \in V$ in un intorno di $x_0$.
Osserviamo preliminarmente che, essendo $V$ un intervallo di $\overline{\mathbb{R}}$, vale la proprietà di convessità:
$$y_1, y_2 \in V \quad \text{e} \quad y_1 \le y_2 \implies [y_1, y_2] \subset V \tag{2}$$
Dall'ipotesi (2) segue che:
$$f(x) \in V \text{ in un intorno di } x_0 \quad \text{e} \quad h(x) \in V \text{ in un intorno di } x_0$$
Inoltre, per l'ipotesi (1), si ha $f(x) \le g(x) \le h(x)$ in un intorno di $x_0$.
Perciò, intersecando i tre intorni, possiamo affermare che le tre condizioni:
$$\begin{cases} f(x) \in V \\ h(x) \in V \\ f(x) \le g(x) \le h(x) \end{cases}$$
sono simultaneamente vere in un intorno di $x_0$.
Allora, poiché $g(x) \in [f(x), h(x)]$ con $f(x), h(x) \in V$, ricordando la $(2)$ si conclude che $g(x) \in V$ in un intorno di $x_0$, ossia $\lim_{x \to x_0} g(x) = \ell$.
- **Caso particolare per $\ell = +\infty$ (Osservazione 2.8):** Basta la sola condizione $f(x) \le g(x)$ in un intorno di $x_0$ con $\lim_{x \to x_0} f(x) = +\infty$. Infatti, se $V = ]\beta, +\infty]$ è un intorno di $+\infty$, allora $f(x) \in ]\beta, +\infty]$ e $f(x) \le g(x)$ valgono simultaneamente in un intorno di $x_0$, implicando $g(x) \in ]\beta, +\infty] = V$. Analogamente, per $\ell = -\infty$, basta $g(x) \le h(x)$ con $h(x) \to -\infty$. $\blacksquare$

### Corollario 2.9: Maggiorazione in Valore Assoluto con Funzione Infinitesima
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ due funzioni e supponiamo che:
>$$|f(x)| \le g(x) \text{ in un intorno di } x_0$$
>Allora si ha:
>$$\lim_{x \to x_0} g(x) = 0 \implies \lim_{x \to x_0} f(x) = 0$$

**Dimostrazione:**
Supponiamo che $\lim_{x \to x_0} g(x) = 0$. Dalla proprietà del valore assoluto, la disuguaglianza $|f(x)| \le g(x)$ equivale a:
$$-g(x) \le f(x) \le g(x) \text{ in un intorno di } x_0$$
Poiché anche $\lim_{x \to x_0} (-g(x)) = 0$, dal Teorema 2.7 (dei carabinieri) segue immediatamente $\lim_{x \to x_0} f(x) = 0$. $\blacksquare$

### Esempio 2.10: Limiti Trigonometrici Fondamentali e Limite Notevole $\frac{\sin x}{x}$
>[!important] Enunciato
>Valgono i seguenti limiti fondamentali per $x \to 0$:
>$$\lim_{x \to 0} \sin x = 0, \qquad \lim_{x \to 0} \cos x = 1, \qquad \lim_{x \to 0} \frac{\sin x}{x} = 1$$

**Dimostrazione:**
1. **Disuguaglianza geometrica preliminare:** Sulla circonferenza trigonometrica di centro $O$ e raggio $OA = 1$, per ogni $x \in ]0, \pi/2[$ il triangolo $OAB$ (di area $\frac{\sin x}{2}$) è contenuto nel settore circolare $OAB$ (di area $\frac{x}{2}$), che a sua volta è contenuto nel triangolo rettangolo $OAC$ (di area $\frac{\tan x}{2}$). Moltiplicando per $2$ le aree si ottiene:
$$\forall x \in ]0, \pi/2[ : \quad \sin x < x < \tan x = \frac{\sin x}{\cos x} \tag{4}$$
2. **Prova di $\lim_{x \to 0} \sin x = 0$:** Dalla prima disuguaglianza di $(4)$, tenendo conto che $\sin x$ è dispari, per $x \in ]-\pi/2, 0[$ si ha $-x \in ]0, \pi/2[$ e quindi:
$$\sin(-x) < -x \implies \underbrace{-\sin x}_{< 0} < \underbrace{-x}_{< 0} \implies |\sin x| < |x|$$
Unendo il caso $x \in ]0, \pi/2[$ (in cui $\sin x > 0$), vale:
$$\forall x \in ]-\pi/2, \pi/2[ \setminus \{0\} : \quad |\sin x| < |x| \tag{5}$$
Essendo $\lim_{x \to 0} |x| = 0$, dal Corollario 2.9 segue $\lim_{x \to 0} \sin x = 0$.
3. **Prova di $\lim_{x \to 0} \cos x = 1$:** Dalla formula di duplicazione del coseno $\cos 2\alpha = 1 - 2\sin^2\alpha$ (con $\alpha = x/2$) segue $\cos x = 1 - 2\sin^2\frac{x}{2}$. Dalla $(5)$ si ottiene:
$$\forall x \in ]-\pi, \pi[ \setminus \{0\} : \quad 0 \le \sin^2\frac{x}{2} = \left|\sin\frac{x}{2}\right|^2 < \left|\frac{x}{2}\right|^2 = \frac{x^2}{4}$$
Poiché $\lim_{x \to 0} \frac{x^2}{4} = 0$, dal Corollario 2.9 segue $\lim_{x \to 0} \sin^2\frac{x}{2} = 0$. Per il Teorema sulle operazioni sui limiti:
$$\lim_{x \to 0} \cos x = \lim_{x \to 0} \left(1 - 2\sin^2\frac{x}{2}\right) = 1 - 2 \cdot 0 = 1$$
4. **Prova di $\lim_{x \to 0} \frac{\sin x}{x} = 1$:** Il limite si presenta nella forma indeterminata $\frac{0}{0}$. Dalla $(4)$, dividendo per $\sin x > 0$ per ogni $x \in ]0, \pi/2[$ e passando ai reciproci:
$$\forall x \in ]0, \pi/2[ : \quad 1 < \frac{x}{\sin x} < \frac{1}{\cos x} \implies \cos x < \frac{\sin x}{x} < 1$$
Poiché $\cos x$ è pari e $\sin x$ è dispari, per ogni $x \in ]-\pi/2, 0[$ si ha $-x \in ]0, \pi/2[$ e dunque:
$$\cos(-x) < \frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} < 1 \implies \cos x < \frac{\sin x}{x} < 1$$
In definitiva:
$$\forall x \in ]-\pi/2, \pi/2[ \setminus \{0\} : \quad \cos x < \frac{\sin x}{x} < 1$$
Poiché $\lim_{x \to 0} \cos x = 1$ e $\lim_{x \to 0} 1 = 1$, per il Teorema dei carabinieri (Teorema 2.7) segue $\lim_{x \to 0} \frac{\sin x}{x} = 1$. $\blacksquare$

### Esempio 2.12: Limiti della Funzione Potenza $x^n$ all'Infinito
>[!important] Enunciato
>Sia $n \in \mathbb{N}$ con $n \ge 1$. Allora:
>$$\lim_{x \to +\infty} x^n = +\infty \qquad \text{e} \qquad \lim_{x \to -\infty} x^n = \begin{cases} +\infty & \text{se } n \text{ è pari} \\ -\infty & \text{se } n \text{ è dispari} \end{cases}$$

**Dimostrazione:**
- **Caso $x \to +\infty$:** Dalla disuguaglianza di Bernoulli, per ogni $x \in \mathbb{R}^+$ (ossia in un intorno di $+\infty$) vale:
$$x^n = (1 + x - 1)^n \ge 1 + n(x - 1)$$
Poiché $\lim_{x \to +\infty} [1 + n(x - 1)] = +\infty$ (essendo $n \ge 1 > 0$), per l'Osservazione 2.8 segue $\lim_{x \to +\infty} x^n = +\infty$.
- **Caso $x \to -\infty$ con $n$ pari:** Per ogni $x \in \mathbb{R}^-$, si ha $-x > 0$ e dalla disuguaglianza di Bernoulli:
$$x^n = (-x)^n \ge 1 + n(-x - 1) = 1 - n(x + 1) \quad \text{in un intorno di } -\infty$$
Poiché $\lim_{x \to -\infty} [1 - n(x + 1)] = +\infty$, dall'Osservazione 2.8 segue $\lim_{x \to -\infty} x^n = +\infty$.
- **Caso $x \to -\infty$ con $n$ dispari:** Per ogni $x \in \mathbb{R}^-$, si ha $-x^n = (-x)^n \ge 1 + n(-x - 1) = 1 - n(x + 1)$, ovvero:
$$x^n \le -1 + n(x + 1) \quad \text{in un intorno di } -\infty$$
Poiché $\lim_{x \to -\infty} [-1 + n(x + 1)] = -\infty$, l'Osservazione 2.8 implica $\lim_{x \to -\infty} x^n = -\infty$. $\blacksquare$

### Corollario 2.13: Prodotto di una Funzione Infinitesima per una Limitata
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ due funzioni tali che:
>$$\lim_{x \to x_0} f(x) = 0 \quad \text{e} \quad g(x) \text{ è limitata in un intorno di } x_0$$
>Allora:
>$$\lim_{x \to x_0} f(x)g(x) = 0$$

**Dimostrazione:**
Per ipotesi esiste una costante $C > 0$ tale che:
$$|g(x)| \le C \text{ in un intorno di } x_0$$
Moltiplicando per $|f(x)| \ge 0$, si ottiene:
$$|f(x)g(x)| \le C|f(x)| \text{ in un intorno di } x_0$$
Poiché $\lim_{x \to x_0} C|f(x)| = C \cdot 0 = 0$, applicando il Corollario 2.9 segue $\lim_{x \to x_0} f(x)g(x) = 0$. $\blacksquare$

### Proposizione 2.15: Limitatezza Unilaterale Locale
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ e $f: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
>1. Se $\ell > -\infty$, allora $f$ è limitata inferiormente in un intorno di $x_0$ ($\exists \lambda \in \mathbb{R} : \lambda \le f(x)$ in un intorno di $x_0$).
>2. Se $\ell < +\infty$, allora $f$ è limitata superiormente in un intorno di $x_0$ ($\exists \lambda \in \mathbb{R} : f(x) \le \lambda$ in un intorno di $x_0$).

**Dimostrazione:**
Proviamo la (1) (la (2) si dimostra in modo del tutto analogo). Supponiamo che $\ell > -\infty$. Allora è possibile scegliere un numero reale $\lambda \in \mathbb{R}$ tale che $\lambda < \ell$. Per il primo corollario del teorema della permanenza delle disuguaglianze (Corollario 2.3), si ha:
$$\lambda < f(x) \quad (\implies \lambda \le f(x)) \text{ in un intorno di } x_0 \quad \blacksquare$$

### Teorema 2.16: Somma di Limiti Infiniti
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ e supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \{-\infty, +\infty\}$. Allora:
>1. Se $\ell = +\infty$ e $g$ è limitata inferiormente in un intorno di $x_0$, allora $\lim_{x \to x_0} (f + g)(x) = +\infty$.
>2. Se $\ell = -\infty$ e $g$ è limitata superiormente in un intorno di $x_0$, allora $\lim_{x \to x_0} (f + g)(x) = -\infty$.

**Dimostrazione:**
Proviamo la (1) (la (2) è analoga). Sia $\beta > 0$ fissato arbitrariamente. Dobbiamo provare che:
$$f(x) + g(x) > \beta \text{ in un intorno di } x_0$$
Per l'ipotesi che $g$ sia limitata inferiormente, esiste $\lambda \in \mathbb{R}$ tale che:
$$g(x) \ge \lambda \text{ in un intorno di } x_0$$
D'altra parte, poiché $\lim_{x \to x_0} f(x) = +\infty$, in corrispondenza della soglia reale $\beta - \lambda$ si ha:
$$f(x) > \beta - \lambda \text{ in un intorno di } x_0$$
Nell'intersezione dei due intorni le condizioni $g(x) \ge \lambda$ e $f(x) > \beta - \lambda$ sono simultaneamente vere; sommandole membro a membro si ottiene:
$$f(x) + g(x) > (\beta - \lambda) + \lambda = \beta \text{ in un intorno di } x_0 \quad \blacksquare$$

### Teorema 2.19: Prodotto di Limiti Infiniti e Passaggio al Reciproco
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$, e siano $f, g: A \to \mathbb{R}$. Valgono le seguenti:
>1. **(i)** Se $\lim_{x \to x_0} f(x) = +\infty$ (risp. $-\infty$) e $\lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}} \setminus \{0\}$, allora:
>$$\lim_{x \to x_0} f(x)g(x) = \begin{cases} +\infty \text{ (risp. } -\infty\text{)} & \text{se } m > 0 \\ -\infty \text{ (risp. } +\infty\text{)} & \text{se } m < 0 \end{cases}$$
>2. **(ii)** Se $\lim_{x \to x_0} f(x) = \pm\infty$, allora:
>$$\lim_{x \to x_0} \frac{1}{f(x)} = 0$$
>3. **(iii)** Se $\lim_{x \to x_0} f(x) = 0$ e $f(x) > 0$ (risp. $f(x) < 0$) in un intorno di $x_0$, allora:
>$$\lim_{x \to x_0} \frac{1}{f(x)} = +\infty \quad \text{(risp. } -\infty\text{)}$$

**Dimostrazione:**
- **Prova di (i):** Consideriamo il caso $\lim_{x \to x_0} f(x) = +\infty$ e $m \in ]0, +\infty]$ (gli altri casi si provano allo stesso modo). Sia $\beta > 0$ e scegliamo $\lambda \in \mathbb{R}$ tale che $0 < \lambda < m$. Per il teorema della permanenza delle disuguaglianze (Corollario 2.3), risulta:
$$g(x) > \lambda > 0 \text{ in un intorno di } x_0$$
Inoltre, dato che $\lim_{x \to x_0} f(x) = +\infty$, in corrispondenza di $\frac{\beta}{\lambda} > 0$ si ha:
$$f(x) > \frac{\beta}{\lambda} \text{ in un intorno di } x_0$$
Allora entrambe le condizioni sono vere simultaneamente in un intorno di $x_0$ e, moltiplicando membro a membro (essendo quantità positive), si ha:
$$f(x)g(x) > \frac{\beta}{\lambda} \cdot \lambda = \beta \text{ in un intorno di } x_0$$
- **Prova di (ii):** Sia $\varepsilon > 0$. Dobbiamo provare che:
$$\left|\frac{1}{f(x)}\right| < \varepsilon \text{ in un intorno di } x_0 \iff |f(x)| > \frac{1}{\varepsilon} \text{ in un intorno di } x_0$$
  - Se $\lim_{x \to x_0} f(x) = +\infty \implies f(x) > \frac{1}{\varepsilon} > 0$ in un intorno di $x_0 \implies |f(x)| > \frac{1}{\varepsilon}$ in un intorno di $x_0$.
  - Se $\lim_{x \to x_0} f(x) = -\infty \implies f(x) < -\frac{1}{\varepsilon} < 0$ in un intorno di $x_0 \implies |f(x)| = -f(x) > \frac{1}{\varepsilon}$ in un intorno di $x_0$.
  Perciò, in ogni caso, $|f(x)| > \frac{1}{\varepsilon}$ in un intorno di $x_0$.
- **Prova di (iii):** Sia $\beta > 0$ (caso $f(x) > 0$). Per ipotesi $\lim_{x \to x_0} f(x) = 0$, quindi:
$$|f(x)| < \frac{1}{\beta} \text{ in un intorno di } x_0 \quad \text{e} \quad f(x) > 0 \text{ in un intorno di } x_0$$
Le due condizioni valgono simultaneamente nell'intersezione degli intorni, da cui:
$$0 < f(x) < \frac{1}{\beta} \text{ in un intorno di } x_0 \implies \frac{1}{f(x)} > \beta \text{ in un intorno di } x_0$$
che dimostra $\lim_{x \to x_0} \frac{1}{f(x)} = +\infty$. $\blacksquare$


---

## Lezione 17: Limiti delle Funzioni Composte e Confronto Locale

### Teorema 1.1: Limite delle Funzioni Composte (Regola di Sostituzione)
>[!important] Enunciato
>Siano $A, B \subset \mathbb{R}$ due sottoinsiemi non vuoti, $f: A \to \mathbb{R}$ e $g: B \to \mathbb{R}$ con $f(A) \subset B$. Siano $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ e $y_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $B$. Supponiamo che:
>1. $\lim_{x \to x_0} f(x) = y_0$ e $\lim_{y \to y_0} g(y) = \ell \in \overline{\mathbb{R}}$;
>2. $f(x) \neq y_0$ definitivamente in un intorno forato di $x_0$.
>
>Allora:
>$$\lim_{x \to x_0} (g \circ f)(x) = \lim_{x \to x_0} g(f(x)) = \ell$$
>Inoltre, se $y_0 \in B$ e la funzione $g$ è continua in $y_0$ (cioè $\ell = g(y_0)$), la conclusione sussiste anche se l'ipotesi (2) non è soddisfatta.

**Dimostrazione:**
Sia $W$ un intorno aperto di $\ell$ in $\overline{\mathbb{R}}$.
1. Poiché per ipotesi $\lim_{y \to y_0} g(y) = \ell$, dalla definizione topologica di limite esiste un intorno $V \in \mathcal{U}(y_0)$ tale che:
$$y \in V \cap B \setminus \{y_0\} \implies g(y) \in W \tag{1}$$
2. Poiché $\lim_{x \to x_0} f(x) = y_0$, in corrispondenza dell'intorno $V$ esiste un intorno $U_1 \in \mathcal{U}(x_0)$ tale che:
$$x \in U_1 \cap A \setminus \{x_0\} \implies f(x) \in V \tag{2}$$
3. Dall'ipotesi (2), esiste un intorno $U_2 \in \mathcal{U}(x_0)$ tale che:
$$x \in U_2 \cap A \setminus \{x_0\} \implies f(x) \neq y_0 \tag{3}$$
4. Poniamo $U = U_1 \cap U_2 \in \mathcal{U}(x_0)$. Nell'intersezione $U$, le condizioni $(2)$ e $(3)$ valgono simultaneamente. Essendo per ipotesi $f(A) \subset B$, per ogni $x \in U \cap A \setminus \{x_0\}$ si deduce che:
$$f(x) \in V \cap B \setminus \{y_0\}$$
5. Applicando la relazione $(1)$ con $y = f(x)$, si ottiene:
$$g(f(x)) \in W$$
Ciò prova che per ogni intorno $W$ di $\ell$ esiste un intorno $U$ di $x_0$ tale che $g(f(x)) \in W$ per ogni $x \in U \cap A \setminus \{x_0\}$, ossia $\lim_{x \to x_0} g(f(x)) = \ell$.
Infine, se $y_0 \in B$ e $g$ è continua in $y_0$, la relazione $(1)$ vale per ogni $y \in V \cap B$ (anche per $y = y_0$), rendendo superflua la condizione $f(x) \neq y_0$.

$$\blacksquare$$

### Proposizione 2.2 (i): La Trascurabilità Rispetto a Se Stessi Implica l'Annullamento Locale
>[!important] Enunciato
>Sia $f: A \to \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Allora:
>$$f \ll f \text{ per } x \to x_0 \implies f(x) = 0 \text{ definitivamente in un intorno di } x_0$$

**Dimostrazione:**
Per definizione di trascurabilità locale $f \ll f$, esiste una funzione $\sigma: A \to \mathbb{R}$ tale che in un intorno $U_1$ di $x_0$:
$$f(x) = \sigma(x)f(x) \quad \text{con } \lim_{x \to x_0} \sigma(x) = 0$$
Fissiamo $\varepsilon = 1/2$. Dalla definizione di limite per $\sigma(x)$, esiste un intorno $U_2$ di $x_0$ tale che per ogni $x \in U_2 \cap A \setminus \{x_0\}$ si ha $|\sigma(x)| < 1/2$.
Nell'intersezione $U = U_1 \cap U_2$ risulta:
$$|f(x)| = |\sigma(x)||f(x)| \le \frac{1}{2}|f(x)| \iff |f(x)| - \frac{1}{2}|f(x)| \le 0 \iff \frac{1}{2}|f(x)| \le 0$$
Poiché la norma $|f(x)| \ge 0$, l'unica soluzione possibile è $|f(x)| = 0$, da cui $f(x) = 0$ per ogni $x \in U \cap A \setminus \{x_0\}$.

$$\blacksquare$$

### Proposizione 2.2 (ii, iii, iv): Proprietà Algebriche e d'Ordine delle Relazioni Locali
>[!important] Enunciato
>Siano $f, g, h: A \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ di accumulazione per $A$. Per $x \to x_0$:
>1. $f \ll g \land g \ll h \implies f \ll h$ (transitività di $\ll$);
>2. $\asymp$ e $\sim$ sono relazioni di equivalenza (riflessive, simmetriche e transitive).

**Dimostrazione:**
1. **Transitività:** Supponiamo che $f(x) = \sigma(x)g(x)$ in un intorno $U_1$ con $\lim \sigma(x) = \ell$, e $g(x) = \gamma(x)h(x)$ in un intorno $U_2$ con $\lim \gamma(x) = m$. Nell'intorno $U = U_1 \cap U_2$:
$$f(x) = [\sigma(x)\gamma(x)]h(x)$$
Per il Teorema sul limite del prodotto, $\lim_{x \to x_0} [\sigma(x)\gamma(x)] = \ell m$.
- Se $\ell = 0$ o $m = 0$, allora $\ell m = 0$, provando che $f \ll h$.
- Se $\ell \neq 0$ e $m \neq 0$, allora $\ell m \neq 0$, provando la transitività di $\asymp$.
- Se $\ell = 1$ e $m = 1$, allora $\ell m = 1$, provando la transitività di $\sim$.
2. **Riflessività:** Per ogni funzione $f$, scegliendo $\sigma(x) = 1$ costantemente, si ha $f(x) = 1 \cdot f(x)$ con $\lim_{x \to x_0} 1 = 1 \neq 0$. Quindi $f \asymp f$ e $f \sim f$.
3. **Simmetria:** Sia $f(x) = \sigma(x)g(x)$ in un intorno $U_1$ con $\lim \sigma(x) = \ell \neq 0$. Per il Teorema della permanenza del segno, esiste un intorno $U_2$ in cui $\sigma(x) \neq 0$. Definiamo $\gamma(x) = 1/\sigma(x)$ in $U_2$ e $0$ altrove. In $U_1 \cap U_2$ si ha $g(x) = \gamma(x)f(x)$ con $\lim_{x \to x_0} \gamma(x) = 1/\ell \neq 0$. Se $\ell = 1$, allora $1/\ell = 1$, provando la simmetria di $\asymp$ e $\sim$.

$$\blacksquare$$

### Proposizione 2.4: Caratterizzazione delle Relazioni Locali tramite Limite del Rapporto
>[!important] Enunciato
>Siano $f, g: A \to \mathbb{R}$ con $g(x) \neq 0$ per ogni $x$ in un intorno forato di $x_0$. Allora per $x \to x_0$:
>$$f = o(g) \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = 0$$
>$$f \asymp g \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = \ell \in \mathbb{R}^*$$
>$$f \sim g \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = 1$$
>Inoltre, se anche $f(x) \neq 0$ localmente:
>$$g = o(f) \iff \lim_{x \to x_0} \left|\frac{f(x)}{g(x)}\right| = +\infty$$

**Dimostrazione:**
Se $f(x) = \sigma(x)g(x)$ con $\lim \sigma(x) \in \{0, \ell, 1\}$, dividendo membro a membro per $g(x) \neq 0$ si ottiene $\sigma(x) = \frac{f(x)}{g(x)}$, da cui $\lim \frac{f(x)}{g(x)} = \lim \sigma(x)$.
Viceversa, se $\lim \frac{f(x)}{g(x)} = c$, definiamo $\sigma(x) = \frac{f(x)}{g(x)}$ per $x \neq x_0$ e $\sigma(x_0) = 0$. Allora $f(x) = \sigma(x)g(x)$ e $\lim \sigma(x) = c$.
Infine, per il limite a infinito:
$$\lim_{x \to x_0} \left|\frac{f(x)}{g(x)}\right| = +\infty \iff \lim_{x \to x_0} \left|\frac{g(x)}{f(x)}\right| = 0 \iff \lim_{x \to x_0} \frac{g(x)}{f(x)} = 0 \iff g = o(f)$$

$$\blacksquare$$

### Proposizione 3.1: Divergenza Rapida dell'Esponenziale Rispetto alla Potenza Lineare
>[!important] Enunciato
>Vale il limite di divergenza fondamentale:
>$$\lim_{n \to +\infty} \frac{e^n}{n} = +\infty$$

**Dimostrazione:**
Poiché la base naturale $e > 2$, per ogni numero naturale $n \ge 2$, applichiamo la formula dello sviluppo del binomio di Newton a $2^n = (1 + 1)^n$:
$$e^n > 2^n = (1 + 1)^n = \sum_{k=0}^n \binom{n}{k} \ge \binom{n}{0} + \binom{n}{1} + \binom{n}{2}$$
Calcolando i singoli coefficienti binomiali:
$$\binom{n}{0} = 1, \qquad \binom{n}{1} = n, \qquad \binom{n}{2} = \frac{n(n-1)}{2}$$
Pertanto:
$$e^n > 1 + n + \frac{n(n-1)}{2} = 1 + n + \frac{n^2 - n}{2} = 1 + \frac{n}{2} + \frac{n^2}{2} > \frac{n^2}{2}$$
Inoltre per $n = 1$ risulta $e^1 = e > 1/2$. Di conseguenza, per ogni intero positivo $n \in \mathbb{N}^*$:
$$e^n > \frac{n^2}{2} \implies \frac{e^n}{n} > \frac{n}{2}$$
Poiché $\lim_{n \to +\infty} \frac{n}{2} = +\infty$, applicando il Teorema del confronto con una sola funzione divergente (Osservazione 2.8 della Lezione 15), si conclude:
$$\lim_{n \to +\infty} \frac{e^n}{n} = +\infty$$

$$\blacksquare$$

---

## Lezione 18: Gerarchie di Infiniti e Infinitesimi e Continuità (Parte I)

### Proposizione 1.1: Gerarchia Universale degli Infiniti ed Infinitesimi per Funzioni
>[!important] Enunciato
>Siano $a > 1$ e $\alpha > 0$. Valgono i seguenti limiti:
>1. $\lim_{x \to +\infty} \frac{a^x}{x^\alpha} = +\infty$
>2. $\lim_{x \to -\infty} |x|^\alpha a^x = 0$
>3. $\lim_{x \to +\infty} \frac{\log_a x}{x^\alpha} = 0$
>4. $\lim_{x \to 0^+} x^\alpha \log_a x = 0$
>5. $\lim_{x \to +\infty} \frac{x^x}{a^x} = +\infty$

**Dimostrazione:**
- **Punto 1 ($a^x / x^\alpha \to +\infty$):**
  - *Caso $a = e$ e $\alpha = 1$:* Per ogni $x > 0$, la parte intera soddisfa $\lfloor x \rfloor \le x < \lfloor x \rfloor + 1$. Essendo l'esponenziale crescente e il reciproco decrescente:
$$e^{\lfloor x \rfloor} \le e^x \quad \text{e} \quad \frac{1}{\lfloor x \rfloor + 1} < \frac{1}{x} \implies \frac{e^{\lfloor x \rfloor}}{\lfloor x \rfloor + 1} \le \frac{e^x}{x}$$
  Ponendo $n = \lfloor x \rfloor$, per $x \to +\infty$ si ha $n \to +\infty$. Applicando la Proposizione 3.1 della Lezione 17:
$$\lim_{x \to +\infty} \frac{e^{\lfloor x \rfloor}}{\lfloor x \rfloor + 1} = \lim_{n \to +\infty} \left(\frac{e^n}{n} \cdot \frac{n}{n+1}\right) = (+\infty) \cdot 1 = +\infty \implies \lim_{x \to +\infty} \frac{e^x}{x} = +\infty$$
  - *Caso $a > 1$ e $\alpha = 1$:* Riscrivendo $a^x = e^{x \ln a}$ con $\ln a > 0$:
$$\lim_{x \to +\infty} \frac{a^x}{x} = \lim_{x \to +\infty} \left(\ln a \cdot \frac{e^{x \ln a}}{x \ln a}\right) = \ln a \cdot \lim_{y \to +\infty} \frac{e^y}{y} = (\ln a) \cdot (+\infty) = +\infty$$
  - *Caso generale $\alpha > 0$:* Scriviamo:
$$\frac{a^x}{x^\alpha} = \left(\frac{a^{x/\alpha}}{x}\right)^\alpha = \left(\frac{(a^{1/\alpha})^x}{x}\right)^\alpha$$
  Poiché $a^{1/\alpha} > 1$, dal passo precedente la frazione interna tende a $+\infty$, e per continuità della potenza $y^\alpha$ con $\alpha > 0$, il limite è $+\infty$.
- **Punto 2 ($|x|^\alpha a^x \to 0$ per $x \to -\infty$):**
  Ponendo $y = -x \to +\infty$, si ha $|x| = y$ e $a^x = a^{-y} = 1/a^y$. Allora:
$$\lim_{x \to -\infty} |x|^\alpha a^x = \lim_{y \to +\infty} \frac{y^\alpha}{a^y} = \lim_{y \to +\infty} \frac{1}{\frac{a^y}{y^\alpha}} = \frac{1}{+\infty} = 0$$
- **Punto 3 ($\frac{\log_a x}{x^\alpha} \to 0$ per $x \to +\infty$):**
  Ponendo $y = \log_a x \iff x = a^y$, per $x \to +\infty$ si ha $y \to +\infty$. Quindi:
$$\lim_{x \to +\infty} \frac{\log_a x}{x^\alpha} = \lim_{y \to +\infty} \frac{y}{(a^y)^\alpha} = \lim_{y \to +\infty} \frac{y}{(a^\alpha)^y} = 0$$
  poiché $a^\alpha > 1$.
- **Punto 4 ($x^\alpha \log_a x \to 0$ per $x \to 0^+$):**
  Ponendo $y = 1/x \to +\infty$, si ha $\log_a x = -\log_a y$:
$$\lim_{x \to 0^+} x^\alpha \log_a x = \lim_{y \to +\infty} \frac{-\log_a y}{y^\alpha} = -0 = 0$$
- **Punto 5 ($x^x / a^x \to +\infty$ per $x \to +\infty$):**
  Riscrivendo in base esponenziale:
$$\frac{x^x}{a^x} = \frac{e^{x \ln x}}{e^{x \ln a}} = e^{x(\ln x - \ln a)}$$
  Poiché $\lim_{x \to +\infty} x(\ln x - \ln a) = (+\infty) \cdot (+\infty) = +\infty$, dal limite della funzione esponenziale segue che $\lim_{x \to +\infty} e^{x(\ln x - \ln a)} = +\infty$.

$$\blacksquare$$

### Proposizione 1.4: Criterio del Rapporto per Successioni
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ una successione a termini strettamente positivi ($a_n > 0$) tale che:
>$$\lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]$$
>Allora:
>$$\lim_{n \to +\infty} a_n = \begin{cases} +\infty & \text{se } \ell > 1 \\ 0 & \text{se } \ell < 1 \end{cases}$$

**Dimostrazione:**
1. **Caso $\ell < 1$:** Scegliamo un numero reale $q$ tale che $\ell < q < 1$. Per il Teorema della permanenza delle disuguaglianze applicato a $\frac{a_{n+1}}{a_n} \to \ell$, esiste un indice $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$:
$$\frac{a_{n+1}}{a_n} < q \implies a_{n+1} < q a_n$$
Iterando a ritroso la disuguaglianza per $n > \nu$:
$$a_n \le q a_{n-1} \le q^2 a_{n-2} \le \dots \le q^{n - \nu - 1} a_{\nu + 1} = \left(\frac{a_{\nu+1}}{q^{\nu+1}}\right) q^n$$
Poiché $0 < q < 1$, la successione geometrica $q^n \to 0$ per $n \to +\infty$. Essendo $a_n > 0$, per il Teorema dei carabinieri segue che $\lim_{n \to +\infty} a_n = 0$.
2. **Caso $\ell > 1$:** Scegliamo un numero reale $q$ tale che $1 < q < \ell$. Per il Teorema della permanenza delle disuguaglianze, esiste un indice $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$:
$$\frac{a_{n+1}}{a_n} > q \implies a_{n+1} > q a_n$$
Iterando per $n > \nu$:
$$a_n > \left(\frac{a_{\nu+1}}{q^{\nu+1}}\right) q^n$$
Poiché $q > 1$, la successione geometrica $q^n \to +\infty$. Per confronto con una costante positiva moltiplicata per $q^n$, segue che $\lim_{n \to +\infty} a_n = +\infty$.

$$\blacksquare$$

### Proposizione 1.5: Limiti Notevoli di Fattoriali e Torri Esponenziali
>[!important] Enunciato
>Valgono i seguenti limiti per $n \to +\infty$:
>1. $\lim_{n \to +\infty} \frac{n!}{a^n} = +\infty \quad (\forall a > 1)$
>2. $\lim_{n \to +\infty} \frac{n^n}{n!} = +\infty$
>3. $\lim_{n \to +\infty} \frac{(2n)!}{n^n} = +\infty$

**Dimostrazione:**
In tutti i casi applichiamo il Criterio del rapporto (Proposizione 1.4):
1. Poniamo $b_n = \frac{n!}{a^n}$. Il quoziente vale:
$$\frac{b_{n+1}}{b_n} = \frac{(n+1)!}{a^{n+1}} \cdot \frac{a^n}{n!} = \frac{(n+1)n! \cdot a^n}{a \cdot a^n \cdot n!} = \frac{n+1}{a}$$
Poiché $\lim_{n \to +\infty} \frac{n+1}{a} = +\infty > 1$, segue $\lim_{n \to +\infty} b_n = +\infty$.
2. Poniamo $b_n = \frac{n^n}{n!}$. Il quoziente vale:
$$\frac{b_{n+1}}{b_n} = \frac{(n+1)^{n+1}}{(n+1)!} \cdot \frac{n!}{n^n} = \frac{(n+1)(n+1)^n}{(n+1)n!} \cdot \frac{n!}{n^n} = \left(\frac{n+1}{n}\right)^n = \left(1 + \frac{1}{n}\right)^n$$
Poiché $\lim_{n \to +\infty} \left(1 + \frac{1}{n}\right)^n = e \approx 2.718 > 1$, segue $\lim_{n \to +\infty} b_n = +\infty$.
3. Poniamo $b_n = \frac{(2n)!}{n^n}$. Il quoziente vale:
$$\frac{b_{n+1}}{b_n} = \frac{[2(n+1)]!}{(n+1)^{n+1}} \cdot \frac{n^n}{(2n)!} = \frac{(2n+2)(2n+1)(2n)!}{(n+1)(n+1)^n} \cdot \frac{n^n}{(2n)!} = \frac{2(n+1)(2n+1)}{n+1} \cdot \left(\frac{n}{n+1}\right)^n = 2(2n+1) \cdot \frac{1}{\left(1 + \frac{1}{n}\right)^n}$$
Passando al limite:
$$\lim_{n \to +\infty} \frac{b_{n+1}}{b_n} = \lim_{n \to +\infty} \left[2(2n+1) \cdot \frac{1}{(1 + 1/n)^n}\right] = (+\infty) \cdot \frac{1}{e} = +\infty > 1$$
Dunque $\lim_{n \to +\infty} b_n = +\infty$.

$$\blacksquare$$

### Proposizione 2.3: Continuità nei Punti Isolati e Caratterizzazione nei Punti di Accumulazione
>[!important] Enunciato
>Sia $f: A \subset \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in A$.
>1. Se $x_0$ è un punto isolato di $A$, allora $f$ è continua in $x_0$.
>2. Se $x_0$ è punto di accumulazione per $A$, allora:
>$$f \text{ è continua in } x_0 \iff \lim_{x \to x_0} f(x) = f(x_0)$$

**Dimostrazione:**
1. Se $x_0$ è punto isolato di $A$, esiste un intorno $U \in \mathcal{U}(x_0)$ tale che $U \cap A = \{x_0\}$. Ne segue che per ogni intorno $V \in \mathcal{U}(f(x_0))$:
$$f(U \cap A) = f(\{x_0\}) = \{f(x_0)\} \subset V$$
La condizione topologica di continuità è soddisfatta per qualsiasi intorno $V$.
2. Se $x_0 \in A$ è punto di accumulazione per $A$, dato che ogni intorno $V$ di $f(x_0)$ contiene già $f(x_0)$, si ha che per ogni intorno $U \in \mathcal{U}(x_0)$:
$$f(U \cap A) \subset V \iff f(U \cap A \setminus \{x_0\}) \subset V$$
che è esattamente la definizione del limite funzionale $\lim_{x \to x_0} f(x) = f(x_0)$.

$$\blacksquare$$

---

## Lezione 19: Funzioni Continue e Punti di Discontinuità

### Lemma 1.3: Rappresentazione Algebrica di Massimo e Minimo
>[!important] Enunciato
>Per ogni coppia di numeri reali $a, b \in \mathbb{R}$:
>$$\max\{a, b\} = \frac{a + b + |a - b|}{2}, \qquad \min\{a, b\} = \frac{a + b - |a - b|}{2}$$

**Dimostrazione:**
Distinguiamo i due casi possibili di ordinamento:
- **Caso $a \le b$:** Allora $a - b \le 0$, perciò $|a - b| = -(a - b) = b - a$. Sostituendo:
$$\frac{a + b + |a - b|}{2} = \frac{a + b + b - a}{2} = \frac{2b}{2} = b = \max\{a, b\}$$
$$\frac{a + b - |a - b|}{2} = \frac{a + b - (b - a)}{2} = \frac{2a}{2} = a = \min\{a, b\}$$
- **Caso $a \ge b$:** Allora $a - b \ge 0$, perciò $|a - b| = a - b$. Sostituendo:
$$\frac{a + b + |a - b|}{2} = \frac{a + b + a - b}{2} = \frac{2a}{2} = a = \max\{a, b\}$$
$$\frac{a + b - |a - b|}{2} = \frac{a + b - (a - b)}{2} = \frac{2b}{2} = b = \min\{a, b\}$$
L'uguaglianza è verificata in entrambi i casi.

$$\blacksquare$$

### Teorema 1.2: Algebra della Continuità e Stabilità Reticolare
>[!important] Enunciato
>Siano $f, g: A \to \mathbb{R}$ continue in $x_0 \in A$. Allora sono continue in $x_0$:
>1. $f + g$
>2. $f \cdot g$
>3. $f/g$ (se $g(x) \neq 0$ per ogni $x \in A$)
>4. $|f|$
>5. $f \vee g = \max\{f, g\}$ e $f \wedge g = \min\{f, g\}$
>6. La restrizione $f|_B$ per ogni sottoinsieme $B \subset A$ contenente $x_0$.

**Dimostrazione:**
Se $x_0$ è isolato la continuità è immediata. Se $x_0$ è di accumulazione per $A$:
$$\lim_{x \to x_0} f(x) = f(x_0) \quad \text{e} \quad \lim_{x \to x_0} g(x) = g(x_0)$$
1. Per il teorema sulla somma dei limiti: $\lim (f+g)(x) = f(x_0) + g(x_0) = (f+g)(x_0)$.
2. Per il teorema sul prodotto dei limiti: $\lim (fg)(x) = f(x_0)g(x_0) = (fg)(x_0)$.
3. Per il teorema sul quoziente: essendo $g(x_0) \neq 0$, $\lim (f/g)(x) = f(x_0)/g(x_0) = (f/g)(x_0)$.
4. Dalla disuguaglianza triangolare inversa $\big||f(x)| - |f(x_0)|\big| \le |f(x) - f(x_0)| \to 0$, segue $\lim |f(x)| = |f(x_0)|$.
5. Dal Lemma 1.3, punto per punto:
$$(f \vee g)(x) = \frac{f(x) + g(x) + |f(x) - g(x)|}{2}, \qquad (f \wedge g)(x) = \frac{f(x) + g(x) - |f(x) - g(x)|}{2}$$
Poiché $f$ e $g$ sono continue, la differenza $f - g$ è continua per i punti (1) e (2); il valore assoluto $|f - g|$ è continuo per il punto (4); infine somme e prodotti per costanti scalari sono continue per i punti (1) e (2). Dunque $f \vee g$ e $f \wedge g$ sono continue in $x_0$.
6. Segue dal Teorema sul limite delle restrizioni di funzioni.

$$\blacksquare$$

### Proposizione 1.7: La Proprietà di Lipschitz Implica la Continuità
>[!important] Enunciato
>Sia $f: A \to \mathbb{R}$ una funzione Lipschitziana con costante $L > 0$, cioè:
>$$\forall x, y \in A: \quad |f(x) - f(y)| \le L |x - y|$$
>Allora $f$ è continua su tutto il dominio $A$.

**Dimostrazione:**
Sia $x_0 \in A$ arbitrario. Fissato $\varepsilon > 0$, definiamo $\delta = \frac{\varepsilon}{L} > 0$.
Per ogni $x \in A$ con $|x - x_0| < \delta$, applicando la disuguaglianza di Lipschitz:
$$|f(x) - f(x_0)| \le L |x - x_0| < L \cdot \delta = L \cdot \frac{\varepsilon}{L} = \varepsilon$$
La definizione metrica di continuità è verificata in ogni punto $x_0 \in A$.

$$\blacksquare$$

### Esempio 1.8: 1-Lipschitzianità delle Funzioni Seno e Coseno tramite Formule di Prostaferesi
>[!important] Enunciato
>Le funzioni goniometriche fondamentali soddisfano:
>$$\forall x, y \in \mathbb{R}: \quad |\sin x - \sin y| \le |x - y| \qquad \text{e} \qquad |\cos x - \cos y| \le |x - y|$$
>e sono pertanto Lipschitziane con costante $L = 1$, dunque continue su $\mathbb{R}$.

**Dimostrazione:**
Richiamiamo le formule di prostaferesi:
$$\sin x - \sin y = 2 \cos\left(\frac{x+y}{2}\right) \sin\left(\frac{x-y}{2}\right)$$
$$\cos x - \cos y = -2 \sin\left(\frac{x+y}{2}\right) \sin\left(\frac{x-y}{2}\right)$$
Utilizzando le disuguaglianze trigonometriche note $|\cos \theta| \le 1$, $|\sin \theta| \le 1$ e $|\sin t| \le |t|$ per ogni $t \in \mathbb{R}$:
$$|\sin x - \sin y| = 2 \left|\cos\left(\frac{x+y}{2}\right)\right| \left|\sin\left(\frac{x-y}{2}\right)\right| \le 2 \cdot 1 \cdot \left|\frac{x-y}{2}\right| = 2 \cdot \frac{|x-y|}{2} = |x - y|$$
Analogamente per il coseno:
$$|\cos x - \cos y| = 2 \left|\sin\left(\frac{x+y}{2}\right)\right| \left|\sin\left(\frac{x-y}{2}\right)\right| \le 2 \cdot 1 \cdot \left|\frac{x-y}{2}\right| = |x - y|$$
Dunque seno e coseno sono 1-Lipschitziane e di conseguenza continue su tutto $\mathbb{R}$.

$$\blacksquare$$

### Teorema 1.9: Continuità delle Funzioni Composte
>[!important] Enunciato
>Siano $A, B \subset \mathbb{R}$ non vuoti, $f: A \to B$ e $g: B \to \mathbb{R}$. Sia $x_0 \in A$. Allora:
>$$f \text{ continua in } x_0 \quad \land \quad g \text{ continua in } f(x_0) \implies g \circ f \text{ è continua in } x_0$$

**Dimostrazione:**
Sia $W$ un intorno aperto di $g(f(x_0))$ in $\mathbb{R}$.
1. Poiché $g$ è continua nel punto $y_0 = f(x_0) \in B$, per la definizione topologica di continuità esiste un intorno $V \in \mathcal{U}(f(x_0))$ tale che:
$$y \in V \cap B \implies g(y) \in W$$
2. Poiché $f$ è continua nel punto $x_0 \in A$, in corrispondenza dell'intorno $V$ esiste un intorno $U \in \mathcal{U}(x_0)$ tale che:
$$x \in U \cap A \implies f(x) \in V$$
3. Essendo per ipotesi $f(A) \subset B$, per ogni $x \in U \cap A$ risulta $f(x) \in V \cap B$, da cui segue direttamente:
$$g(f(x)) \in W$$
Ciò dimostra che $f(U \cap A) \subset V \implies g(f(U \cap A)) \subset W$, ovvero che $(g \circ f)$ è continua in $x_0$.

$$\blacksquare$$

---

## Lezione 20: Continuità delle Funzioni Monotone e Limiti Notevoli

### Teorema 1.4: Teorema dell'Immagine Intervallo per Funzioni Monotone
>[!important] Enunciato
>Sia $f: A \to \mathbb{R}$ una funzione monotona. Se l'immagine $f(A)$ è un intervallo di $\mathbb{R}$, allora $f$ è continua su tutto $A$.

**Dimostrazione:**
Ricordiamo la proprietà caratteristica fondamentale di un intervallo $I \subset \mathbb{R}$:
$$\forall y_1, y_2 \in I, \quad y_1 < y_2 \land y_1 < y < y_2 \implies y \in I$$
Supponiamo senza perdita di generalità che $f$ sia crescente e sia $x_0 \in A$.
Supponiamo per assurdo che $f$ non sia continua a sinistra in $x_0$, ossia che $x_0$ sia di accumulazione a sinistra per $A$ e che:
$$f(x_0^-) = \sup_{\substack{x \in A \\ x < x_0}} f(x) < f(x_0)$$
Dalla monotonia crescente di $f$, per ogni $x \in A$ si ha:
$$x < x_0 \implies f(x) \le f(x_0^-) \quad \text{e} \quad x \ge x_0 \implies f(x) \ge f(x_0)$$
Scegliamo un punto $x_1 \in A$ con $x_1 < x_0$. Poniamo $y_1 = f(x_1)$ e $y_0 = f(x_0)$. Poiché $y_1 \le f(x_0^-) < f(x_0) = y_0$, entrambi i valori $y_1, y_0$ appartengono all'immagine $f(A)$.
Tuttavia, nessun valore $y$ appartenente all'intervallo non degenere $]f(x_0^-), f(x_0)[$ può essere assunto dalla funzione, poiché $f(x) \le f(x_0^-)$ per ogni $x < x_0$ e $f(x) \ge f(x_0)$ per ogni $x \ge x_0$.
Di conseguenza l'insieme immagine $f(A)$ contiene $y_1$ e $y_0$ ma non contiene i punti intermedi compresi tra $f(x_0^-)$ e $f(x_0)$, il che contraddice l'ipotesi che $f(A)$ sia un intervallo.
Dunque deve essere $f(x_0^-) = f(x_0)$.
In modo del tutto speculare si prova che se $x_0$ è di accumulazione a destra deve risultare $f(x_0^+) = f(x_0)$. Pertanto $f$ è continua in ogni punto $x_0 \in A$.

$$\blacksquare$$

### Teorema - Limite Notevole 1: Generazione del Numero di Nepero $e$
>[!important] Enunciato
>Vale il limite fondamentale per $x \to \pm\infty$:
>$$\lim_{x \to \pm\infty} \left(1 + \frac{1}{x}\right)^x = e$$

**Dimostrazione:**
1. **Caso $x \to +\infty$:**
   Per ogni $x \ge 1$, dalla disuguaglianza della parte intera $\lfloor x \rfloor \le x < \lfloor x \rfloor + 1$:
$$1 + \frac{1}{\lfloor x \rfloor + 1} < 1 + \frac{1}{x} \le 1 + \frac{1}{\lfloor x \rfloor}$$
   Elevando a potenza (essendo basi ed esponenti positivi):
$$\left(1 + \frac{1}{\lfloor x \rfloor + 1}\right)^{\lfloor x \rfloor} < \left(1 + \frac{1}{x}\right)^x \le \left(1 + \frac{1}{\lfloor x \rfloor}\right)^{\lfloor x \rfloor + 1}$$
   Poniamo $n = \lfloor x \rfloor \in \mathbb{N}$ e calcoliamo i limiti delle successioni agli estremi per $n \to +\infty$:
$$\lim_{n \to +\infty} \left(1 + \frac{1}{n+1}\right)^n = \lim_{n \to +\infty} \left[\left(1 + \frac{1}{n+1}\right)^{n+1} \cdot \left(1 + \frac{1}{n+1}\right)^{-1}\right] = e \cdot 1 = e$$
$$\lim_{n \to +\infty} \left(1 + \frac{1}{n}\right)^{n+1} = \lim_{n \to +\infty} \left[\left(1 + \frac{1}{n}\right)^n \cdot \left(1 + \frac{1}{n}\right)\right] = e \cdot 1 = e$$
   Per il Teorema dei carabinieri segue $\lim_{x \to +\infty} \left(1 + \frac{1}{x}\right)^x = e$.
2. **Caso $x \to -\infty$:**
   Per $x < -1$, poniamo $x = -|x|$. Riscrivendo la frazione:
$$\left(1 + \frac{1}{x}\right)^x = \left(1 - \frac{1}{|x|}\right)^{-|x|} = \left(\frac{|x|-1}{|x|}\right)^{-|x|} = \left(\frac{|x|}{|x|-1}\right)^{|x|} = \left(1 + \frac{1}{|x|-1}\right)^{|x|}$$
   Scomponendo l'esponente $|x| = (|x|-1) + 1$:
$$\left(1 + \frac{1}{|x|-1}\right)^{|x|-1} \cdot \left(1 + \frac{1}{|x|-1}\right)$$
   Ponendo $y = |x| - 1 \to +\infty$ per $x \to -\infty$, applicando il limite per $y \to +\infty$:
$$\lim_{x \to -\infty} \left(1 + \frac{1}{x}\right)^x = \lim_{y \to +\infty} \left[\left(1 + \frac{1}{y}\right)^y \cdot \left(1 + \frac{1}{y}\right)\right] = e \cdot 1 = e$$

$$\blacksquare$$

### Teorema - Limite Notevole 2: Limite della Potenza di Binomio con Parametro
>[!important] Enunciato
>Per ogni parametro reale $p \in \mathbb{R}$:
>$$\lim_{x \to \pm\infty} \left(1 + \frac{p}{x}\right)^x = e^p \qquad \text{e} \qquad \lim_{x \to 0} (1 + px)^{1/x} = e^p$$

**Dimostrazione:**
Se $p = 0$, la base vale costantemente $1$ e $1^x = 1 = e^0$.
Supponiamo $p \neq 0$. Poniamo $y = x/p$, da cui $x = py$.
Per $x \to \pm\infty$, risulta $y \to \pm\infty \cdot \text{sgn}(p) = \pm\infty$.
Riscriviamo la funzione:
$$\left(1 + \frac{p}{x}\right)^x = \left[\left(1 + \frac{1}{x/p}\right)^{x/p}\right]^p = \left[\left(1 + \frac{1}{y}\right)^y\right]^p$$
Per il Limite Notevole 1, la base converge a $e$; per la continuità della funzione potenza $t \mapsto t^p$ su $\mathbb{R}^+$:
$$\lim_{x \to \pm\infty} \left(1 + \frac{p}{x}\right)^x = \lim_{y \to \pm\infty} \left[\left(1 + \frac{1}{y}\right)^y\right]^p = e^p$$
Per il secondo limite, ponendo $y = 1/x$, per $x \to 0^\pm$ si ha $y \to \pm\infty$:
$$\lim_{x \to 0} (1 + px)^{1/x} = \lim_{y \to \pm\infty} \left(1 + \frac{p}{y}\right)^y = e^p$$

$$\blacksquare$$

### Teorema - Limite Notevole 3: Limite Notevole del Logaritmo
>[!important] Enunciato
>Sia $a > 0$ con $a \neq 1$. Allora:
>$$\lim_{x \to 0} \frac{\log_a(1 + x)}{x} = \log_a e = \frac{1}{\ln a}$$
>In particolare, per $a = e$:
>$$\lim_{x \to 0} \frac{\ln(1 + x)}{x} = 1$$

**Dimostrazione:**
Applicando la proprietà fondamentale dei logaritmi $k \log_a t = \log_a(t^k)$:
$$\frac{\log_a(1 + x)}{x} = \frac{1}{x} \cdot \log_a(1 + x) = \log_a \left[(1 + x)^{1/x}\right]$$
Per il Limite Notevole 2 con $p = 1$, si ha $\lim_{x \to 0} (1 + x)^{1/x} = e$.
Poiché la funzione logaritmica $\log_a$ è continua nel punto $e \in ]0, +\infty[$, applicando il Teorema di continuità delle funzioni composte (Osservazione 1.10 della Lezione 19):
$$\lim_{x \to 0} \frac{\log_a(1 + x)}{x} = \lim_{y \to e} \log_a y = \log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$$

$$\blacksquare$$

### Teorema - Limite Notevole 4: Limite Notevole dell'Esponenziale
>[!important] Enunciato
>Sia $a > 0$. Allora:
>$$\lim_{x \to 0} \frac{a^x - 1}{x} = \ln a$$
>In particolare, per $a = e$:
>$$\lim_{x \to 0} \frac{e^x - 1}{x} = 1$$

**Dimostrazione:**
Se $a = 1$ il numeratore è identicamente nullo e $\ln 1 = 0$.
Sia $a \neq 1$. Effettuiamo la sostituzione di variabile $y = a^x - 1$.
Dall'invertibilità della funzione esponenziale:
$$1 + y = a^x \iff x = \log_a(1 + y)$$
Poiché la funzione esponenziale $a^x$ è continua, per $x \to 0$ risulta $y \to a^0 - 1 = 0$. Inoltre per $x \neq 0$ si ha $y \neq 0$.
Sostituendo nella frazione:
$$\frac{a^x - 1}{x} = \frac{y}{\log_a(1 + y)} = \frac{1}{\frac{\log_a(1 + y)}{y}}$$
Applicando il Teorema sul limite delle funzioni composte e il Limite Notevole 3:
$$\lim_{x \to 0} \frac{a^x - 1}{x} = \lim_{y \to 0} \frac{1}{\frac{\log_a(1 + y)}{y}} = \frac{1}{\log_a e} = \ln a$$

$$\blacksquare$$

### Teorema - Limite Notevole 5: Limite Notevole della Potenza Reale
>[!important] Enunciato
>Per ogni $\alpha \in \mathbb{R}$:
>$$\lim_{x \to 0} \frac{(1 + x)^\alpha - 1}{x} = \alpha$$

**Dimostrazione:**
Riscriviamo la base esponenziale $(1 + x)^\alpha = e^{\ln\left[(1 + x)^\alpha\right]} = e^{\alpha \ln(1 + x)}$.
Moltiplicando e dividendo opportunamente:
$$\frac{(1 + x)^\alpha - 1}{x} = \frac{e^{\alpha \ln(1 + x)} - 1}{x} = \frac{e^{\alpha \ln(1 + x)} - 1}{\alpha \ln(1 + x)} \cdot \frac{\ln(1 + x)}{x} \cdot \alpha$$
Ponendo $y = \alpha \ln(1 + x)$, poiché per $x \to 0$ si ha $y \to 0$, per il Limite Notevole 4 dell'esponenziale:
$$\lim_{x \to 0} \frac{e^{\alpha \ln(1 + x)} - 1}{\alpha \ln(1 + x)} = \lim_{y \to 0} \frac{e^y - 1}{y} = 1$$
Inoltre per il Limite Notevole 3 del logaritmo:
$$\lim_{x \to 0} \frac{\ln(1 + x)}{x} = 1$$
Pertanto, per il teorema sul limite del prodotto:
$$\lim_{x \to 0} \frac{(1 + x)^\alpha - 1}{x} = 1 \cdot 1 \cdot \alpha = \alpha$$

$$\blacksquare$$

### Teorema - Limite Notevole 6: Limiti Trigonometrici di Coseno e Tangente
>[!important] Enunciato
>Valgono i seguenti limiti per $x \to 0$:
>$$\lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2} \qquad \text{e} \qquad \lim_{x \to 0} \frac{\tan x}{x} = 1$$

**Dimostrazione:**
1. **Per il coseno:** Moltiplichiamo numeratore e denominatore per $1 + \cos x$:
$$\frac{1 - \cos x}{x^2} = \frac{(1 - \cos x)(1 + \cos x)}{x^2 (1 + \cos x)} = \frac{1 - \cos^2 x}{x^2 (1 + \cos x)} = \frac{\sin^2 x}{x^2 (1 + \cos x)} = \left(\frac{\sin x}{x}\right)^2 \cdot \frac{1}{1 + \cos x}$$
Poiché $\lim_{x \to 0} \frac{\sin x}{x} = 1$ e per continuità del coseno $\lim_{x \to 0} \cos x = \cos 0 = 1$:
$$\lim_{x \to 0} \frac{1 - \cos x}{x^2} = (1)^2 \cdot \frac{1}{1 + 1} = \frac{1}{2}$$
2. **Per la tangente:** Scrivendo $\tan x = \frac{\sin x}{\cos x}$:
$$\lim_{x \to 0} \frac{\tan x}{x} = \lim_{x \to 0} \left(\frac{\sin x}{x} \cdot \frac{1}{\cos x}\right) = \left(\lim_{x \to 0} \frac{\sin x}{x}\right) \cdot \left(\lim_{x \to 0} \frac{1}{\cos x}\right) = 1 \cdot \frac{1}{1} = 1$$

$$\blacksquare$$


---

## Lezione 21: Teoremi di Bolzano e Proprietà Topologiche per Successioni

### Proposizione 1.6: Proprietà di Minimo della Chiusura
>[!important] Enunciato
>Per ogni insieme $A \subset \mathbb{R}$, l'aderenza $\overline{A}$ è un insieme chiuso ed è il più piccolo insieme chiuso contenente $A$ (ovvero $\overline{\overline{A}} = \overline{A}$).

**Dimostrazione:**
Ricordiamo che se $U$ è un intorno di un punto $x$, allora $U$ è intorno di ogni punto $y$ sufficientemente vicino a $x$ (proprietà di apertura degli intorni).
Proviamo che $\overline{\overline{A}} \subset \overline{A}$ (essendo $\overline{A} \subset \overline{\overline{A}}$ sempre verificata).
Sia $x \in \overline{\overline{A}}$. Allora per ogni intorno $U \in \mathcal{U}(x)$ si ha $U \cap \overline{A} \neq \emptyset$.
Sia dunque $y \in U \cap \overline{A}$. Poiché $y \in U$ ed essendo $U$ un intorno aperto, $U$ è anche un intorno del punto $y$.
Dato che $y \in \overline{A}$, per la definizione di aderenza ogni intorno di $y$ interseca $A$, e in particolare $U \cap A \neq \emptyset$.
Poiché ciò sussiste per ogni intorno $U$ di $x$, deduciamo che $x \in \overline{A}$.
Dunque $\overline{\overline{A}} = \overline{A}$, il che dimostra che $\overline{A}$ è un insieme chiuso.
Inoltre, se $C$ è un qualsiasi insieme chiuso tale che $A \subset C$, allora $\overline{A} \subset \overline{C} = C$, provando che $\overline{A}$ è il minimo chiuso contenente $A$.

$$\blacksquare$$

### Teorema 2.1: Caratterizzazione dei Limiti mediante Successioni (Teorema Ponte)
>[!important] Enunciato
>Siano $f: A \to \mathbb{R}$, $\ell \in \overline{\mathbb{R}}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Allora:
>$$\lim_{x \to x_0} f(x) = \ell \iff \left( \forall (a_n)_{n \in \mathbb{N}} \in (A \setminus \{x_0\})^{\mathbb{N}}, \ a_n \to x_0 \implies \lim_{n \to +\infty} f(a_n) = \ell \right)$$

**Dimostrazione:**
1. **(i) $\implies$ (ii):** Supponiamo che $\lim_{x \to x_0} f(x) = \ell$ e sia $(a_n)$ una successione in $A \setminus \{x_0\}$ con $a_n \to x_0$.
   Sia $V$ un intorno arbitrario di $\ell$. Per la definizione di limite di funzione, esiste un intorno $U \in \mathcal{U}(x_0)$ tale che per ogni $x \in U \cap A \setminus \{x_0\}$ si ha $f(x) \in V$.
   Dato che $a_n \to x_0$, in corrispondenza dell'intorno $U$ esiste un indice $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$ risulta $a_n \in U$.
   Poiché per ipotesi $a_n \in A \setminus \{x_0\}$, per ogni $n > \nu$ si ha $a_n \in U \cap A \setminus \{x_0\}$, da cui $f(a_n) \in V$.
   Ciò prova che $f(a_n) \to \ell$.
2. **(ii) $\implies$ (i):** Dimostriamo la contronominale: supponiamo per assurdo che non sia vero che $\lim_{x \to x_0} f(x) = \ell$.
   Allora esiste un intorno $V$ di $\ell$ per cui nessun intorno $U$ di $x_0$ verifica la condizione di limite.
   Consideriamo una famiglia numerabile di intorni decrescenti di $x_0$:
$$U_n = \begin{cases} ]x_0 - \frac{1}{n+1}, x_0 + \frac{1}{n+1}[ & \text{se } x_0 \in \mathbb{R} \\ ]n, +\infty] & \text{se } x_0 = +\infty \\ [-\infty, -n[ & \text{se } x_0 = -\infty \end{cases}$$
   Per ogni $n \in \mathbb{N}$, la proprietà di limite fallisce in $U_n$, dunque esiste un punto $a_n \in U_n \cap A \setminus \{x_0\}$ tale che $f(a_n) \notin V$.
   La successione $(a_n)$ così costruita soddisfa $a_n \in A \setminus \{x_0\}$ e $a_n \to x_0$, ma la successione immagine $f(a_n)$ non può convergere a $\ell$ poiché tutti i suoi elementi giacciono fuori da $V$.
   Ciò contraddice l'ipotesi (ii).

$$\blacksquare$$

### Teorema 2.2: Caratterizzazione Sequenziale della Continuità
>[!important] Enunciato
>Siano $f: A \to \mathbb{R}$ e $x_0 \in A$. La funzione $f$ è continua in $x_0$ se e solo se per ogni successione $(a_n)_{n \in \mathbb{N}}$ in $A$ con $a_n \to x_0$, risulta:
>$$\lim_{n \to +\infty} f(a_n) = f(x_0)$$

**Dimostrazione:**
Se $x_0$ è un punto isolato di $A$, $f$ è automaticamente continua in $x_0$; d'altra parte ogni successione in $A$ che converge a $x_0$ è definitivamente costante ($a_n = x_0$), per cui $f(a_n) = f(x_0)$ definitivamente e l'equivalenza è banale.
Se $x_0$ è punto di accumulazione per $A$, l'equivalenza discende direttamente dal Teorema Ponte (Teorema 2.1) ponendo $\ell = f(x_0)$ ed estendendo la convergenza anche nel caso in cui $a_n$ assuma il valore $x_0$, essendo in tal caso $f(a_n) = f(x_0) \in V$.

$$\blacksquare$$

### Proposizione 2.3: Caratterizzazione Sequenziale della Chiusura
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ e $x \in \mathbb{R}$. Allora:
>$$x \in \overline{A} \iff \exists (a_n)_{n \in \mathbb{N}} \in A^{\mathbb{N}} \quad \text{tale che} \quad \lim_{n \to +\infty} a_n = x$$

**Dimostrazione:**
1. **$\impliedby$:** Sia $(a_n) \in A^{\mathbb{N}}$ con $a_n \to x$. Per ogni intorno $U \in \mathcal{U}(x)$, per definizione di limite esiste $\nu \in \mathbb{N}$ tale che $a_n \in U$ per ogni $n > \nu$. Poiché $a_n \in A$, si ha $U \cap A \neq \emptyset$, dunque $x \in \overline{A}$.
2. **$\implies$:** Sia $x \in \overline{A}$. Per ogni $n \in \mathbb{N}$, consideriamo l'intorno sferico $U_n = ]x - \frac{1}{n+1}, x + \frac{1}{n+1}[$. Poiché $x \in \overline{A}$, per ogni $n$ si ha $U_n \cap A \neq \emptyset$. Scegliamo un elemento $a_n \in U_n \cap A$.
   Si ottiene una successione $(a_n) \in A^{\mathbb{N}}$ che soddisfa:
$$x - \frac{1}{n+1} < a_n < x + \frac{1}{n+1}$$
   Per il Teorema dei carabinieri, $\lim_{n \to +\infty} a_n = x$.

$$\blacksquare$$

### Proposizione 2.4: Caratterizzazione Sequenziale degli Insiemi Chiusi
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$. Sono equivalenti:
>- **(i)** $A$ è chiuso in $\mathbb{R}$.
>- **(ii)** Per ogni successione convergente $(a_n)_{n \in \mathbb{N}}$ di elementi di $A$, il limite appartiene ad $A$ ($a_n \to x \implies x \in A$).

**Dimostrazione:**
- **(i) $\implies$ (ii):** Sia $(a_n) \in A^{\mathbb{N}}$ con $a_n \to x \in \mathbb{R}$. Per la Proposizione 2.3, $x \in \overline{A}$. Ma per ipotesi $A$ è chiuso, dunque $\overline{A} = A$, da cui $x \in A$.
- **(ii) $\implies$ (i):** Sia $x \in \overline{A}$. Per la Proposizione 2.3 esiste una successione $(a_n) \in A^{\mathbb{N}}$ tale che $a_n \to x$. Dall'ipotesi (ii) segue che $x \in A$. Dunque $\overline{A} \subset A$, da cui $\overline{A} = A$, provando che $A$ è chiuso.

$$\blacksquare$$

### Teorema 3.1: Teorema degli Zeri di Bolzano (Dimostrazione con Bisezione)
>[!important] Enunciato
>Sia $I$ un intervallo di $\mathbb{R}$ e sia $f: I \to \mathbb{R}$ continua. Siano $a, b \in I$ con $a < b$ tali che $f(a)f(b) < 0$. Allora esiste almeno un punto $x_0 \in ]a, b[$ tale che:
>$$f(x_0) = 0$$

**Dimostrazione:**
Costruiamo mediante bisezione successiva una successione di intervalli compatti inscatolati $[a_n, b_n]$.
Poniamo $I_0 = [a_0, b_0]$ con $a_0 = a$ e $b_0 = b$.
Valutiamo il punto medio $c_0 = (a_0 + b_0)/2$. Se $f(c_0) = 0$, abbiamo trovato lo zero cercato.
Altrimenti $f(c_0) \neq 0$, e poiché $f(a_0)$ e $f(b_0)$ hanno segni discordi, $f(c_0)$ avrà segno discorde con uno dei due estremi. Selezioniamo il semintervallo a estremi discordi:
$$I_1 = [a_1, b_1] = \begin{cases} [a_0, c_0] & \text{se } f(a_0)f(c_0) < 0 \\ [c_0, b_0] & \text{se } f(c_0)f(b_0) < 0 \end{cases}$$
Iterando il procedimento, al passo $n$-esimo controlliamo $c_n = (a_n + b_n)/2$: se $f(c_n) = 0$ il processo termina; altrimenti definiamo $I_{n+1} = [a_{n+1}, b_{n+1}]$ con $f(a_{n+1})f(b_{n+1}) < 0$.
Si ottiene una successione di intervalli soddisfacente:
1. $a = a_0 \le a_1 \le \dots \le a_n \le a_{n+1} \le b_{n+1} \le b_n \le \dots \le b_0 = b$;
2. $b_n - a_n = \frac{b - a}{2^n}$;
3. $f(a_n) f(b_n) < 0$ per ogni $n \in \mathbb{N}$.

Dalla proprietà (1), $(a_n)$ è monotona crescente e superiormente limitata da $b$, mentre $(b_n)$ è monotona decrescente e inferiormente limitata da $a$. Per il Teorema sui limiti delle successioni monotone, entrambe convergono:
$$a_n \to x_0 = \sup_{n} a_n \in [a, b], \qquad b_n \to x_1 = \inf_{n} b_n \in [a, b]$$
Dalla proprietà (2):
$$x_1 - x_0 = \lim_{n \to +\infty} (b_n - a_n) = \lim_{n \to +\infty} \frac{b - a}{2^n} = 0 \implies x_0 = x_1$$
Dunque entrambe le successioni convergono allo stesso punto $x_0$.
Poiché $f$ è continua in $x_0$, per il Teorema Ponte:
$$f(a_n) \to f(x_0) \quad \text{e} \quad f(b_n) \to f(x_0) \implies f(a_n) f(b_n) \to [f(x_0)]^2$$
Poiché $f(a_n)f(b_n) < 0$ per ogni $n$, per il Teorema di permanenza delle disuguaglianze:
$$[f(x_0)]^2 \le 0 \implies f(x_0) = 0$$
Infine, poiché $f(a) \neq 0$ e $f(b) \neq 0$, risulta necessariamente $x_0 \in ]a, b[$.

$$\blacksquare$$

### Teorema 4.1: Teorema degli Zeri di Bolzano (Dimostrazione Variazionale)
>[!important] Enunciato
>Sia $f: [a, b] \to \mathbb{R}$ continua con $f(a) < 0 < f(b)$. Allora esiste $x_0 \in ]a, b[$ tale che $f(x_0) = 0$.

**Dimostrazione:**
Definiamo l'insieme:
$$A = \{x \in [a, b] \mid f(x) < 0\}$$
- $A \neq \emptyset$ poiché $a \in A$.
- $A$ è limitato superiormente da $b$.
Per l'Assioma di completezza dei numeri reali, esiste finito:
$$x_0 = \sup A \in [a, b]$$
Per la permanenza del segno:
1. Poiché $f(a) < 0$, esiste $\delta_1 > 0$ tale che $f(x) < 0$ in $[a, a+\delta_1]$, da cui $a+\delta_1 \le x_0 \implies x_0 > a$.
2. Poiché $f(b) > 0$, esiste $\delta_2 > 0$ tale che $f(x) > 0$ in $[b-\delta_2, b]$, dunque $[b-\delta_2, b] \cap A = \emptyset$, da cui $x_0 \le b - \delta_2 < b$.
Quindi $x_0 \in ]a, b[$.
Mostriamo che non può essere né $f(x_0) < 0$ né $f(x_0) > 0$:
- Se fosse $f(x_0) < 0$, per la permanenza del segno esisterebbe $\delta > 0$ tale che $f(x) < 0$ per ogni $x \in ]x_0-\delta, x_0+\delta[$. Ma allora $x_0 + \frac{\delta}{2} \in A$, contraddicendo il fatto che $x_0$ sia un maggiorante di $A$.
- Se fosse $f(x_0) > 0$, per la permanenza del segno esisterebbe $\delta > 0$ tale che $f(x) > 0$ per ogni $x \in ]x_0-\delta, x_0+\delta[$. Allora nessun elemento di $]x_0-\delta, x_0]$ apparterrebbe ad $A$, per cui $x_0 - \delta$ sarebbe un maggiorante di $A$ strettamente minore di $x_0$, contraddicendo il fatto che $x_0$ sia il minimo dei maggioranti.
L'unica possibilità compatibile è $f(x_0) = 0$.

$$\blacksquare$$


---

## Lezione 22: Valori Intermedi, Punti Fissi e Teorema di Bolzano-Weierstrass

### Teorema 1.1: Teorema dei Valori Intermedi di Bolzano (1° Forma)
>[!important] Enunciato
>Sia $f: I \to \mathbb{R}$ continua su un intervallo $I \subset \mathbb{R}$. Siano $a, b \in I$ con $f(a) < f(b)$. Allora per ogni $y \in ]f(a), f(b)[$ esiste $x \in I$ tale che $f(x) = y$.
>Inoltre, posti $m = \inf_I f$ e $M = \sup_I f$, si ha $]m, M[ \subset f(I)$.

**Dimostrazione:**
Sia $y \in ]f(a), f(b)[$. Definiamo la funzione ausiliaria $g: I \to \mathbb{R}$ ponendo:
$$g(x) = f(x) - y$$
La funzione $g$ è continua su $I$ in quanto differenza di funzioni continue. Valutando agli estremi $a$ e $b$:
$$g(a) = f(a) - y < 0, \qquad g(b) = f(b) - y > 0$$
Ne consegue che $g(a)g(b) < 0$. Per il Teorema degli zeri di Bolzano (Teorema 3.1 della Lezione 21):
- Se $a < b$, esiste $x \in ]a, b[ \subset I$ tale che $g(x) = 0$;
- Se $b < a$, esiste $x \in ]b, a[ \subset I$ tale che $g(x) = 0$.
In ogni caso esiste $x \in I$ tale che $f(x) - y = 0 \iff f(x) = y$, provando che $[f(a), f(b)] \subset f(I)$.
Per la seconda parte, sia $y \in ]m, M[$. Dalle proprietà di $\inf$ e $\sup$, esistono due punti $a, b \in I$ tali che $m \le f(a) < y < f(b) \le M$.
Applicando il risultato precedente all'intervallo di estremi $a$ e $b$, deduciamo che $y \in f(I)$, provando che $]m, M[ \subset f(I)$.

$$\blacksquare$$

### Teorema 1.3: Teorema dei Valori Intermedi (2° Forma Topologica)
>[!important] Enunciato
>Sia $f: I \to \mathbb{R}$ una funzione continua definita in un intervallo $I \subset \mathbb{R}$. Allora l'immagine $f(I)$ è un intervallo di $\mathbb{R}$.

**Dimostrazione:**
Per il Teorema 1.1, l'immagine $f(I)$ contiene l'intervallo aperto $]\inf_I f, \sup_I f[$.
D'altra parte, per definizione di estremo inferiore e superiore, ogni valore $f(x)$ è compreso tra essi:
$$f(I) \subset [\inf_I f, \sup_I f]$$
Pertanto $f(I)$ è necessariamente un intervallo di estremi $\inf_I f$ e $\sup_I f$ (aperto, chiuso o semiaperto, limitato o illimitato).

$$\blacksquare$$

### Corollario 1.4: Esistenza ed Unicità della Radice $n$-esima Reale Positiva
>[!important] Enunciato
>Per ogni $n \in \mathbb{N}^*$ e ogni $y \in \mathbb{R}^+$, esiste un unico $x \in \mathbb{R}^+$ tale che:
>$$x^n = y$$

**Dimostrazione:**
- **Unicità:** La funzione potenza intera $f: \mathbb{R}^+ \to \mathbb{R}^+$, $f(x) = x^n$ è strettamente crescente su $\mathbb{R}^+$ (se $0 \le x_1 < x_2$, allora $x_1^n < x_2^n$). Essendo strettamente monotona, $f$ è iniettiva, dunque il valore $y$ può essere assunto al più una volta.
- **Esistenza:** Scegliamo $a = 0$ e $b \in \mathbb{R}^+$ con $b > 1$ e $b > y$. Allora:
$$a^n = 0 \le y < b < b^n$$
  Poiché la funzione polinomiale $f(x) = x^n$ è continua sull'intervallo $[a, b]$ e $y$ è un valore compreso tra $f(a) = 0$ e $f(b) = b^n$, per il Teorema dei valori intermedi esiste almeno un punto $x \in [a, b] \subset \mathbb{R}^+$ tale che $x^n = y$.

$$\blacksquare$$

### Teorema 2.1: Teorema del Punto Fisso per Intervalli Compatti
>[!important] Enunciato
>Sia $g: [a, b] \to [a, b]$ una funzione continua. Allora esiste almeno un punto $x_0 \in [a, b]$ tale che:
>$$g(x_0) = x_0$$

**Dimostrazione:**
L'equazione $g(x) = x$ è equivalente a $g(x) - x = 0$.
Definiamo la funzione $f: [a, b] \to \mathbb{R}$ ponendo $f(x) = g(x) - x$.
Essendo $g$ continua e la funzione identità continua, $f$ è continua su $[a, b]$.
Poiché per ipotesi $g([a, b]) \subset [a, b]$, per ogni $x \in [a, b]$ si ha $a \le g(x) \le b$. Valutando agli estremi:
$$f(a) = g(a) - a \ge a - a = 0$$
$$f(b) = g(b) - b \le b - b = 0$$
- Se $f(a) = 0$, allora $g(a) = a$ e $x_0 = a$ è un punto fisso.
- Se $f(b) = 0$, allora $g(b) = b$ e $x_0 = b$ è un punto fisso.
- Se $f(a) > 0$ e $f(b) < 0$, allora $f(a)f(b) < 0$. Per il Teorema degli zeri di Bolzano esiste $x_0 \in ]a, b[$ tale che $f(x_0) = 0 \iff g(x_0) = x_0$.

$$\blacksquare$$

### Teorema 2.2: Equivalenza tra Iniettività e Stretta Monotonia su Intervalli
>[!important] Enunciato
>Sia $I \subset \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$ una funzione continua. Allora:
>$$f \text{ è iniettiva} \iff f \text{ è strettamente monotona}$$

**Dimostrazione:**
- **$\impliedby$:** Banalmente, ogni funzione strettamente monotona su un qualsiasi insieme è sempre iniettiva ($x_1 \neq x_2 \implies x_1 < x_2 \lor x_2 < x_1 \implies f(x_1) < f(x_2) \lor f(x_2) < f(x_1) \implies f(x_1) \neq f(x_2)$).
- **$\implies$:** Supponiamo che $f$ sia continua e iniettiva sull'intervallo $I$.
  *Passo 1 (Conservazione dei valori intermedi):* Proviamo che per ogni terna $x, y, z \in I$ con $x < y < z$, $f(y)$ è strettamente intermedio tra $f(x)$ e $f(z)$ (cioè $f(x) < f(y) < f(z)$ oppure $f(z) < f(y) < f(x)$).
  Infatti, per iniettività $f(x), f(y), f(z)$ sono tutti distinti. Se per assurdo $f(y)$ non fosse intermedio, allora $f(y)$ sarebbe o maggiore di entrambi o minore di entrambi:
  se ad esempio $f(y) > \max(f(x), f(z))$, scegliamo un valore $k$ tale che $\max(f(x), f(z)) < k < f(y)$.
  Applicando il Teorema dei valori intermedi a $[x, y]$, esiste $c_1 \in ]x, y[$ tale che $f(c_1) = k$.
  Applicando il Teorema dei valori intermedi a $[y, z]$, esiste $c_2 \in ]y, z[$ tale che $f(c_2) = k$.
  Ma $c_1 < y < c_2 \implies c_1 \neq c_2$ con $f(c_1) = f(c_2) = k$, contraddicendo l'iniettività di $f$.
  *Passo 2 (Monotonia globale):* Siano $x_1, x_2 \in I$ con $x_1 < x_2$. Supponiamo senza perdita di generalità $f(x_1) < f(x_2)$.
  Siano ora due punti arbitrari $x, y \in I$ con $x < y$. Mostriamo che deve essere $f(x) < f(y)$.
  Ordinando i quattro punti $x_1, x_2, x, y$ sull'intervallo e applicando ripetutamente il Passo 1 alle terne ordinate, il segno della disuguaglianza $f(x_1) < f(x_2)$ si propaga necessariamente a tutte le coppie, provando che $f$ è strettamente crescente su tutto $I$.

$$\blacksquare$$

### Teorema 2.4: Continuità delle Funzioni Inverse
>[!important] Enunciato
>Sia $f: I \to \mathbb{R}$ una funzione continua e iniettiva definita in un intervallo $I \subset \mathbb{R}$. Allora la funzione inversa:
>$$f^{-1}: f(I) \to \mathbb{R}$$
>è continua su tutto il suo dominio $f(I)$.

**Dimostrazione:**
Per il Teorema 2.2, essendo $f$ continua e iniettiva su un intervallo, $f$ è strettamente monotona.
Ne consegue che anche la funzione inversa $f^{-1}: f(I) \to I$ è strettamente monotona (con lo stesso verso di monotonia).
Per il Teorema 1.3, l'immagine $f(I)$ è un intervallo di $\mathbb{R}$.
Inoltre, l'immagine della funzione inversa è $f^{-1}(f(I)) = I$, che è un intervallo di $\mathbb{R}$.
Applicando il Teorema di continuità per immagine intervallo (Teorema 1.4 della Lezione 20): ogni funzione monotona definita su un intervallo la cui immagine è un intervallo è necessariamente continua su tutto il dominio.
Dunque $f^{-1}$ è continua.

$$\blacksquare$$

### Teorema 3.1: Teorema di Bolzano-Weierstrass per Successioni
>[!important] Enunciato
>Da ogni successione reale limitata $(a_n)_{n \in \mathbb{N}}$ è possibile estrarre una sottosuccessione convergente.

**Dimostrazione:**
Dimostriamo anzitutto che da *qualsiasi* successione reale $(a_n)_{n \in \mathbb{N}}$ si può estrarre una sottosuccessione monotona.
A tal fine definiamo il concetto di **indice di picco**: un indice $n \in \mathbb{N}$ si dice di picco se:
$$\forall m \ge n \implies a_n \ge a_m$$
Sia $P = \{n \in \mathbb{N} \mid n \text{ è indice di picco}\}$. Si presentano due casi:
1. **$P$ è infinito:** Definiamo per induzione una successione strettamente crescente di indici $(n_k)_{k \in \mathbb{N}}$:
   - $n_0 = \min P$ (il primo picco);
   - $n_{k+1} = \min \{n \in P \mid n > n_k\}$ (il picco successivo).
   L'insieme $\{n \in P \mid n > n_k\}$ è non vuoto per ogni $k$ essendo $P$ infinito.
   Poiché $n_k$ è di picco e $n_{k+1} > n_k$, per definizione di picco risulta $a_{n_k} \ge a_{n_{k+1}}$.
   Dunque la successione estratta $(a_{n_k})_{k \in \mathbb{N}}$ è **monotona decrescente**.
2. **$P$ è finito:** In tal caso esiste un indice $\overline{n} \in \mathbb{N}$ oltre il quale non vi sono più picchi (se $P \neq \emptyset$, $\overline{n} = \max P + 1$; se $P = \emptyset$, $\overline{n} = 0$).
   Dato che nessun $n \ge \overline{n}$ è di picco, per ogni $n \ge \overline{n}$ esiste un indice $m > n$ tale che $a_m > a_n$.
   Costruiamo per ricorrenza gli indici:
   - $n_0 = \overline{n}$;
   - $n_{k+1} = \min \{m \in \mathbb{N} \mid m > n_k \land a_m > a_{n_k}\}$.
   Per costruzione $n_{k+1} > n_k$ e $a_{n_{k+1}} > a_{n_k}$. Dunque l'estratta $(a_{n_k})_{k \in \mathbb{N}}$ è **strettamente crescente**.

In entrambi i casi abbiamo estratto una sottosuccessione $(a_{n_k})$ monotona.
Poiché per ipotesi la successione originaria $(a_n)$ è limitata, anche l'estratta $(a_{n_k})$ è limitata.
Per il Teorema fondamentale sui limiti delle successioni monotone, ogni successione monotona e limitata converge a un limite finito $\ell \in \mathbb{R}$ (al sup se crescente, all'inf se decrescente).
Ciò conclude la dimostrazione.

$$\blacksquare$$


---

## Lezione 23: Insiemi Compatti, Teorema di Weierstrass e Successioni per Ricorrenza

### Teorema 1.2: Teorema di Heine-Borel in $\mathbb{R}$
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$. Sono equivalenti:
>- **(i)** $A$ è compatto per successioni;
>- **(ii)** $A$ è chiuso e limitato.

**Dimostrazione:**
1. **(i) $\implies$ (ii):** Supponiamo che $A$ sia compatto.
   - **$A$ è limitato:** Se per assurdo $A$ non fosse limitato, per ogni $n \in \mathbb{N}$ esisterebbe un punto $a_n \in A$ con $|a_n| > n$. La successione $(a_n)_{n \in \mathbb{N}}$ diverge in modulo a $+\infty$. Di conseguenza ogni sua sottosuccessione diverge anch'essa in modulo a $+\infty$. Ma per compattezza di $A$, da $(a_n)$ dovrebbe potersi estrarre una sottosuccessione convergente a un punto $x_0 \in A \subset \mathbb{R}$, assurdo. Dunque $A$ è limitato.
   - **$A$ è chiuso:** Ricordiamo che $x \in \overline{A} \iff \exists (a_n) \in A^{\mathbb{N}}$ con $a_n \to x$. Poiché $A$ è compatto, da $(a_n)$ possiamo estrarre una sottosuccessione $(a_{n_k})$ convergente a un certo $x_0 \in A$. Per l'unicità del limite deve essere $x = x_0 \in A$. Ne segue $\overline{A} \subset A$, da cui $\overline{A} = A$, provando che $A$ è chiuso.
2. **(ii) $\implies$ (i):** Supponiamo che $A$ sia chiuso e limitato.
   Sia $(a_n)_{n \in \mathbb{N}}$ una qualsiasi successione in $A$. Poiché $A$ è limitato, $(a_n)$ è una successione limitata in $\mathbb{R}$.
   Per il Teorema di Bolzano-Weierstrass (Teorema 3.1 della Lezione 22), da $(a_n)$ è possibile estrarre una sottosuccessione $(a_{n_k})_{k \in \mathbb{N}}$ convergente a un limite $x_0 \in \mathbb{R}$.
   Essendo $a_{n_k} \in A$ per ogni $k$, per la caratterizzazione sequenziale della chiusura (Proposizione 2.3 della Lezione 21) si ha $x_0 \in \overline{A}$.
   Ma per ipotesi $A$ è chiuso, dunque $\overline{A} = A$, da cui segue $x_0 \in A$.
   Questo prova che ogni successione in $A$ ammette un'estratta convergente in $A$, ovvero $A$ è compatto.

$$\blacksquare$$

### Teorema 2.1: Teorema di Weierstrass sui Massimi e Minimi Assoluti
>[!important] Enunciato
>Sia $A \subset \mathbb{R}$ un insieme compatto (chiuso e limitato) e sia $f: A \to \mathbb{R}$ una funzione continua.
>Allora $f$ ammette massimo e minimo assoluti su $A$:
>$$\exists x_{\min}, x_{\max} \in A \quad \text{tali che} \quad f(x_{\min}) = \min_{x \in A} f(x) \quad \text{e} \quad f(x_{\max}) = \max_{x \in A} f(x)$$

**Dimostrazione:**
Dimostriamo l'esistenza del massimo (per il minimo è del tutto analogo considerando $-f$).
Poniamo $M = \sup_{x \in A} f(x) \in ]-\infty, +\infty]$.
1. Per definizione di estremo superiore, possiamo costruire una successione reale $(b_n)_{n \in \mathbb{N}}$ tale che $b_n < M$ per ogni $n$ e $b_n \to M$ per $n \to +\infty$ (ad esempio ponendo $b_n = M - \frac{1}{n+1}$ se $M < +\infty$, oppure $b_n = n$ se $M = +\infty$).
2. Poiché $b_n < \sup_{x \in A} f(x)$, per le proprietà del sup esiste per ogni $n$ un elemento $a_n \in A$ tale che:
$$b_n < f(a_n) \le M$$
   Poiché $b_n \to M$, per il Teorema dei carabinieri risulta $\lim_{n \to +\infty} f(a_n) = M$. La successione $(a_n) \in A^{\mathbb{N}}$ è detta **successione massimizzante**.
3. Poiché per ipotesi $A$ è compatto, per la definizione di compattezza sequenziale esiste una sottosuccessione $(a_{n_k})_{k \in \mathbb{N}}$ convergente a un punto $x_0 \in A$:
$$\lim_{k \to +\infty} a_{n_k} = x_0 \in A$$
4. Essendo $f$ continua nel punto $x_0 \in A$, per la caratterizzazione della continuità mediante successioni (Teorema Ponte) si ha:
$$\lim_{k \to +\infty} f(a_{n_k}) = f(x_0)$$
   D'altra parte, poiché l'intera successione $f(a_n)$ converge a $M$, anche ogni sua sottosuccessione converge allo stesso limite: $\lim_{k \to +\infty} f(a_{n_k}) = M$.
   Per l'unicità del limite:
$$M = f(x_0)$$
   Dato che $x_0 \in A$, il valore $M$ è assunto dalla funzione su $A$ ed è finito ($f(x_0) \in \mathbb{R}$).
   Dunque $M = \max_{x \in A} f(x)$ e $x_0$ è un punto di massimo assoluto.

$$\blacksquare$$

### Proposizione 3.1: Convergenza delle Successioni Ricorsive ai Punti Fissi
>[!important] Enunciato
>Sia $f: A \to A$ una funzione continua e sia $(a_n)_{n \in \mathbb{N}}$ generata dalla relazione di ricorrenza:
>$$a_0 \in A, \qquad a_{n+1} = f(a_n) \quad \forall n \ge 0$$
>Se $(a_n)$ converge a un elemento $\overline{x} \in A$, allora $\overline{x}$ è un punto fisso di $f$:
>$$f(\overline{x}) = \overline{x}$$

**Dimostrazione:**
Poiché per ipotesi $\lim_{n \to +\infty} a_n = \overline{x}$ e $f$ è continua su $A$, per la continuità per successioni si ha:
$$\lim_{n \to +\infty} f(a_n) = f(\overline{x})$$
D'altra parte, la successione traslata $a_{n+1}$ converge allo stesso limite $\lim_{n \to +\infty} a_{n+1} = \overline{x}$.
Poiché per definizione di ricorrenza $a_{n+1} = f(a_n)$ per ogni $n \ge 0$, per l'unicità del limite deve essere:
$$\overline{x} = f(\overline{x})$$

$$\blacksquare$$

### Teorema: Convergenza e Proprietà del Metodo di Erone per la Radice Quadrata
>[!important] Enunciato
>Sia $b > 0$. Scelto $a_0 > 0$, la successione definita per ricorrenza da:
>$$a_{n+1} = \frac{1}{2}\left(a_n + \frac{b}{a_n}\right) = f(a_n)$$
>con $f: \mathbb{R}_+^* \to \mathbb{R}_+^*$, $f(x) = \frac{1}{2}(x + b/x)$, converge a $\sqrt{b}$.

**Dimostrazione:**
1. **Ricerca dei punti fissi:**
$$f(x) = x \iff \frac{1}{2}\left(x + \frac{b}{x}\right) = x \iff x + \frac{b}{x} = 2x \iff \frac{b}{x} = x \iff x^2 = b$$
   Poiché $x > 0$, l'unico punto fisso in $\mathbb{R}_+^*$ è $x = \sqrt{b}$.
2. **Stima per eccesso per ogni $x > 0$:**
$$f(x) - \sqrt{b} = \frac{x}{2} + \frac{b}{2x} - \sqrt{b} = \frac{x^2 + b - 2x\sqrt{b}}{2x} = \frac{(x - \sqrt{b})^2}{2x} \ge 0 \implies f(x) \ge \sqrt{b}$$
   Ne consegue che per ogni $n \ge 1$, $a_n = f(a_{n-1}) \ge \sqrt{b}$ (ogni termine dal primo in poi sovrastima $\sqrt{b}$).
3. **Monotonia decrescente per $n \ge 1$:**
$$a_{n+1} \le a_n \iff \frac{1}{2}\left(a_n + \frac{b}{a_n}\right) \le a_n \iff a_n + \frac{b}{a_n} \le 2a_n \iff \frac{b}{a_n} \le a_n \iff b \le a_n^2 \iff \sqrt{b} \le a_n$$
   che è vera per quanto provato al punto 2.
4. **Convergenza:** Essendo $(a_n)_{n \ge 1}$ monotona decrescente e inferiormente limitata da $\sqrt{b}$ (quindi $\sqrt{b} \le a_n \le a_1$), per il Teorema sui limiti delle successioni monotone ammette limite finito $\overline{x} = \lim_{n \to +\infty} a_n \in [\sqrt{b}, a_1]$.
   Poiché $f$ è continua su $\mathbb{R}_+^*$ e $a_{n+1} = f(a_n)$, per la Proposizione 3.1 il limite $\overline{x}$ deve essere un punto fisso di $f$.
   Essendo $\sqrt{b}$ l'unico punto fisso positivo, concludiamo che:
$$\lim_{n \to +\infty} a_n = \sqrt{b}$$

$$\blacksquare$$


---

## Lezione 24: Serie Numeriche I - Definizioni, Proprietà e Serie Geometrica

### Teorema 2.1: Somma e Carattere della Serie Geometrica
>[!important] Enunciato
>Sia $q \in \mathbb{R}$. Per la serie geometrica $\sum_{n=0}^{+\infty} q^n$, la successione delle somme parziali è data da:
>$$s_n = \sum_{k=0}^n q^k = \begin{cases} \frac{1 - q^{n+1}}{1 - q} & \text{se } q \neq 1 \\ n + 1 & \text{se } q = 1 \end{cases}$$
>Al variare di $q \in \mathbb{R}$, il carattere della serie è:
>$$\sum_{n=0}^{+\infty} q^n = \begin{cases} \frac{1}{1 - q} & \text{se } |q| < 1 \quad \text{(convergente)} \\ +\infty & \text{se } q \ge 1 \quad \text{(divergente a } +\infty) \\ \text{non esiste} & \text{se } q \le -1 \quad \text{(indeterminata)} \end{cases}$$

**Dimostrazione:**
Se $q = 1$, la ridotta $n$-esima è la somma di $n+1$ termini uguali a $1$:
$$s_n = \sum_{k=0}^n 1 = n + 1 \implies \lim_{n \to +\infty} s_n = +\infty$$
Se $q \neq 1$, moltiplicando per $(1 - q)$ la somma telescopica:
$$(1 - q) s_n = (1 - q)(1 + q + q^2 + \dots + q^n) = (1 + q + \dots + q^n) - (q + q^2 + \dots + q^{n+1}) = 1 - q^{n+1}$$
Dividendo per $(1 - q)$:
$$s_n = \frac{1 - q^{n+1}}{1 - q}$$
Calcolando il limite per $n \to +\infty$, poiché:
$$\lim_{n \to +\infty} q^{n+1} = \begin{cases} 0 & \text{se } |q| < 1 \\ +\infty & \text{se } q > 1 \\ \text{non esiste} & \text{se } q \le -1 \end{cases}$$
otteniamo immediatamente:
- Per $|q| < 1$: $\lim s_n = \frac{1 - 0}{1 - q} = \frac{1}{1 - q}$ (convergente);
- Per $q > 1$: $\lim s_n = \frac{1 - (+\infty)}{1 - q} = \frac{-\infty}{\text{negativo}} = +\infty$ (divergente);
- Per $q = -1$: $s_n$ oscilla tra $1$ (per $n$ pari) e $0$ (per $n$ dispari), dunque il limite non esiste;
- Per $q < -1$: $q^{n+1}$ oscilla con ampiezza divergente, dunque il limite non esiste.

$$\blacksquare$$

### Teorema: Somma della Serie Telescopica di Mengoli
>[!important] Enunciato
>La serie di Mengoli $\sum_{n=1}^{+\infty} \frac{1}{n(n+1)}$ è convergente e la sua somma vale $1$.

**Dimostrazione:**
Scomponiamo il termine generale in fratti semplici:
$$\frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}$$
Scrivendo la somma parziale $n$-esima:
$$s_n = \sum_{k=1}^n \left( \frac{1}{k} - \frac{1}{k+1} \right) = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right)$$
Tutti i termini intermedi si elidono reciprocamente a due a due, lasciando unicamente il primo e l'ultimo:
$$s_n = 1 - \frac{1}{n+1}$$
Passando al limite per $n \to +\infty$:
$$\sum_{n=1}^{+\infty} \frac{1}{n(n+1)} = \lim_{n \to +\infty} s_n = \lim_{n \to +\infty} \left(1 - \frac{1}{n+1}\right) = 1 - 0 = 1$$

$$\blacksquare$$

### Proposizione 3.1: Linearità della Somma di Serie Numeriche Convergenti
>[!important] Enunciato
>Siano $\sum a_n$ e $\sum b_n$ due serie convergenti con somme $A, B \in \mathbb{R}$. Allora $\sum (a_n + b_n)$ converge a $A + B$ e per ogni $\lambda \in \mathbb{R}$, $\sum \lambda a_n$ converge a $\lambda A$.

**Dimostrazione:**
Per ogni $n \in \mathbb{N}$, per la proprietà di linearità delle somme finite:
$$\sum_{k=0}^n (a_k + b_k) = \sum_{k=0}^n a_k + \sum_{k=0}^n b_k \qquad \text{e} \qquad \sum_{k=0}^n \lambda a_k = \lambda \sum_{k=0}^n a_k$$
Passando al limite per $n \to +\infty$, per l'algebra dei limiti finiti in $\mathbb{R}$:
$$\lim_{n \to +\infty} \sum_{k=0}^n (a_k + b_k) = \lim_{n \to +\infty} \sum_{k=0}^n a_k + \lim_{n \to +\infty} \sum_{k=0}^n b_k = A + B$$
$$\lim_{n \to +\infty} \sum_{k=0}^n \lambda a_k = \lambda \lim_{n \to +\infty} \sum_{k=0}^n a_k = \lambda A$$

$$\blacksquare$$

### Teorema 3.2: Condizione Necessaria di Convergenza di una Serie
>[!important] Enunciato
>Sia $\sum_{n=0}^{+\infty} a_n$ una serie numerica. Allora:
>$$\sum_{n=0}^{+\infty} a_n \text{ è convergente} \implies \lim_{n \to +\infty} a_n = 0$$

**Dimostrazione:**
Sia $s_n = \sum_{k=0}^n a_k$ la successione delle somme parziali.
Per ogni $n \ge 1$, notiamo che:
$$s_n - s_{n-1} = \sum_{k=0}^n a_k - \sum_{k=0}^{n-1} a_k = a_n$$
Poiché la serie converge per ipotesi, esiste finito il limite della successione delle somme parziali:
$$\lim_{n \to +\infty} s_n = s \in \mathbb{R}$$
Di conseguenza, anche la successione traslata soddisfa $\lim_{n \to +\infty} s_{n-1} = s$.
Applicando il teorema sul limite della differenza di successioni convergenti:
$$\lim_{n \to +\infty} a_n = \lim_{n \to +\infty} (s_n - s_{n-1}) = \lim_{n \to +\infty} s_n - \lim_{n \to +\infty} s_{n-1} = s - s = 0$$

$$\blacksquare$$


---

## Lezione 25: Serie Numeriche II - Serie Resto, Proprietà Associativa e Criteri di Confronto

### Proposizione 1.1: Invarianza del Carattere della Serie Resto
>[!important] Enunciato
>Sia $m \in \mathbb{N}$. La serie $\sum a_n$ e la sua serie resto $R_m = \sum_{n=m+1}^{+\infty} a_n$ hanno esattamente lo stesso carattere. Se sono regolari:
>$$\sum_{n=0}^{+\infty} a_n = \sum_{k=0}^m a_k + R_m$$
>Inoltre, se la serie converge, allora $\lim_{m \to +\infty} R_m = 0$.

**Dimostrazione:**
Sia $s_n = \sum_{k=0}^n a_k$ la somma parziale di $\sum a_n$ e sia $t_n = \sum_{k=1}^n a_{m+k}$ la somma parziale della serie resto $R_m$.
Per ogni $n \in \mathbb{N}$, sommando i primi $m$ termini:
$$s_{m+n} = \sum_{k=0}^m a_k + \sum_{k=1}^n a_{m+k} = s_m + t_n \implies t_n = s_{m+n} - s_m$$
Poiché $s_m$ è una costante finita indipendente da $n$, il limite di $t_n$ per $n \to +\infty$ esiste (finito o infinito) se e solo se esiste il limite di $s_{m+n}$ per $n \to +\infty$.
Essendo $(s_{m+n})$ un'estratta (coda) di $(s_n)$, essa converge (o diverge) se e solo se converge (o diverge) $(s_n)$.
Dunque le due serie hanno lo stesso carattere e $R_m = \lim t_n = \lim s_n - s_m = \sum_{n=0}^{+\infty} a_n - \sum_{k=0}^m a_k$.
Infine, se la serie converge con somma $s \in \mathbb{R}$, allora $\lim_{m \to +\infty} s_m = s$, da cui:
$$\lim_{m \to +\infty} R_m = \lim_{m \to +\infty} (s - s_m) = s - s = 0$$

$$\blacksquare$$

### Proposizione 1.2: Stabilità del Carattere rispetto a Variazioni di Finiti Termini
>[!important] Enunciato
>Il carattere di una serie non si altera se si modifica un numero finito di termini.

**Dimostrazione:**
Sia $\sum a_n$ la serie originaria e sia $\sum b_n$ la serie ottenuta modificando termini fino a un certo indice $m \in \mathbb{N}$.
Per ogni $n > m$, risulta $b_n = a_n$.
Dunque le due serie condividono esattamente la stessa serie resto di ordine $m$:
$$\sum_{n=m+1}^{+\infty} b_n = \sum_{n=m+1}^{+\infty} a_n$$
Per la Proposizione 1.1, $\sum b_n$ ha lo stesso carattere della sua serie resto di ordine $m$, la quale ha lo stesso carattere di $\sum a_n$.
Ne consegue che $\sum b_n$ ha esattamente lo stesso carattere di $\sum a_n$.

$$\blacksquare$$

### Teorema 1.3: Proprietà Associativa per Serie Regolari
>[!important] Enunciato
>Sia $\sum_{n=0}^{+\infty} a_n$ una serie regolare e sia $(n_k)_{k \in \mathbb{N}}$ una successione di indici strettamente crescente con $n_0 = 0$.
>Definendo $b_k = \sum_{i=n_k}^{n_{k+1}-1} a_i$, la serie $\sum_{k=0}^{+\infty} b_k$ è regolare e ha la stessa somma:
>$$\sum_{k=0}^{+\infty} b_k = \sum_{n=0}^{+\infty} a_n$$

**Dimostrazione:**
Siano $(s_n)_{n \in \mathbb{N}}$ le somme parziali di $\sum a_n$ e $(t_k)_{k \in \mathbb{N}}$ le somme parziali di $\sum b_k$.
Per ogni $k \in \mathbb{N}$:
$$t_k = \sum_{j=0}^k b_j = \sum_{j=0}^k \left( \sum_{i=n_j}^{n_{j+1}-1} a_i \right) = \sum_{i=0}^{n_{k+1}-1} a_i = s_{n_{k+1}-1}$$
Dunque la successione $(t_k)_{k \in \mathbb{N}}$ non è altro che una sottosuccessione estratta della successione delle somme parziali $(s_n)_{n \in \mathbb{N}}$, con indici $\sigma_k = n_{k+1}-1$.
Poiché la serie $\sum a_n$ è regolare per ipotesi, la successione $(s_n)$ ammette limite $\lim_{n \to +\infty} s_n = s \in \overline{\mathbb{R}}$.
Dal teorema sui limiti delle successioni estratte, ogni sottosuccessione di una successione convergente (o divergente) converge allo stesso limite:
$$\lim_{k \to +\infty} t_k = \lim_{k \to +\infty} s_{\sigma_k} = s$$
Dunque la serie $\sum b_k$ è regolare e ha somma identica a $\sum a_n$.

$$\blacksquare$$

### Teorema 2.2: Regolarità delle Serie a Termini Positivi
>[!important] Enunciato
>Ogni serie a termini positivi $\sum a_n$ ($a_n \ge 0$ per ogni $n$) è sempre regolare:
>$$\sum_{n=0}^{+\infty} a_n \in [0, +\infty]$$
>dunque è convergente oppure divergente a $+\infty$.

**Dimostrazione:**
Sia $s_n = \sum_{k=0}^n a_k$ la successione delle somme parziali. Essendo $a_n \ge 0$, per ogni $n \in \mathbb{N}$:
$$s_{n+1} = s_n + a_{n+1} \ge s_n$$
Dunque la successione $(s_n)_{n \in \mathbb{N}}$ è monotona crescente.
Per il Teorema sui limiti delle funzioni e successioni monotone, ogni successione monotona crescente ammette sempre limite in $\overline{\mathbb{R}}$, coincidente con il suo estremo superiore:
$$\lim_{n \to +\infty} s_n = \sup_{n \in \mathbb{N}} s_n \in [0, +\infty]$$
Ciò esclude categoricamente l'oscillazione o indeterminatezza, provando che la serie o converge a un valore finito o diverge a $+\infty$.

$$\blacksquare$$

### Teorema 2.3: Divergenza della Serie Armonica (Dimostrazione di Oresme)
>[!important] Enunciato
>La serie armonica $\sum_{n=1}^{+\infty} \frac{1}{n}$ è divergente positivamente a $+\infty$.

**Dimostrazione:**
Consideriamo la ridotta associata alle potenze di $2$, cioè per $n = 2^k$ con $k \in \mathbb{N}^*$:
$$s_{2^k} = 1 + \frac{1}{2} + \left( \frac{1}{3} + \frac{1}{4} \right) + \left( \frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8} \right) + \dots + \left( \frac{1}{2^{k-1}+1} + \dots + \frac{1}{2^k} \right)$$
Ciascun blocco tra parentesi contiene $2^{j-1}$ termini, ciascuno dei quali è maggiore o uguale all'ultimo termine del blocco $\frac{1}{2^j}$. Pertanto:
$$\sum_{i=2^{j-1}+1}^{2^j} \frac{1}{i} > 2^{j-1} \cdot \frac{1}{2^j} = \frac{1}{2}$$
Sostituendo tale minorazione per ciascuno dei $k-1$ blocchi successivi a $1 + 1/2$:
$$s_{2^k} > 1 + \frac{1}{2} + \underbrace{\frac{1}{2} + \dots + \frac{1}{2}}_{k-1 \text{ volte}} = 1 + \frac{k}{2}$$
Poiché $\lim_{k \to +\infty} (1 + k/2) = +\infty$, la sottosuccessione $(s_{2^k})$ diverge a $+\infty$.
Essendo la serie a termini positivi, per il Teorema 2.2 essa è regolare, per cui l'intera successione delle somme parziali ammette lo stesso limite della sottosuccessione:
$$\sum_{n=1}^{+\infty} \frac{1}{n} = \lim_{n \to +\infty} s_n = +\infty$$

$$\blacksquare$$

### Teorema 3.1: Criterio del Confronto per Serie a Termini Positivi
>[!important] Enunciato
>Siano $\sum a_n$ e $\sum b_n$ due serie a termini positivi tali che $a_n \le b_n$ definitivamente. Allora:
>- **(i)** $\sum b_n$ converge $\implies \sum a_n$ converge;
>- **(ii)** $\sum a_n$ diverge a $+\infty \implies \sum b_n$ diverge a $+\infty$.

**Dimostrazione:**
Supponiamo senza perdita di generalità (per la stabilità del carattere) che $a_n \le b_n$ per ogni $n \in \mathbb{N}$.
Siano $s_n = \sum_{k=0}^n a_k$ e $t_n = \sum_{k=0}^n b_k$.
Sommando termine a termine le disuguaglianze, per ogni $n \in \mathbb{N}$:
$$s_n \le t_n$$
Poiché entrambe le serie sono a termini positivi, per il Teorema 2.2 esistono i limiti:
$$s = \lim_{n \to +\infty} s_n = \sum_{n=0}^{+\infty} a_n \in [0, +\infty], \qquad t = \lim_{n \to +\infty} t_n = \sum_{n=0}^{+\infty} b_n \in [0, +\infty]$$
Per il Teorema di prolungamento delle disuguaglianze:
$$s \le t$$
- Se $\sum b_n$ converge, $t < +\infty$, da cui $s \le t < +\infty$, dunque $\sum a_n$ converge.
- Se $\sum a_n$ diverge, $s = +\infty$, da cui $t \ge s = +\infty$, dunque $\sum b_n$ diverge.

$$\blacksquare$$

### Teorema 3.2: Criterio del Confronto Asintotico
>[!important] Enunciato
>Siano $a_n, b_n > 0$ e supponiamo che $\lim_{n \to +\infty} \frac{a_n}{b_n} = \ell \in [0, +\infty]$.
>1. Se $\ell \in ]0, +\infty[$, le serie $\sum a_n$ e $\sum b_n$ hanno lo stesso carattere;
>2. Se $\ell = 0$ e $\sum b_n$ converge, allora $\sum a_n$ converge;
>3. Se $\ell = +\infty$ e $\sum b_n$ diverge, allora $\sum a_n$ diverge.

**Dimostrazione:**
1. Sia $\ell \in ]0, +\infty[$. Scegliamo $\varepsilon = \ell / 2 > 0$. Per la definizione di limite, esiste un indice $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$:
$$\ell - \varepsilon < \frac{a_n}{b_n} < \ell + \varepsilon \iff \frac{\ell}{2} b_n < a_n < \frac{3\ell}{2} b_n$$
   - Dalla prima disuguaglianza $a_n > \frac{\ell}{2} b_n$, per il criterio del confronto, se $\sum a_n$ converge allora $\sum b_n$ converge, e se $\sum b_n$ diverge allora $\sum a_n$ diverge.
   - Dalla seconda disuguaglianza $a_n < \frac{3\ell}{2} b_n$, se $\sum b_n$ converge allora $\sum a_n$ converge, e se $\sum a_n$ diverge allora $\sum b_n$ diverge.
   Dunque le due serie hanno esattamente lo stesso carattere.
2. Se $\ell = 0$, fissato $\varepsilon = 1$, definitivamente $\frac{a_n}{b_n} < 1 \implies a_n < b_n$. Se $\sum b_n$ converge, per confronto $\sum a_n$ converge.
3. Se $\ell = +\infty$, fissato $M = 1$, definitivamente $\frac{a_n}{b_n} > 1 \implies a_n > b_n$. Se $\sum b_n$ diverge, per confronto $\sum a_n$ diverge.

$$\blacksquare$$


---

## Lezione 26: Serie Numeriche III - Criteri della Radice, del Rapporto, Condensazione di Cauchy e Prodotto di Eulero

### Teorema 1.1: Criterio della Radice di Cauchy
>[!important] Enunciato
>Sia $\sum a_n$ una serie a termini positivi ($a_n \ge 0$) e supponiamo che $\lim_{n \to +\infty} \sqrt[n]{a_n} = \ell \in [0, +\infty]$.
>- (i) Se $\ell < 1$, la serie $\sum a_n$ converge;
>- (ii) Se $\ell > 1$, la serie $\sum a_n$ diverge a $+\infty$;
>- (iii) Se $\ell = 1$, il criterio è inconcludente.

**Dimostrazione:**
1. **Caso $\ell < 1$:** Scegliamo un numero reale $q$ tale che $\ell < q < 1$ e poniamo $\varepsilon = q - \ell > 0$.
   Per la definizione di limite, esiste un indice $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$:
$$\sqrt[n]{a_n} < \ell + \varepsilon = q \iff a_n < q^n$$
   Poiché $q < 1$, la serie geometrica $\sum q^n$ è convergente.
   Per il Criterio del confronto (Teorema 3.1 della Lezione 25), la serie $\sum a_n$ è convergente.
2. **Caso $\ell > 1$:** Scegliamo un numero reale $q$ con $1 < q < \ell$ e poniamo $\varepsilon = \ell - q > 0$.
   Esiste $\nu \in \mathbb{N}$ tale che per ogni $n > \nu$:
$$\sqrt[n]{a_n} > \ell - \varepsilon = q > 1 \iff a_n > q^n > 1$$
   Poiché per ogni $n > \nu$ risulta $a_n > 1$, il termine generale non può tendere a $0$ ($a_n \not\to 0$).
   Per la condizione necessaria di convergenza (Teorema 3.2 della Lezione 24), la serie non può convergere. Essendo a termini positivi, per il Teorema di regolarità deve necessariamente divergere a $+\infty$.
3. **Caso $\ell = 1$:** Per la serie armonica $\sum 1/n$, $\sqrt[n]{1/n} = 1/\sqrt[n]{n} \to 1$ ed essa diverge. Per la serie armonica quadratica $\sum 1/n^2$, $\sqrt[n]{1/n^2} = (1/\sqrt[n]{n})^2 \to 1$ ed essa converge. Dunque per $\ell = 1$ il criterio non può determinare il carattere.

$$\blacksquare$$

### Teorema 1.2: Criterio del Rapporto di d'Alembert
>[!important] Enunciato
>Sia $\sum a_n$ a termini strettamente positivi ($a_n > 0$) e supponiamo che $\lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]$.
>- (i) Se $\ell < 1$, la serie converge;
>- (ii) Se $\ell > 1$, la serie diverge a $+\infty$;
>- (iii) Se $\ell = 1$, il criterio è inconcludente.

**Dimostrazione:**
1. **Caso $\ell < 1$:** Scegliamo $q$ tale che $\ell < q < 1$. Per definizione di limite, esiste $\nu \in \mathbb{N}$ tale che per ogni $n \ge \nu$:
$$\frac{a_{n+1}}{a_n} < q \implies a_{n+1} < q a_n$$
   Applicando iterativamente la disuguaglianza per i termini successivi a $\nu$:
$$a_{\nu+1} < q a_\nu, \quad a_{\nu+2} < q a_{\nu+1} < q^2 a_\nu, \quad \dots, \quad a_{\nu+k} < q^k a_\nu$$
   Ponendo $n = \nu + k$:
$$a_n < \frac{a_\nu}{q^\nu} q^n = C q^n \qquad \text{con } C = \frac{a_\nu}{q^\nu} > 0$$
   Poiché $q < 1$, la serie geometrica $\sum C q^n$ converge. Per il criterio del confronto, la serie $\sum a_n$ converge.
2. **Caso $\ell > 1$:** Scegliamo $q$ tale che $1 < q < \ell$. Esiste $\nu \in \mathbb{N}$ tale che per ogni $n \ge \nu$:
$$\frac{a_{n+1}}{a_n} > 1 \implies a_{n+1} > a_n$$
   Dunque la successione $(a_n)_{n \ge \nu}$ è strettamente crescente a termini positivi, per cui $a_n \ge a_\nu > 0$.
   Ne consegue che $a_n \not\to 0$, violando la condizione necessaria. Essendo a termini positivi, la serie diverge a $+\infty$.
3. **Caso $\ell = 1$:** Per $\sum 1/n$, $\frac{1/(n+1)}{1/n} = \frac{n}{n+1} \to 1$ (diverge); per $\sum 1/n^2$, $\frac{n^2}{(n+1)^2} \to 1$ (converge). Inconcludente.

$$\blacksquare$$

### Teorema 2.1: Criterio di Condensazione di Cauchy
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ decrescente e positiva ($a_n \ge a_{n+1} \ge 0$). Allora le serie $\sum_{n=1}^{+\infty} a_n$ e $\sum_{n=0}^{+\infty} 2^n a_{2^n}$ hanno lo stesso carattere e vale:
>$$\frac{1}{2} \sum_{n=0}^{+\infty} 2^n a_{2^n} \le \sum_{n=1}^{+\infty} a_n \le \sum_{n=0}^{+\infty} 2^n a_{2^n}$$

**Dimostrazione:**
Raggruppiamo i termini della serie $\sum_{n=1}^{+\infty} a_n$ in blocchi diadici tra le potenze consecutive di $2$:
- Blocco 0: $a_1 \le a_1 = 2^0 a_{2^0}$
- Blocco 1: $a_2 + a_3 \le a_2 + a_2 = 2 a_2 = 2^1 a_{2^1}$
- Blocco 2: $a_4 + a_5 + a_6 + a_7 \le 4 a_4 = 2^2 a_{2^2}$
In generale, per ogni $k \in \mathbb{N}$:
$$\sum_{i=2^k}^{2^{k+1}-1} a_i \le 2^k a_{2^k}$$
Sommando per $k$ da $0$ a $n$, otteniamo la maggiorazione:
$$\sum_{i=1}^{2^{n+1}-1} a_i \le \sum_{k=0}^n 2^k a_{2^k}$$
D'altra parte, minorando ciascun blocco con il termine successivo:
- Blocco 1: $a_2 + a_3 \ge 2 a_4 = 2 \cdot a_{2^2}$
- Blocco 2: $a_4 + a_5 + a_6 + a_7 \ge 4 a_8 = 4 a_{2^3}$
In generale:
$$\sum_{i=2^{k-1}+1}^{2^k} a_i \ge 2^{k-1} a_{2^k} = \frac{1}{2} \cdot 2^k a_{2^k}$$
Sommando per $k$ da $1$ a $n+1$:
$$\sum_{i=2}^{2^{n+1}} a_i \ge \frac{1}{2} \sum_{k=1}^{n+1} 2^k a_{2^k}$$
Aggiungendo $a_1$, per il Teorema del confronto le due serie convergono o divergono simultaneamente, e passando al limite per $n \to +\infty$ discendono le stime bilaterali enunciate.

$$\blacksquare$$

### Teorema 3.1: Proprietà dei Prodotti Infiniti
>[!important] Enunciato
>Sia $(a_k)_{k \ge 1}$ con $a_k > 0$.
>1. Se il prodotto $\prod_{k=1}^{+\infty} a_k$ converge a un valore finito $\ne 0$, allora $\lim_{k \to +\infty} a_k = 1$.
>2. Se $a_k > 1$ per ogni $k$, allora $\prod_{k=1}^{+\infty} a_k$ e $\sum_{k=1}^{+\infty} (a_k - 1)$ hanno esattamente lo stesso carattere.

**Dimostrazione:**
1. Posto $p_n = \prod_{k=1}^n a_k$, se $\lim_{n \to +\infty} p_n = P \in ]0, +\infty[$, allora per ogni $n \ge 2$:
$$a_n = \frac{p_n}{p_{n-1}} \implies \lim_{n \to +\infty} a_n = \frac{\lim p_n}{\lim p_{n-1}} = \frac{P}{P} = 1$$
2. Passando ai logaritmi: $\ln p_n = \sum_{k=1}^n \ln a_k$.
   Poiché $a_k > 1$, poniamo $x_k = a_k - 1 > 0$. Dalle disuguaglianze notevoli del logaritmo:
$$\frac{x_k}{1 + x_k} < \ln(1 + x_k) < x_k \iff \frac{a_k - 1}{a_k} < \ln a_k < a_k - 1$$
   Per il Criterio del confronto asintotico, la serie $\sum \ln a_k$ ha lo stesso carattere della serie $\sum (a_k - 1)$.
   Poiché la funzione esponenziale $t \mapsto e^t$ è continua e strettamente crescente, $\lim p_n = e^{\lim \sum \ln a_k}$ esiste finito e non nullo se e solo se la serie converge, e diverge a $+\infty$ se e solo se la serie diverge.

$$\blacksquare$$

### Teorema 3.2: Formula del Prodotto di Eulero per la Funzione Zeta
>[!important] Enunciato
>Per ogni $x > 1$:
>$$\zeta(x) = \sum_{n=1}^{+\infty} \frac{1}{n^x} = \prod_{k=1}^{+\infty} \frac{1}{1 - p_k^{-x}}$$
>dove $(p_k)_{k \ge 1}$ è la successione di tutti i numeri primi.

**Dimostrazione:**
Sia $\zeta(x) = \sum_{n=1}^{+\infty} \frac{1}{n^x}$.
Moltiplichiamo per $\frac{1}{p_1^x} = \frac{1}{2^x}$:
$$\frac{1}{p_1^x} \zeta(x) = \sum_{n=1}^{+\infty} \frac{1}{(p_1 n)^x} = \sum_{n \in M(p_1)} \frac{1}{n^x}$$
Sottraendo dalla serie iniziale:
$$\left(1 - \frac{1}{p_1^x}\right) \zeta(x) = \sum_{n \notin M(p_1)} \frac{1}{n^x} = 1 + \frac{1}{3^x} + \frac{1}{5^x} + \frac{1}{7^x} + \dots$$
Eliminiamo analogamente i multipli del secondo numero primo $p_2 = 3$:
$$\left(1 - \frac{1}{p_2^x}\right) \left(1 - \frac{1}{p_1^x}\right) \zeta(x) = \sum_{n \notin M(p_1) \cup M(p_2)} \frac{1}{n^x} = 1 + \frac{1}{5^x} + \frac{1}{7^x} + \frac{1}{11^x} + \dots$$
Iterando il procedimento per i primi $k$ numeri primi:
$$\left[ \prod_{i=1}^k \left(1 - \frac{1}{p_i^x}\right) \right] \zeta(x) = 1 + \sum_{n \in S_k} \frac{1}{n^x}$$
dove $S_k$ è l'insieme dei numeri naturali $> 1$ che non hanno alcun fattore primo tra $p_1, \dots, p_k$.
Per il Teorema fondamentale dell'aritmetica, il più piccolo elemento di $S_k$ è $p_{k+1}$. Ne consegue:
$$\sum_{n \in S_k} \frac{1}{n^x} \le \sum_{n=p_{k+1}}^{+\infty} \frac{1}{n^x} = R_{p_{k+1}-1}$$
Poiché per $x > 1$ la serie $\sum 1/n^x$ converge, per la Proposizione 1.1 della Lezione 25 la coda tende a zero per $k \to +\infty$:
$$\lim_{k \to +\infty} R_{p_{k+1}-1} = 0$$
Dunque:
$$\lim_{k \to +\infty} \left[ \prod_{i=1}^k \left(1 - \frac{1}{p_i^x}\right) \right] \zeta(x) = 1 \implies \zeta(x) = \lim_{k \to +\infty} \prod_{i=1}^k \frac{1}{1 - p_i^{-x}} = \prod_{i=1}^{+\infty} \frac{1}{1 - p_i^{-x}}$$

$$\blacksquare$$

### Corollario 3.3: Divergenza della Serie dei Reciproci dei Primi
>[!important] Enunciato
>La serie dei reciproci dei numeri primi è divergente:
>$$\sum_{k=1}^{+\infty} \frac{1}{p_k} = +\infty$$

**Dimostrazione:**
Dalla formula del prodotto di Eulero per $x \to 1^+$:
$$\lim_{x \to 1^+} \zeta(x) = \sum_{n=1}^{+\infty} \frac{1}{n} = +\infty$$
Ne segue che il prodotto infinito diverge a $+\infty$:
$$\prod_{k=1}^{+\infty} \frac{1}{1 - p_k^{-1}} = +\infty$$
Posto $a_k = \frac{1}{1 - p_k^{-1}} > 1$, per il Teorema 3.1 il prodotto infinito ha lo stesso carattere della serie $\sum (a_k - 1)$:
$$a_k - 1 = \frac{1}{1 - \frac{1}{p_k}} - 1 = \frac{\frac{1}{p_k}}{1 - \frac{1}{p_k}} = \frac{1}{p_k - 1}$$
Dunque la serie $\sum_{k=1}^{+\infty} \frac{1}{p_k - 1}$ è divergente.
Poiché $\lim_{k \to +\infty} \frac{1/(p_k - 1)}{1/p_k} = \lim_{k \to +\infty} \frac{p_k}{p_k - 1} = 1$, per il criterio del confronto asintotico:
$$\sum_{k=1}^{+\infty} \frac{1}{p_k} = +\infty$$

$$\blacksquare$$


---

## Lezione 27: Serie Numeriche IV - Criterio di Leibniz, Convergenza Assoluta e Serie Esponenziale

### Teorema 1.2: Criterio di Leibniz per Serie a Segno Alterno
>[!important] Enunciato
>Sia $(a_n)_{n \in \mathbb{N}}$ una successione a termini positivi soddisfacente:
>- (a) $\lim_{n \to +\infty} a_n = 0$;
>- (b) $a_{n+1} \le a_n$ per ogni $n \in \mathbb{N}$ (monotona decrescente).
>Allora la serie $\sum_{n=0}^{+\infty} (-1)^n a_n$ converge a una somma $s \in \mathbb{R}$.
>Inoltre le somme parziali pari e dispari soddisfano $s_{2n+1} \le s \le s_{2n}$ e vale la stima del resto:
>$$|s - s_n| \le a_{n+1}$$

**Dimostrazione:**
Sia $s_n = \sum_{k=0}^n (-1)^k a_k$.
1. **Analisi della sottosuccessione pari $(s_{2n})$:**
$$s_{2n+2} = s_{2n} - a_{2n+1} + a_{2n+2} = s_{2n} - (a_{2n+1} - a_{2n+2})$$
   Poiché $(a_n)$ è decrescente, $a_{2n+1} - a_{2n+2} \ge 0$, dunque $s_{2n+2} \le s_{2n}$.
   La successione delle somme parziali pari $(s_{2n})$ è monotona decrescente.
2. **Analisi della sottosuccessione dispari $(s_{2n+1})$:**
$$s_{2n+3} = s_{2n+1} + a_{2n+2} - a_{2n+3} = s_{2n+1} + (a_{2n+2} - a_{2n+3})$$
   Essendo $a_{2n+2} - a_{2n+3} \ge 0$, risulta $s_{2n+3} \ge s_{2n+1}$.
   La successione delle somme parziali dispari $(s_{2n+1})$ è monotona crescente.
3. **Confronto e limitatezza:**
$$s_{2n} - s_{2n+1} = a_{2n+1} \ge 0 \implies s_{2n+1} \le s_{2n}$$
   Inoltre per ogni $n, m \in \mathbb{N}$, si prova facilmente che $s_{2n+1} \le s_{2m}$.
   Dunque $(s_{2n})$ è decrescente e inferiormente limitata (da $s_1$), mentre $(s_{2n+1})$ è crescente e superiormente limitata (da $s_0$).
   Per il Teorema sui limiti delle funzioni monotone, entrambe convergono:
$$s_{2n} \to s_{\text{pari}} \in \mathbb{R}, \qquad s_{2n+1} \to s_{\text{dispari}} \in \mathbb{R}$$
4. **Coincidenza dei limiti:**
$$s_{\text{pari}} - s_{\text{dispari}} = \lim_{n \to +\infty} (s_{2n} - s_{2n+1}) = \lim_{n \to +\infty} a_{2n+1} = 0 \implies s_{\text{pari}} = s_{\text{dispari}} = s$$
   Poiché sia la sottosuccessione dei termini pari sia quella dei termini dispari convergono allo stesso valore $s$, l'intera successione delle somme parziali converge: $\lim_{n \to +\infty} s_n = s$.
5. **Stima del resto:** Poiché $s_{2k+1} \le s \le s_{2k}$, si ha:
$$0 \le s_{2k} - s \le s_{2k} - s_{2k+1} = a_{2k+1}$$
$$0 \le s - s_{2k-1} \le s_{2k} - s_{2k-1} = a_{2k}$$
   In generale, per ogni $n \in \mathbb{N}$:
$$|s - s_n| \le a_{n+1}$$

$$\blacksquare$$

### Teorema 2.2: La Convergenza Assoluta Implica la Semplice
>[!important] Enunciato
>Se $\sum_{n=0}^{+\infty} |a_n| < +\infty$, allora la serie $\sum_{n=0}^{+\infty} a_n$ è convergente in $\mathbb{R}$ e vale:
>$$\left| \sum_{n=0}^{+\infty} a_n \right| \le \sum_{n=0}^{+\infty} |a_n|$$

**Dimostrazione:**
Definiamo la parte positiva e la parte negativa del termine $n$-esimo:
$$a_n^+ = \max(a_n, 0) \ge 0, \qquad a_n^- = \max(-a_n, 0) \ge 0$$
Valgono le relazioni:
$$a_n = a_n^+ - a_n^-, \qquad |a_n| = a_n^+ + a_n^-$$
Poiché $a_n^+ \le |a_n|$ e $a_n^- \le |a_n|$ per ogni $n$, per il Criterio del confronto (Teorema 3.1 della Lezione 25), essendo $\sum |a_n|$ convergente, entrambe le serie a termini positivi $\sum a_n^+$ e $\sum a_n^-$ sono convergenti in $\mathbb{R}$.
Posto $s^+ = \sum_{n=0}^{+\infty} a_n^+ < +\infty$ e $s^- = \sum_{n=0}^{+\infty} a_n^- < +\infty$, per la linearità della somma di serie convergenti (Proposizione 3.1 della Lezione 24):
$$\sum_{n=0}^{+\infty} a_n = \sum_{n=0}^{+\infty} (a_n^+ - a_n^-) = \sum_{n=0}^{+\infty} a_n^+ - \sum_{n=0}^{+\infty} a_n^- = s^+ - s^- \in \mathbb{R}$$
Infine, applicando la disuguaglianza triangolare alle somme parziali finite:
$$\left| \sum_{k=0}^n a_k \right| \le \sum_{k=0}^n |a_k|$$
Passando al limite per $n \to +\infty$ per il teorema di prolungamento delle disuguaglianze:
$$\left| \sum_{n=0}^{+\infty} a_n \right| \le \sum_{n=0}^{+\infty} |a_n|$$

$$\blacksquare$$

### Teorema 3.1: Stima dell'Errore di Troncamento per il Numero di Nepero
>[!important] Enunciato
>Per ogni $n \in \mathbb{N}^*$:
>$$0 < e - \sum_{k=0}^n \frac{1}{k!} < \frac{1}{n \cdot n!}$$

**Dimostrazione:**
Ricordiamo che $e = \sum_{k=0}^{+\infty} \frac{1}{k!}$.
Scrivendo la serie resto di ordine $n$:
$$R_n = e - \sum_{k=0}^n \frac{1}{k!} = \sum_{k=n+1}^{+\infty} \frac{1}{k!} = \sum_{j=1}^{+\infty} \frac{1}{(n+j)!} > 0$$
Valutiamo il fattoriale per $j \ge 1$:
$$(n+j)! = (n+j)(n+j-1)\dots(n+1) \cdot n! \ge (n+1)^j \cdot n!$$
con disuguaglianza stretta per ogni $j \ge 2$. Sostituendo nella somma resto:
$$R_n < \frac{1}{n!} \sum_{j=1}^{+\infty} \frac{1}{(n+1)^j} = \frac{1}{n!} \cdot \frac{\frac{1}{n+1}}{1 - \frac{1}{n+1}} = \frac{1}{n!} \cdot \frac{\frac{1}{n+1}}{\frac{n}{n+1}} = \frac{1}{n \cdot n!}$$
Dunque $0 < e - s_n < \frac{1}{n \cdot n!}$.

$$\blacksquare$$

### Corollario 3.2: Irrazionalità del Numero $e$
>[!important] Enunciato
>Il numero di Nepero $e$ è un numero irrazionale ($e \in \mathbb{R} \setminus \mathbb{Q}$).

**Dimostrazione:**
Supponiamo per assurdo che $e \in \mathbb{Q}$, ovvero che esistano due interi positivi $p, q \in \mathbb{N}^*$ tali che $e = \frac{p}{q}$.
Prendiamo $n = q$ nella disuguaglianza del Teorema 3.1:
$$0 < e - \sum_{k=0}^q \frac{1}{k!} < \frac{1}{q \cdot q!}$$
Sostituendo $e = p/q$:
$$0 < \frac{p}{q} - \sum_{k=0}^q \frac{1}{k!} < \frac{1}{q \cdot q!}$$
Moltiplichiamo tutti i membri per $q!$:
$$0 < q! \frac{p}{q} - \sum_{k=0}^q \frac{q!}{k!} < \frac{q!}{q \cdot q!} = \frac{1}{q}$$
Osserviamo che:
- $q! \frac{p}{q} = p (q-1)!$ è un numero intero positivo.
- Per ogni $k \le q$, $\frac{q!}{k!} = q(q-1)\dots(k+1)$ è un numero intero positivo, quindi $\sum_{k=0}^q \frac{q!}{k!}$ è un intero.
Di conseguenza la quantità centrale:
$$N = p(q-1)! - \sum_{k=0}^q \frac{q!}{k!}$$
è un **numero intero**.
Ma la disuguaglianza stabilisce che:
$$0 < N < \frac{1}{q} \le 1$$
Non esistono numeri interi strettamente compresi tra $0$ e $1$. L'assurdo prova che $e$ non può essere razionale.

$$\blacksquare$$

### Teorema 3.4: Teorema di Mertens sul Prodotto di Cauchy per Serie Assolutamente Convergenti
>[!important] Enunciato
>Siano $\sum a_n$ e $\sum b_n$ due serie assolutamente convergenti con somme $A$ e $B$. Allora la serie prodotto alla Cauchy $\sum c_n$ con $c_n = \sum_{k=0}^n a_k b_{n-k}$ è assolutamente convergente e:
>$$\sum_{n=0}^{+\infty} c_n = \left(\sum_{n=0}^{+\infty} a_n\right) \left(\sum_{n=0}^{+\infty} b_n\right) = A \cdot B$$

**Dimostrazione:**
1. **Convergenza assoluta:** Applicando la disuguaglianza triangolare e la formula di Cauchy per serie positive (Teorema 5.4):
$$\sum_{n=0}^{+\infty} |c_n| = \sum_{n=0}^{+\infty} \left| \sum_{k=0}^n a_k b_{n-k} \right| \le \sum_{n=0}^{+\infty} \sum_{k=0}^n |a_k| |b_{n-k}| = \left(\sum_{n=0}^{+\infty} |a_n|\right) \left(\sum_{n=0}^{+\infty} |b_n|\right) < +\infty$$
   Dunque la serie $\sum c_n$ è assolutamente convergente.
2. **Identità delle somme:** Decomponendo i termini nelle parti positiva e negativa:
$$a_n = a_n^+ - a_n^-, \qquad b_n = b_n^+ - b_n^-$$
   Ponendo $s^+ = \sum a_n^+$, $s^- = \sum a_n^-$, $t^+ = \sum b_n^+$, $t^- = \sum b_n^-$, si ha $A = s^+ - s^-$ e $B = t^+ - t^-$.
   Espandendo il termine convolutivo:
$$c_n = \sum_{k=0}^n (a_k^+ - a_k^-)(b_{n-k}^+ - b_{n-k}^-) = \sum_{k=0}^n a_k^+ b_{n-k}^+ - \sum_{k=0}^n a_k^+ b_{n-k}^- - \sum_{k=0}^n a_k^- b_{n-k}^+ + \sum_{k=0}^n a_k^- b_{n-k}^-$$
   Sommando per $n \to +\infty$ e applicando il teorema di Cauchy per le quattro serie a termini positivi:
$$\sum_{n=0}^{+\infty} c_n = s^+ t^+ - s^+ t^- - s^- t^+ + s^- t^- = (s^+ - s^-)(t^+ - t^-) = A \cdot B$$

$$\blacksquare$$

### Proposizione 3.5: Proprietà Omomorfica della Funzione Esponenziale
>[!important] Enunciato
>Sia $\exp: \mathbb{R} \to \mathbb{R}$ definita da $\exp(x) = \sum_{n=0}^{+\infty} \frac{x^n}{n!}$. Allora per ogni $x, y \in \mathbb{R}$:
>$$\exp(x + y) = \exp(x) \exp(y)$$

**Dimostrazione:**
Fissati $x, y \in \mathbb{R}$, consideriamo le due serie $\sum_{n=0}^{+\infty} \frac{x^n}{n!}$ e $\sum_{n=0}^{+\infty} \frac{y^n}{n!}$.
Entrambe le serie sono assolutamente convergenti per il criterio del rapporto:
$$\lim_{n \to +\infty} \frac{|x|^{n+1}}{(n+1)!} \frac{n!}{|x|^n} = \lim_{n \to +\infty} \frac{|x|}{n+1} = 0 < 1$$
Possiamo dunque applicare il Teorema di Mertens (Teorema 3.4) sul prodotto alla Cauchy:
$$\exp(x) \exp(y) = \left( \sum_{n=0}^{+\infty} \frac{x^n}{n!} \right) \left( \sum_{n=0}^{+\infty} \frac{y^n}{n!} \right) = \sum_{n=0}^{+\infty} c_n$$
dove il termine convolutivo $n$-esimo è dato da:
$$c_n = \sum_{k=0}^n \frac{x^k}{k!} \frac{y^{n-k}}{(n-k)!} = \frac{1}{n!} \sum_{k=0}^n \frac{n!}{k!(n-k)!} x^k y^{n-k} = \frac{1}{n!} \sum_{k=0}^n \binom{n}{k} x^k y^{n-k}$$
Per la Formula del binomio di Newton:
$$\sum_{k=0}^n \binom{n}{k} x^k y^{n-k} = (x + y)^n$$
Sostituendo nell'espressione di $c_n$:
$$c_n = \frac{(x + y)^n}{n!}$$
Ne consegue:
$$\exp(x) \exp(y) = \sum_{n=0}^{+\infty} \frac{(x + y)^n}{n!} = \exp(x + y)$$

$$\blacksquare$$
