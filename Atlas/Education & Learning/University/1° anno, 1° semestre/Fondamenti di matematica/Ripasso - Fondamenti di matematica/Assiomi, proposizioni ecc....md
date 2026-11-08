---
status: permanent
type: summary
area: education
related: ["[[Lezione 1 - Logica delle Proposizioni e dei Predicati]]", "[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[Lezione 3 - Relazioni e Funzioni I]]", "[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]", "[[Lezione 5 - i Numeri Reali e Assioma di Completezza]]", "[[Lezione 6 - Valore Assoluto e Numeri Naturali]]", "[[Lezione 7 - Insiemi Numerici N Z e Q]]", "[[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]", "[[Lezione 9 - Funzioni Reali ed Estremi]]", "[[Lezione 10 - Funzioni Reali II e Funzioni Elementari I]]", "[[Lezione 11 - Funzioni Reali Elementari II]]", "[[Lezione 12 - Limiti I Retta Reale Ampliata e Definizione]]", "[[Lezione 13 - Limiti II Restrizioni Limiti Laterali e Successioni]]", "[[Lezione 14 - Limiti di Successioni e Proprieta Locali]]", "[[Lezione 15 - Proprieta dei Limiti]]", "[[Lezione 17 - Limiti delle Funzioni Composte e Confronto Locale]]", "[[Lezione 18 - Gerarchie di Infiniti e Infinitesimi e Continuita I]]", "[[Lezione 19 - Funzioni Continue e Punti di Discontinuita]]", "[[Lezione 20 - Continuita delle Funzioni Monotone e Limiti Notevoli]]", "[[Lezione 21 - Teoremi di Bolzano e Proprieta Topologiche per Successioni]]", "[[Lezione 22 - Valori Intermedi Punti Fissi e Teorema di Bolzano-Weierstrass]]", "[[Lezione 23 - Insiemi Compatti Teorema di Weierstrass e Successioni per Ricorrenza]]", "[[Lezione 24 - Serie Numeriche I Definizioni Proprieta e Serie Geometrica]]", "[[Lezione 25 - Serie Numeriche II Serie Resto e Criteri di Confronto]]", "[[Lezione 26 - Serie Numeriche III Criteri della Radice e del Rapporto e Condensazione di Cauchy]]", "[[Lezione 27 - Serie Numeriche IV Criterio di Leibniz Convergenza Assoluta e Serie Esponenziale]]", "[[Dimostrazioni]]", "[[University]]"]
aliases: ["Assiomi, proposizioni ecc...", "Assiomi, Proposizioni ecc...", "Assiomi Proposizioni Definizioni", "Assiomi, proposizioni ecc...."]
source: ["Lezione 1.pdf", "Lezione 2.pdf", "Lezione 3.pdf", "Lezione 4.pdf", "Lezione 5.pdf", "Lezione 6.pdf", "Lezione 7.pdf", "Lezione 8.pdf", "Lezione 9.pdf", "Lezione 10.pdf", "Lezione 11.pdf", "Lezione 12.pdf", "Lezione 13.pdf", "Lezione 14.pdf", "Lezione 15.pdf", "Lezione 17.pdf", "Lezione 18.pdf", "Lezione 19.pdf", "Lezione 20.pdf", "Lezione 21.pdf", "Lezione 22.pdf", "Lezione 23.pdf", "Lezione 24.pdf", "Lezione 25.pdf", "Lezione 26.pdf", "Lezione 27.pdf"]
title: "Assiomi, Proposizioni, Definizioni e Teoremi"
date: '2026-10-15'
updated: '2026-11-08T01:15'
tags: [education/university, education/matematica, education/teoria]
summary: "Repertorio sistematico di tutti gli assiomi, definizioni, proposizioni, teoremi, lemmi e corollari trattati nel corso di Fondamenti di Matematica dalla Lezione 1 alla Lezione 27."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Assiomi, proposizioni ecc...]]

# Assiomi, Proposizioni, Definizioni e Teoremi

Quadro teorico integrale dei concetti primitivi, degli assiomi fondativi, delle definizioni formali, dei teoremi, delle proposizioni, dei lemmi e dei corollari svolti nelle Lezioni da 1 a 27 del corso di Fondamenti di Matematica.

---

## Lezione 1: Logica delle Proposizioni e dei Predicati

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione:</b></font></mark> Affermazione del linguaggio naturale o matematico per la quale è possibile stabilire univocamente e oggettivamente un valore di verità: vero ($V$) oppure falso ($F$).
- **Tautologia:** Proposizione composta che risulta vera per qualsiasi combinazione dei valori di verità delle sue componenti atomiche.
- **Contraddizione:** Proposizione composta che risulta falsa per qualsiasi combinazione dei valori di verità delle sue componenti atomiche.
- **Predicato (o enunciato aperto):** Espressione $P(x_1, \dots, x_n)$ contenente una o più variabili, la quale diventa una proposizione con valore di verità determinato non appena viene assegnato un valore specifico alle variabili o quando queste vengono vincolate da quantificatori.
- **Variabile Libera e Legata:** Una variabile in un predicato è *libera* se può essere sostituita da un elemento del dominio; è *legata* (o vincolata) se è sottoposta a un quantificatore ($\forall$ o $\exists$).

### Connettivi Logici Fondamentali
| Connettivo | Simbolo | Semantica Formale |
| :--- | :---: | :--- |
| **Negazione** | $\neg P$ | Vera se e solo se $P$ è falsa. |
| **Congiunzione** | $P \land Q$ | Vera se e solo se sia $P$ sia $Q$ sono vere contemporaneamente. |
| **Disgiunzione** | $P \lor Q$ | Vera se almeno una tra $P$ e $Q$ è vera (disgiunzione inclusiva). |
| **Implicazione Materiale** | $P \implies Q$ | Falsa se e solo se la premessa $P$ è vera e la conseguenza $Q$ è falsa; semanticamente equivalente a $\neg P \lor Q$. |
| **Coimplicazione (Equivalenza)** | $P \iff Q$ | Vera se e solo se $P$ e $Q$ hanno lo stesso valore di verità; equivalente a $(P \implies Q) \land (Q \implies P)$. |

### Proposizioni e Leggi Logiche
- **Legge della Doppia Negazione:** $\neg(\neg P) \iff P$
- **Leggi di De Morgan Proposizionali:**
$$\neg(P \land Q) \iff \neg P \lor \neg Q$$
$$\neg(P \lor Q) \iff \neg P \land \neg Q$$

- **Legge di Contrapposizione (Contronominale):**
$$(P \implies Q) \iff (\neg Q \implies \neg P)$$

- **Regole di Negazione dei Quantificatori:**
$$\neg(\forall x, P(x)) \iff \exists x : \neg P(x)$$
$$\neg(\exists x : P(x)) \iff \forall x, \neg P(x)$$

- **Scambio dei Quantificatori:** L'ordine dei quantificatori eterogenei non è commutativo:
$$\exists y, \forall x, P(x, y) \implies \forall x, \exists y, P(x, y) \quad (\text{l'implicazione inversa non vale in generale})$$

---

## Lezione 2: Teoria Assiomatica degli Insiemi

### Assiomi di Zermelo-Fraenkel (ZF)
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF1 - Assioma di Estensionalità:</b></font></mark> Due insiemi sono identici se e solo se possiedono esattamente gli stessi elementi:
$$\forall A, \forall B, (A = B \iff \forall x (x \in A \iff x \in B))$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF2 - Assioma dell'Insieme Vuoto:</b></font></mark> Esiste un insieme che non contiene alcun elemento:
$$\exists E : \forall x, x \notin E \quad (\text{denotato con } \emptyset)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF3 - Assioma della Coppia Non Ordinata:</b></font></mark> Dati due insiemi $a$ e $b$, esiste un insieme $\{a, b\}$ che contiene esclusivamente $a$ e $b$:
$$\forall a, \forall b, \exists C : \forall x, (x \in C \iff x = a \lor x = b)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF4 - Schema Assiomatico di Specificazione (o Separazione):</b></font></mark> Dato un insieme $A$ e un predicato $P(x)$, esiste un sottoinsieme di $A$ contenente tutti e soli gli elementi $x \in A$ per cui $P(x)$ è vero:
$$\exists B : \forall x, (x \in B \iff x \in A \land P(x)) \quad \implies B = \{x \in A : P(x)\}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF5 - Assioma dell'Unione:</b></font></mark> Data una famiglia di insiemi $\mathcal{F}$, esiste un insieme $\bigcup \mathcal{F}$ formato dagli elementi che appartengono ad almeno un membro di $\mathcal{F}$:
$$\forall \mathcal{F}, \exists U : \forall x, (x \in U \iff \exists A \in \mathcal{F} : x \in A)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF6 - Assioma dell'Insieme Potenza (delle Parti):</b></font></mark> Per ogni insieme $A$, esiste l'insieme $\mathcal{P}(A)$ costituito da tutti e soli i sottoinsiemi di $A$:
$$\forall A, \exists \mathcal{P}(A) : \forall X, (X \in \mathcal{P}(A) \iff X \subseteq A)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF7 - Assioma di Fondazione (o Regolarità):</b></font></mark> Ogni insieme non vuoto $A$ possiede un elemento disgiunto da $A$:
$$\forall A \ne \emptyset, \exists x \in A : x \cap A = \emptyset$$
*(Esclude insiemi che contengono se stessi: $x \notin x$ e catene infinite discendenti di appartenenza)*.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>ZF8 - Assioma dell'Infinito:</b></font></mark> Esiste almeno un insieme induttivo $W$:
$$\exists W : (\emptyset \in W \land \forall x (x \in W \implies x^+ = x \cup \{x\} \in W))$$

### Definizioni Insiemistiche
- **Inclusione (Sottoinsieme):** $A \subseteq B \iff \forall x (x \in A \implies x \in B)$.
- **Inclusione Stretta:** $A \subset B \iff A \subseteq B \land A \ne B$.
- **Intersezione:** $A \cap B = \{x \in A \cup B : x \in A \land x \in B\}$.
- **Differenza Insiemistica:** $A \setminus B = \{x \in A : x \notin B\}$.
- **Complementare:** Se $B \subseteq A$, $C_A(B) = A \setminus B$.
- **Successivo di von Neumann:** $x^+ = x \cup \{x\}$.
- **Ordinali di von Neumann:** $0 = \emptyset$, $1 = 0^+ = \{\emptyset\}$, $2 = 1^+ = \{\emptyset, \{\emptyset\}\}$, $3 = 2^+$, ...

---

## Lezione 3: Relazioni e Funzioni I

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Coppia Ordinata (Kuratowski, 1921):</b></font></mark>
$$(a, b) = \{\{a\}, \{a, b\}\}$$

- **Prodotto Cartesiano:** $A \times B = \{(a, b) \in \mathcal{P}(\mathcal{P}(A \cup B)) : a \in A \land b \in B\}$.
- **Relazione Binaria:** Qualsiasi sottoinsieme $\mathcal{R} \subseteq A \times B$. Se $(a, b) \in \mathcal{R}$ si scrive $a \mathcal{R} b$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione:</b></font></mark> Una terna $(A, B, \mathcal{G})$ dove $A$ è il dominio, $B$ il codominio e $\mathcal{G} \subseteq A \times B$ è il grafico, tale che:
$$\forall x \in A, \exists! y \in B : (x, y) \in \mathcal{G}$$
Si denota con $f: A \to B$ e $y = f(x)$.
- **Funzione Identità:** $i_A: A \to A$ definita da $i_A(x) = x$ per ogni $x \in A$.
- **Funzione Inclusione:** Per $X \subseteq A$, $j_X: X \to A$ con $j_X(x) = x$.
- **Funzione Costante:** $f: A \to B$ con $f(x) = c$ per un fissato $c \in B$.
- **Immagine Diretta:** Per $X \subseteq A$, $f(X) = \{f(x) \in B : x \in X\} = \{y \in B : \exists x \in X, y = f(x)\}$. L'immagine di $f$ è $\operatorname{im}(f) = f(A)$.
- **Controimmagine (o Fibra):** Per $Y \subseteq B$, $f^{-1}(Y) = \{x \in A : f(x) \in Y\}$.
- **Restrizione:** Data $f: A \to B$ e $X \subseteq A$, la restrizione $f|_X: X \to B$ è la funzione definita da $f|_X(x) = f(x)$ per ogni $x \in X$.

### Proposizioni
- **Proprietà Caratteristica della Coppia Ordinata:**
$$(x, y) = (a, b) \iff x = a \land y = b$$

- **Algebra di Immagine e Controimmagine:**
  - $f^{-1}(Y_1 \cup Y_2) = f^{-1}(Y_1) \cup f^{-1}(Y_2)$
  - $f^{-1}(Y_1 \cap Y_2) = f^{-1}(Y_1) \cap f^{-1}(Y_2)$
  - $f^{-1}(B \setminus Y) = A \setminus f^{-1}(Y)$
  - $f(X_1 \cup X_2) = f(X_1) \cup f(X_2)$
  - $f(X_1 \cap X_2) \subseteq f(X_1) \cap f(X_2)$ *(l'uguaglianza non vale in generale, a meno che $f$ non sia iniettiva)*
  - $X \subseteq f^{-1}(f(X))$ e $f(f^{-1}(Y)) \subseteq Y$

---

## Lezione 4: Funzioni II, Proprietà e Invertibilità

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Iniettiva:</b></font></mark>
$$\forall x_1, x_2 \in A, \quad f(x_1) = f(x_2) \implies x_1 = x_2 \iff x_1 \ne x_2 \implies f(x_1) \ne f(x_2)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Suriettiva:</b></font></mark>
$$\forall y \in B, \exists x \in A : f(x) = y \iff f(A) = B$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Bigettiva (Biiettiva):</b></font></mark> Funzione contemporaneamente iniettiva e suriettiva.
- **Composizione di Funzioni:** Date $f: A \to B$ e $g: B \to C$, la funzione composta $g \circ f: A \to C$ è definita da:
$$(g \circ f)(x) = g(f(x)), \quad \forall x \in A$$

- **Funzione Invertibile:** Una funzione $f: A \to B$ per cui esiste una funzione $g: B \to A$ soddisfacente $g \circ f = i_A$ e $f \circ g = i_B$.

### Teoremi e Proposizioni
- **Associatività della Composizione:** Per $f: A \to B$, $g: B \to C$, $h: C \to D$, si ha $h \circ (g \circ f) = (h \circ g) \circ f$.
- **Composizione di Funzioni Iniettive/Suriettive:**
  - $f, g$ iniettive $\implies g \circ f$ iniettiva.
  - $f, g$ suriettive $\implies g \circ f$ suriettiva.
  - $f, g$ bigettive $\implies g \circ f$ bigettiva.
  - $g \circ f$ iniettiva $\implies f$ iniettiva.
  - $g \circ f$ suriettiva $\implies g$ suriettiva.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema Fondamentale di Invertibilità:</b></font></mark> $f: A \to B$ è invertibile se e solo se è bigettiva. In tal caso, l'inversa $f^{-1}: B \to A$ è unica.
- **Teorema sull'Inversa della Composizione:** Se $f: A \to B$ e $g: B \to C$ sono invertibili:
$$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$$

---

## Lezione 5: I Numeri Reali e Assioma di Completezza

### Assiomi dei Numeri Reali $(\mathbb{R}, +, \cdot, \le)$
La struttura $(\mathbb{R}, +, \cdot, \le)$ è un campo totalmente ordinato e completo.

#### 1. Assiomi di Campo
- **Assiomi dell'Addizione:**
  - *(A1) Associativa:* $(x + y) + z = x + (y + z)$
  - *(A2) Commutativa:* $x + y = y + x$
  - *(A3) Elemento Neutro:* $\exists 0 \in \mathbb{R} : x + 0 = x$
  - *(A4) Opposto:* $\forall x \in \mathbb{R}, \exists (-x) \in \mathbb{R} : x + (-x) = 0$
- **Assiomi della Moltiplicazione:**
  - *(M1) Associativa:* $(x \cdot y) \cdot z = x \cdot (y \cdot z)$
  - *(M2) Commutativa:* $x \cdot y = y \cdot x$
  - *(M3) Elemento Neutro:* $\exists 1 \in \mathbb{R} \setminus \{0\} : x \cdot 1 = x$
  - *(M4) Reciproco:* $\forall x \in \mathbb{R} \setminus \{0\}, \exists x^{-1} \in \mathbb{R} : x \cdot x^{-1} = 1$
- **Proprietà Distributiva:**
  - *(D) Distributività:* $x \cdot (y + z) = x \cdot y + x \cdot z$

#### 2. Assiomi di Ordinamento Totale
- *(O1) Riflessiva:* $x \le x$
- *(O2) Antisimmetrica:* $x \le y \land y \le x \implies x = y$
- *(O3) Transitiva:* $x \le y \land y \le z \implies x \le z$
- *(O4) Totalità (Tricotomia):* $\forall x, y \in \mathbb{R}$, vale $x \le y \lor y \le x$
- *(AO) Compatibilità Additiva:* $x \le y \implies x + z \le y + z$
- *(MO) Compatibilità Moltiplicativa:* $x \le y \land z \ge 0 \implies x \cdot z \le y \cdot z$

#### 3. Assioma di Completezza di Dedekind
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Assioma di Completezza:</b></font></mark> Ogni sottoinsieme non vuoto $A \subset \mathbb{R}$ limitato superiormente ammette estremo superiore in $\mathbb{R}$:
$$\forall \emptyset \ne A \subset \mathbb{R}, (\exists M \in \mathbb{R} : \forall a \in A, a \le M) \implies \exists \sup A \in \mathbb{R}$$

### Definizioni
- **Maggiorante e Minorante:** Un elemento $M \in \mathbb{R}$ è maggiorante per $A$ se $\forall a \in A, a \le M$. Un elemento $m \in \mathbb{R}$ è minorante se $\forall a \in A, m \le a$.
- **Insieme Limitato:** Superiormente se ammette maggioranti; inferiormente se ammette minoranti; limitato se ammette entrambi.
- **Massimo e Minimo:** $M = \max A \iff M \in A \land M$ è maggiorante; $m = \min A \iff m \in A \land m$ è minorante.
- **Estremo Superiore ed Inferiore:** $\sup A = \min \{M \in \mathbb{R} : M \text{ è maggiorante di } A\}$; $\inf A = \max \{m \in \mathbb{R} : m \text{ è minorante di } A\}$.

### Teoremi
- **Teorema di Esistenza dell'Estremo Inferiore:** Ogni sottoinsieme non vuoto e inferiormente limitato ammette estremo inferiore in $\mathbb{R}$, con $\inf A = -\sup(-A)$.
- **Teorema di Caratterizzazione Operativa ($\varepsilon$):**
  - $M = \sup A \iff (\forall a \in A, a \le M) \land (\forall \varepsilon > 0, \exists a \in A : a > M - \varepsilon)$
  - $m = \inf A \iff (\forall a \in A, a \ge m) \land (\forall \varepsilon > 0, \exists a \in A : a < m + \varepsilon)$
- **Teorema dell'Elemento Separatore:** Dati due sottoinsiemi non vuoti $A, B \subset \mathbb{R}$ tali che $\forall a \in A, \forall b \in B, a \le b$, allora $\sup A \le \inf B$ ed esiste almeno un elemento separatore $\lambda \in \mathbb{R}$ con $a \le \lambda \le b$ per ogni $a \in A, b \in B$.

---

## Lezione 6: Valore Assoluto e Numeri Naturali

### Definizioni
- **Parte Positiva e Negativa:** Per $x \in \mathbb{R}$, $x^+ = \max(x, 0)$ e $x^- = \max(-x, 0)$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Valore Assoluto (Modulo):</b></font></mark>
$$|x| = x^+ + x^- = \max(x, -x) = \begin{cases} x & \text{se } x \ge 0 \\ -x & \text{se } x < 0 \end{cases}$$

- **Insieme Induttivo in $\mathbb{R}$:** Un sottoinsieme $A \subseteq \mathbb{R}$ tale che:
  1. $0 \in A$
  2. $\forall x \in A \implies x + 1 \in A$
- **Insieme dei Numeri Naturali $\mathbb{N}$:** Il minimo sottoinsieme induttivo di $\mathbb{R}$: $\mathbb{N} = \bigcap \{A \subseteq \mathbb{R} : A \text{ è induttivo}\}$.

### Proposizioni e Teoremi
- **Proprietà del Valore Assoluto:**
  - $x = x^+ - x^-$ e $|x| = x^+ + x^-$
  - $|x| \ge 0$, con $|x| = 0 \iff x = 0$
  - $|-x| = |x|$ e $|xy| = |x||y|$
  - $|x| \le r \iff -r \le x \le r$ (per $r \ge 0$)
  - $|x + y| \le |x| + |y|$ *(Disuguaglianza Triangolare)*
  - $||x| - |y|| \le |x - y|$ *(Disuguaglianza Triangolare Inversa)*
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Principio di Induzione Matematica:</b></font></mark>
  - *Forma Insiemistica:* Se $A \subseteq \mathbb{N}$ soddisfa $0 \in A$ e $(n \in A \implies n + 1 \in A)$, allora $A = \mathbb{N}$.
  - *Forma per Predicati:* Sia $P(n)$ un predicato su $\mathbb{N}$. Se $P(0)$ è vero *(base)* e $\forall n \in \mathbb{N}, P(n) \implies P(n+1)$ *(passo induttivo)*, allora $P(n)$ è vero per ogni $n \in \mathbb{N}$.
- **Assiomi di Peano (come teoremi in $\mathbb{R}$):** Ponendo $s(n) = n + 1$:
  1. $s(\mathbb{N}) \subseteq \mathbb{N}$
  2. $\mathbb{N} = \{0\} \cup s(\mathbb{N})$
  3. $s$ è iniettiva ($n + 1 = m + 1 \implies n = m$)
  4. $\forall n \in \mathbb{N}, s(n) \ne 0$ ($n + 1 \ge 1 > 0$)
- **Teorema di Esistenza e Unicità del Predecessore:** Per ogni $n \in \mathbb{N}^*$, esiste un unico $k \in \mathbb{N}$ tale che $n = k + 1$ (si pone $k = n - 1$).
- **Teorema di Discretezza:** Non esistono naturali in $]m, m+1[$ per ogni $m \in \mathbb{N}$; $m < n \implies m + 1 \le n$.

---

## Lezione 7: Insiemi Numerici $\mathbb{N}$, $\mathbb{Z}$ e $\mathbb{Q}$

### Teoremi Fondamentali
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema del Buon Ordinamento:</b></font></mark> Ogni sottoinsieme non vuoto di $\mathbb{N}$ possiede minimo:
$$\forall \emptyset \ne X \subseteq \mathbb{N}, \exists \min X \in X$$

- **Corollario del Massimo:** Ogni sottoinsieme non vuoto e limitato superiormente di $\mathbb{N}$ possiede massimo: $\exists \max X \in X$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema della Divisione Euclidea:</b></font></mark> Dati $n, m \in \mathbb{N}$ con $m \ne 0$, esiste un'unica coppia $(q, r) \in \mathbb{N}^2$ tale che:
$$n = mq + r, \quad 0 \le r < m$$

- **Teorema di Parità:** Ogni naturale $n$ appartiene a una e una sola delle due forme: $n = 2k$ (pari) oppure $n = 2k + 1$ (dispari).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Disuguaglianza di Bernoulli:</b></font></mark>
$$\forall x \ge -1, \forall n \in \mathbb{N}, \quad (1 + x)^n \ge 1 + nx$$

- **Corollario di Bernoulli:** $\forall n \in \mathbb{N}, 2^n \ge n + 1 > n$.
- **Lemma della Decomposizione Binaria:** Ogni intero $n \ge 1$ si scrive in modo unico nella forma:
$$n = 2^j \cdot k \quad \text{con } j \in \mathbb{N} \text{ e } k \text{ dispari}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Irrazionalità di $\sqrt{2}$ (Teorema di Pitagora):</b></font></mark> Non esiste alcun numero razionale $x \in \mathbb{Q}$ tale che $x^2 = 2$.
- **Teorema di Incompletezza di $\mathbb{Q}$:** Il campo ordinato $\mathbb{Q}$ non è completo secondo Dedekind (ad es. l'insieme $\{x \in \mathbb{Q} : x \ge 0 \land x^2 < 2\}$ non ammette estremo superiore in $\mathbb{Q}$).
- **Teorema Fondamentale dell'Aritmetica:** Ogni intero $n \ge 2$ ammette una scomposizione in fattori primi, unica a meno dell'ordine dei fattori.
- **Teorema di Euclide:** L'insieme dei numeri primi è infinito.

---

## Lezione 8: Densità, Sommatorie e Teorema del Binomio

### Teoremi di Topologia Algebrica di $\mathbb{R}$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema della Proprietà di Archimede:</b></font></mark> L'insieme $\mathbb{N}$ non è superiormente limitato in $\mathbb{R}$:
$$\forall x \in \mathbb{R}, \exists n \in \mathbb{N} : n > x \iff \forall \varepsilon > 0, \exists n \in \mathbb{N}^* : \frac{1}{n} < \varepsilon$$

- **Proposizione sull'Illimitatezza di $\mathbb{Z}$:** $\mathbb{Z}$ è illimitato sia superiormente che inferiormente in $\mathbb{R}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Densità dei Razionali in $\mathbb{R}$:</b></font></mark>
$$\forall a, b \in \mathbb{R} \text{ con } a < b, \quad \exists q \in \mathbb{Q} : a < q < b$$

- **Corollario della Densità degli Irrazionali:** Tra due qualsiasi numeri reali distinti $a < b$ esiste almeno un numero irrazionale $r \in \mathbb{R} \setminus \mathbb{Q}$.

### Formule Chiuse di Sommatorie Notevoli
- **Somma di Segni Alterni:**
$$\sum_{k=0}^n (-1)^k = \begin{cases} 1 & \text{se } n \text{ è pari} \\ 0 & \text{se } n \text{ è dispari} \end{cases}$$

- **Progressione Geometrica ($q \ne 1$):**
$$\sum_{k=0}^n q^k = \frac{1 - q^{n+1}}{1 - q}$$

- **Somma dei Primi Naturali (Gauss):**
$$\sum_{k=1}^n k = \frac{n(n + 1)}{2}$$

- **Somma dei Primi Numeri Dispari:**
$$\sum_{k=1}^n (2k - 1) = n^2$$

- **Somma dei Quadrati:**
$$\sum_{k=1}^n k^2 = \frac{n(n + 1)(2n + 1)}{6}$$

### Calcolo Combinatorio e Binomio di Newton
- **Coefficiente Binomiale:** Per $n, k \in \mathbb{N}$ con $k \le n$:
$$\binom{n}{k} = \frac{n!}{k!(n - k)!}$$

- **Proprietà di Simmetria:** $\binom{n}{k} = \binom{n}{n - k}$.
- **Formula di Ricorrenza di Pascal (Tartaglia):** Per $1 \le k \le n$:
$$\binom{n+1}{k} = \binom{n}{k-1} + \binom{n}{k}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema del Binomio di Newton:</b></font></mark>
$$(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$$

- **Cardinalità dell'Insieme delle Parti:** Per un insieme finito con $|A| = n$, $|\mathcal{P}(A)| = \sum_{k=0}^n \binom{n}{k} = 2^n$.

---

## Lezione 9: Funzioni Reali ed Estremi

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Reale di Variabile Reale:</b></font></mark> Una funzione $f: A \to \mathbb{R}$ con $A \subseteq \mathbb{R}$.
- **Operazioni Puntuali nell'Anello $(\mathbb{R}^A, +, \cdot)$:**
  - Somma: $(f + g)(x) = f(x) + g(x)$
  - Prodotto: $(f \cdot g)(x) = f(x) \cdot g(x)$
  - Prodotto per scalare: $(\lambda f)(x) = \lambda f(x)$
- **Ordinamento Parziale Puntuale:** $f \le g \iff \forall x \in A, f(x) \le g(x)$.
- **Operazioni Reticolari:**
  - $\sup(f, g)(x) = \max(f(x), g(x)) = (f \vee g)(x) = \frac{f(x) + g(x) + |f(x) - g(x)|}{2}$
  - $\inf(f, g)(x) = \min(f(x), g(x)) = (f \wedge g)(x) = \frac{f(x) + g(x) - |f(x) - g(x)|}{2}$
  - $f^+ = \sup(f, 0)$, $f^- = \sup(-f, 0)$, $|f| = f^+ + f^-$.
- **Funzione Limitata:**
  - Superiormente: $\exists M \in \mathbb{R} : \forall x \in A, f(x) \le M$.
  - Inferiormente: $\exists m \in \mathbb{R} : \forall x \in A, f(x) \ge m$.
  - Limitata: $\exists K \ge 0 : \forall x \in A, |f(x)| \le K$.
- **Estremo Superiore ed Inferiore di Funzioni:**
$$\sup_{x \in A} f(x) = \sup f(A), \quad \inf_{x \in A} f(x) = \inf f(A)$$

- **Massimo e Minimo Globale:**
  - $M = \max_{x \in A} f(x) \iff \exists x_0 \in A : f(x_0) = M \land \forall x \in A, f(x) \le M$. Il punto $x_0$ si dice punto di massimo globale ($x_0 \in \operatorname{argmax}_A f$).
  - $m = \min_{x \in A} f(x) \iff \exists x_0 \in A : f(x_0) = m \land \forall x \in A, f(x) \ge m$. Il punto $x_0$ si dice punto di minimo globale ($x_0 \in \operatorname{argmin}_A f$).

---

## Lezione 10: Funzioni Reali II e Funzioni Elementari I

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Monotonia Funzionale:</b></font></mark> Sia $f: A \subset \mathbb{R} \to \mathbb{R}$:
  - *Crescente (in senso lato):* $\forall x_1, x_2 \in A, x_1 < x_2 \implies f(x_1) \le f(x_2)$.
  - *Strettamente Crescente:* $\forall x_1, x_2 \in A, x_1 < x_2 \implies f(x_1) < f(x_2)$.
  - *Decrescente (in senso lato):* $\forall x_1, x_2 \in A, x_1 < x_2 \implies f(x_1) \ge f(x_2)$.
  - *Strettamente Decrescente:* $\forall x_1, x_2 \in A, x_1 < x_2 \implies f(x_1) > f(x_2)$.
- **Simmetrie di Funzioni:**
  - *Pari:* Dominio simmetrico ($x \in A \implies -x \in A$) e $f(-x) = f(x)$ per ogni $x \in A$ (grafico simmetrico rispetto all'asse $y$).
  - *Dispari:* Dominio simmetrico e $f(-x) = -f(x)$ per ogni $x \in A$ (grafico simmetrico rispetto all'origine $O$).
  - *Periodica:* Esiste $p > 0$ tale che $\forall x \in \mathbb{R}, f(x + p) = f(x)$. Il minimo $p$ positivo è il periodo fondamentale.
- **Funzione Potenza ad Esponente Naturale:** $p_n(x) = x^n$ con $n \in \mathbb{N}^*$.
- **Funzione Radice $n$-esima:** Per $n \in \mathbb{N}^*$:
  - Se $n$ è dispari: $\sqrt[n]{\cdot}: \mathbb{R} \to \mathbb{R}$ è l'inversa globale di $p_n$.
  - Se $n$ è pari: $\sqrt[n]{\cdot}: [0, +\infty[ \to [0, +\infty[$ è l'inversa della restrizione $p_n|_{[0, +\infty[}$.

### Proposizioni
- **Composizione di Funzioni Monotone:**
  - Monotone con stessa concordanza (entrambe crescenti o entrambe decrescenti) $\implies g \circ f$ è crescente.
  - Monotone con concordanza discordante (una crescente e una decrescente) $\implies g \circ f$ è decrescente.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Invertibilità di Funzioni Monotone:</b></font></mark> Se $f: A \to \mathbb{R}$ è strettamente monotona, allora è iniettiva, dunque invertibile su $f(A)$, e $f^{-1}$ possiede lo stesso tipo di monotonia stretta di $f$.
- **Proprietà Algebriche dei Radicali:** Per $a, b \ge 0$ e $n, m \in \mathbb{N}^*$:
$$\sqrt[n]{ab} = \sqrt[n]{a}\sqrt[n]{b}, \quad (\sqrt[n]{a})^m = \sqrt[n]{a^m}, \quad \sqrt[m]{\sqrt[n]{a}} = \sqrt[mn]{a}$$

---

## Lezione 11: Funzioni Reali Elementari II

### Definizioni e Teoremi
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Esponenziale Reale:</b></font></mark> Per $a > 1$, la funzione $\exp_a(x) = a^x$ è definita su tutto $\mathbb{R}$ ponendo:
$$a^x = \sup \{a^q : q \in \mathbb{Q}, q \le x\}$$
Per $0 < a < 1$, si pone $a^x = (1/a)^{-x}$.
- **Proprietà Fondamentali dell'Esponenziale:**
  1. $a^{x_1 + x_2} = a^{x_1} \cdot a^{x_2}$
  2. $a^0 = 1$ e $a^1 = a$
  3. $(a^x)^y = a^{xy}$ e $(ab)^x = a^x b^x$
  4. Stretta monotonia: strettamente crescente se $a > 1$, strettamente decrescente se $0 < a < 1$
  5. Immagine: $\exp_a(\mathbb{R}) = ]0, +\infty[$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Funzione Logaritmo:</b></font></mark> Per $a > 0, a \ne 1$, $\log_a: ]0, +\infty[ \to \mathbb{R}$ è la funzione inversa dell'esponenziale:
$$y = \log_a x \iff a^y = x$$
Proprietà: $\log_a(xy) = \log_a x + \log_a y$, $\log_a(x/y) = \log_a x - \log_a y$, $\log_a(x^r) = r \log_a x$, formula del cambio di base $\log_b x = \frac{\log_a x}{\log_a b}$.
- **Funzioni Iperboliche:**
$$\sinh x = \frac{e^x - e^{-x}}{2}, \quad \cosh x = \frac{e^x + e^{-x}}{2}, \quad \tanh x = \frac{\sinh x}{\cosh x} = \frac{e^x - e^{-x}}{e^x + e^{-x}}$$

- **Identità Iperbolica Fondamentale:** $\cosh^2 x - \sinh^2 x = 1$.
- **Settori Iperbolici Inversi:**
  - $\operatorname{settsinh} y = \ln(y + \sqrt{y^2 + 1})$ su $\mathbb{R}$
  - $\operatorname{settcosh} y = \ln(y + \sqrt{y^2 - 1})$ su $[1, +\infty[$
  - $\operatorname{setttgh} y = \frac{1}{2}\ln\left(\frac{1+y}{1-y}\right)$ su $]-1, 1[$
- **Funzioni Circolari Inverse (Goniometriche):**
  - $\arcsin: [-1, 1] \to [-\pi/2, \pi/2]$ (inversa di $\sin|_{[-\pi/2, \pi/2]}$)
  - $\arccos: [-1, 1] \to [0, \pi]$ (inversa di $\cos|_{[0, \pi]}$)
  - $\arctan: \mathbb{R} \to ]-\pi/2, \pi/2[$ (inversa di $\tan|_{]-\pi/2, \pi/2[}$)

---

## Lezione 12: Limiti I, Retta Reale Ampliata e Definizione

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Retta Reale Ampliata:</b></font></mark> $\overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$, con l'ordinamento esteso $-\infty < x < +\infty$ per ogni $x \in \mathbb{R}$.
- **Topologia degli Intorni in $\overline{\mathbb{R}}$:**
  - Per $x_0 \in \mathbb{R}$: intorni aperti sono gli intervalli sferici $U = ]x_0 - \delta, x_0 + \delta[$ con $\delta > 0$.
  - Per $+\infty$: intorni sono le semirette aperte superiormente $U = ]M, +\infty]$ con $M \in \mathbb{R}$.
  - Per $-\infty$: intorni sono le semirette aperte inferiormente $U = [-\infty, -M[$ con $M \in \mathbb{R}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Punto di Accumulazione:</b></font></mark> Sia $A \subseteq \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$. Il punto $x_0$ si dice punto di accumulazione per $A$ se ogni intorno $U$ di $x_0$ contiene almeno un punto di $A$ distinto da $x_0$:
$$\forall U \in \mathcal{I}(x_0), \quad (U \setminus \{x_0\}) \cap A \ne \emptyset$$

- **Punto Isolato:** Un punto $x_0 \in A$ tale che non è di accumulazione per $A$, ossia esiste un intorno $U \in \mathcal{I}(x_0)$ per cui $U \cap A = \{x_0\}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione Topologica Generale di Limite:</b></font></mark> Siano $f: A \to \mathbb{R}$, $x_0$ di accumulazione per $A$ e $\ell \in \overline{\mathbb{R}}$. Si dice che $f(x)$ tende a $\ell$ per $x \to x_0$ e si scrive $\lim_{x \to x_0} f(x) = \ell$ se:
$$\forall V \in \mathcal{I}(\ell), \exists U \in \mathcal{I}(x_0) : \forall x \in A \cap U \setminus \{x_0\} \implies f(x) \in V$$

### I 6 Casi Metrici Parametrici Operativi

1. **Finito al Finito ($x \to x_0 \in \mathbb{R}, f(x) \to \ell \in \mathbb{R}$):**
$$\forall \varepsilon > 0, \exists \delta > 0 : \forall x \in A, 0 < |x - x_0| < \delta \implies |f(x) - \ell| < \varepsilon$$

2. **Divergenza Positiva al Finito ($x \to x_0 \in \mathbb{R}, f(x) \to +\infty$):**
$$\forall M \in \mathbb{R}, \exists \delta > 0 : \forall x \in A, 0 < |x - x_0| < \delta \implies f(x) > M$$

3. **Divergenza Negativa al Finito ($x \to x_0 \in \mathbb{R}, f(x) \to -\infty$):**
$$\forall M \in \mathbb{R}, \exists \delta > 0 : \forall x \in A, 0 < |x - x_0| < \delta \implies f(x) < -M$$

4. **Finito all'Infinito ($x \to +\infty, f(x) \to \ell \in \mathbb{R}$):**
$$\forall \varepsilon > 0, \exists K \in \mathbb{R} : \forall x \in A, x > K \implies |f(x) - \ell| < \varepsilon$$

5. **Divergenza Positiva all'Infinito ($x \to +\infty, f(x) \to +\infty$):**
$$\forall M \in \mathbb{R}, \exists K \in \mathbb{R} : \forall x \in A, x > K \implies f(x) > M$$

6. **Divergenza Negativa all'Infinito ($x \to +\infty, f(x) \to -\infty$):**
$$\forall M \in \mathbb{R}, \exists K \in \mathbb{R} : \forall x \in A, x > K \implies f(x) < -M$$

---

## Lezione 13: Limiti II, Restrizioni, Limiti Laterali e Successioni

### Teoremi Fondamentali sui Limiti
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Unicità del Limite:</b></font></mark> Sia $f: A \subset \mathbb{R} \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Se esiste il limite di $f(x)$ per $x \to x_0$, tale limite è unico.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema del Limite della Restrizione:</b></font></mark> Sia $f: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell$. Sia $B \subset A$ tale che $x_0$ sia punto di accumulazione per $B$. Allora la restrizione $f|_B$ ammette limite per $x \to x_0$ e risulta:
$$\lim_{x \to x_0, x \in B} f(x) = \ell$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario Contronominale (Criterio di Non Regolarità):</b></font></mark> Siano $B_1, B_2 \subset A$ con $x_0$ punto di accumulazione per entrambi. Se:
$$\lim_{x \to x_0, x \in B_1} f(x) = \ell_1 \quad \text{e} \quad \lim_{x \to x_0, x \in B_2} f(x) = \ell_2 \quad \text{con } \ell_1 \ne \ell_2$$
oppure se per una restrizione il limite non esiste, allora la funzione $f$ non ammette limite per $x \to x_0$ (è non regolare).

### Limiti Laterali
- **Definizione di Limite Destro e Sinistro:**
  - Limite destro: $\lim_{x \to x_0^+} f(x) = \lim_{x \to x_0, x \in A \cap ]x_0, +\infty[} f(x)$
  - Limite sinistro: $\lim_{x \to x_0^-} f(x) = \lim_{x \to x_0, x \in A \cap ]-\infty, x_0[} f(x)$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema di Equivalenza del Limite Globale:</b></font></mark> Sia $x_0$ punto di accumulazione sia da destra sia da sinistra per $A$. Allora:
$$\lim_{x \to x_0} f(x) = \ell \iff \left( \lim_{x \to x_0^+} f(x) = \ell \quad \land \quad \lim_{x \to x_0^-} f(x) = \ell \right)$$

### Limiti di Successioni Numeriche
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Successione Numerica:</b></font></mark> Una funzione $a: \mathbb{N} \to \mathbb{R}$ denotata con $(a_n)_{n \in \mathbb{N}}$ o $(a_n)_{n \ge 0}$.
- **Punto di Accumulazione di $\mathbb{N}$:** L'unico punto di accumulazione per l'insieme $\mathbb{N}$ nella retta estesa $\overline{\mathbb{R}}$ è $+\infty$.

#### Formulazioni Metriche per Successioni
- **Convergenza a $\ell \in \mathbb{R}$:**
$$\lim_{n \to +\infty} a_n = \ell \iff \forall \varepsilon > 0, \exists n_0 \in \mathbb{N} : \forall n > n_0 \implies |a_n - \ell| < \varepsilon$$

- **Divergenza a $+\infty$:**
$$\lim_{n \to +\infty} a_n = +\infty \iff \forall M \in \mathbb{R}, \exists n_0 \in \mathbb{N} : \forall n > n_0 \implies a_n > M$$

- **Divergenza a $-\infty$:**
$$\lim_{n \to +\infty} a_n = -\infty \iff \forall M \in \mathbb{R}, \exists n_0 \in \mathbb{N} : \forall n > n_0 \implies a_n < -M$$

#### Limiti Notevoli Fondamentali di Successioni
- Infinitesimo reciproco: $\lim_{n \to +\infty} \frac{a}{n} = 0 \quad (\forall a \in \mathbb{R})$
- Potenze intere: $\lim_{n \to +\infty} n^k = +\infty$ e $\lim_{n \to +\infty} \frac{1}{n^k} = 0 \quad (k \in \mathbb{N}^*)$
- Successione armonica generalizzata:
$$\lim_{n \to +\infty} n^p = \begin{cases} +\infty & \text{se } p > 0 \\ 1 & \text{se } p = 0 \\ 0 & \text{se } p < 0 \end{cases}$$

- Radice $n$-esima notevole:
$$\lim_{n \to +\infty} \sqrt[n]{a} = 1 \quad (\forall a > 0)$$

---

## Lezione 14: Limiti di Successioni, Sottosuccessioni e Proprietà Locali

### Proprietà Generali e Limitatezza di Successioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.1 (Carattere Locale del Limite di Successioni):</b></font></mark> Siano $(a_n)_{n \in \mathbb{N}}$ e $(b_n)_{n \in \mathbb{N}}$ due successioni reali tali che definitivamente coincidono, ovvero:
$$\exists \nu_0 \in \mathbb{N} : \forall n > \nu_0 \implies a_n = b_n$$
Allora, per ogni $\ell \in \overline{\mathbb{R}}$:
$$\lim_{n \to +\infty} a_n = \ell \iff \lim_{n \to +\infty} b_n = \ell$$
*(I valori assunti da un numero finito di termini iniziali non alterano l'esistenza né il valore del limite).*

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Successione Limitata):</b></font></mark> Una successione $(a_n)_{n \in \mathbb{N}}$ si dice:
  - *Limitata superiormente* se $\exists M \in \mathbb{R} : \forall n \in \mathbb{N}, a_n \le M$.
  - *Limitata inferiormente* se $\exists m \in \mathbb{R} : \forall n \in \mathbb{N}, a_n \ge m$.
  - *Limitata* se è sia limitata inferiormente sia superiormente, ovvero:
$$\exists C > 0 : \forall n \in \mathbb{N}, |a_n| \le C$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.2 (Convergenza Implica Limitatezza):</b></font></mark> Ogni successione convergente è limitata:
$$\lim_{n \to +\infty} a_n = \ell \in \mathbb{R} \implies \exists C > 0 : \forall n \in \mathbb{N}, |a_n| \le C$$
*(Attenzione: l'implicazione opposta è falsa, ad esempio $a_n = (-1)^n$ è limitata ma non convergente).*

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.3 (Divergenza e Illimitatezza):</b></font></mark>
  - (i) Se $\lim_{n \to +\infty} a_n = +\infty$, allora $(a_n)_{n \in \mathbb{N}}$ non è limitata superiormente: $\sup_{n \in \mathbb{N}} a_n = +\infty$.
  - (ii) Se $\lim_{n \to +\infty} a_n = -\infty$, allora $(a_n)_{n \in \mathbb{N}}$ non è limitata inferiormente: $\inf_{n \in \mathbb{N}} a_n = -\infty$.

### Sottosuccessioni (Successioni Estratte)
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1 (Sottosuccessione o Successione Estratta):</b></font></mark> Data una successione $(a_n)_{n \in \mathbb{N}}$, si definisce successione estratta da $(a_n)$ ogni successione del tipo:
$$(a_{n_k})_{k \in \mathbb{N}}$$
dove $(n_k)_{k \in \mathbb{N}}$ è una successione di indici naturali strettamente crescente, cioè:
$$n: \mathbb{N} \to \mathbb{N}, \quad k_1 < k_2 \implies n_{k_1} < n_{k_2}$$
In termini funzionali, $a_{n_k} = (a \circ n)(k)$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Lemma 2.3 (Crescita dell'Indice della Sottosuccessione):</b></font></mark> Se $(n_k)_{k \in \mathbb{N}}$ è strettamente crescente in $\mathbb{N}$, allora per ogni $k \in \mathbb{N}$:
$$n_k \ge k$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.5 (Invarianza del Limite per Sottosuccessioni):</b></font></mark> Sia $(a_n)_{n \in \mathbb{N}}$ regolare con $\lim_{n \to +\infty} a_n = \ell \in \overline{\mathbb{R}}$. Allora ogni sua sottosuccessione $(a_{n_k})_{k \in \mathbb{N}}$ è regolare e ammette lo stesso limite:
$$\lim_{k \to +\infty} a_{n_k} = \ell$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Criterio di Non Regolarità per Sottosuccessioni:</b></font></mark>
  - Se $(a_n)$ possiede due sottosuccessioni convergenti a due limiti distinti $\ell_1 \ne \ell_2$, allora $(a_n)$ non è regolare (non ammette limite).
  - Se $(a_n)$ possiede una sottosuccessione non regolare, allora $(a_n)$ non è regolare.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.9 (Comportamento della Successione Geometrica $q^n$):</b></font></mark> Sia $q \in \mathbb{R}$. Per la successione $a_n = q^n$ ($n \in \mathbb{N}$):
$$\lim_{n \to +\infty} q^n = \begin{cases} +\infty & \text{se } q > 1 \\ 1 & \text{se } q = 1 \\ 0 & \text{se } |q| < 1 \\ \text{non esiste} & \text{se } q \le -1 \end{cases}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.10 (Convergenza da Sottosuccessioni Complementari Pari e Dispari):</b></font></mark> Sia $(a_n)_{n \in \mathbb{N}}$ una successione. Se la sottosuccessione dei termini pari e quella dei termini dispari convergono allo stesso limite $\ell \in \overline{\mathbb{R}}$:
$$\lim_{k \to +\infty} a_{2k} = \ell \quad \land \quad \lim_{k \to +\infty} a_{2k+1} = \ell \implies \lim_{n \to +\infty} a_n = \ell$$

### Proprietà Locali e Algebra dei Limiti
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 3.1 (Proprietà Locale / Definitiva):</b></font></mark> Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$, e sia $P(x)$ un predicato definito per $x \in A$. Si dice che $P(x)$ è vera *in un intorno di $x_0$* (o *definitivamente per $x \to x_0$*) se:
$$\exists U \in \mathcal{U}(x_0) : \forall x \in A \cap U \setminus \{x_0\} \implies P(x) \text{ è vera}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.3 (Intersezione Finita di Proprietà Locali):</b></font></mark> Siano $P_1(x)$ e $P_2(x)$ due predicati veri in un intorno di $x_0$. Allora anche la loro congiunzione $P_1(x) \land P_2(x)$ è vera in un intorno di $x_0$:
$$P_1 \text{ vera in } U_1 \land P_2 \text{ vera in } U_2 \implies P_1 \land P_2 \text{ vera in } U_1 \cap U_2$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.5 (Limite del Valore Assoluto):</b></font></mark> Sia $f: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
$$\lim_{x \to x_0} |f(x)| = |\ell|$$
*(Se $\ell = 0$, vale la doppia implicazione: $\lim f(x) = 0 \iff \lim |f(x)| = 0$).*

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.6 (Limitatezza Locale delle Funzioni Convergenti):</b></font></mark> Sia $f: A \to \mathbb{R}$ convergente per $x \to x_0$ con $\lim_{x \to x_0} f(x) = \ell \in \mathbb{R}$. Allora $f$ è limitata in un intorno di $x_0$:
$$\exists U \in \mathcal{U}(x_0) : \forall x \in (A \cap U) \setminus \{x_0\} \implies |f(x)| \le 1 + |\ell|$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.8 (Algebra dei Limiti Finiti):</b></font></mark> Siano $f, g: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell \in \mathbb{R}$ e $\lim_{x \to x_0} g(x) = m \in \mathbb{R}$. Allora:
  1. **Somma:** $\lim_{x \to x_0} (f + g)(x) = \ell + m$
  2. **Prodotto:** $\lim_{x \to x_0} (f \cdot g)(x) = \ell \cdot m$
  3. **Quoziente:** Se $m \ne 0$ e $g(x) \ne 0$ definitivamente, $\lim_{x \to x_0} \left(\frac{f}{g}\right)(x) = \frac{\ell}{m}$


---


## Lezione 15: Proprietà dei Limiti

### Polinomi e Funzioni Razionali
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione (Esempio 1.1.i — Limite di un Monomio):</b></font></mark> Siano $a \in \mathbb{R}$, $n \in \mathbb{N}$ e $x_0 \in \mathbb{R}$. Allora:
$$\lim_{x \to x_0} a x^n = a x_0^n$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione e Limite di una Funzione Polinomiale (Esempio 1.1.ii):</b></font></mark> Si chiama *funzione polinomiale* una funzione del tipo:
$$P: \mathbb{R} \to \mathbb{R}, \quad P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0$$
dove $a_k \in \mathbb{R}$ per $k = 0, 1, \dots, n$. Per il teorema sulla somma dei limiti, per ogni $x_0 \in \mathbb{R}$ risulta:
$$\lim_{x \to x_0} P(x) = a_n x_0^n + a_{n-1} x_0^{n-1} + \dots + a_1 x_0 + a_0 = P(x_0)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione e Limite di una Funzione Razionale (Esempio 1.1.iii):</b></font></mark> Siano $P(x)$ e $Q(x)$ due polinomi e siano $x_1, \dots, x_m$ gli zeri reali di $Q(x)$. Si definisce *funzione razionale* la funzione:
$$f: A \to \mathbb{R}, \quad f(x) = \frac{P(x)}{Q(x)}, \quad \text{con } A = \mathbb{R} \setminus \{x_1, \dots, x_m\}$$
Per ogni punto del dominio $x_0 \in A$ (dove $Q(x_0) \ne 0$), per il teorema sul limite del rapporto vale:
$$\lim_{x \to x_0} \frac{P(x)}{Q(x)} = \frac{P(x_0)}{Q(x_0)}$$

### Limiti e Ordinamento
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Della Permanenza delle Disuguaglianze):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ un punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f: A \to \mathbb{R}$ e $g: A \to \mathbb{R}$ due funzioni tali che:
$$\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}} \quad \text{e} \quad \lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}}$$
Allora:
$$\ell > m \implies f(x) > g(x) \text{ in un intorno di } x_0$$
*(Osservazione 2.2: Non vale con la disuguaglianza debole, ossia $\ell \ge m \centernot\implies f(x) \ge g(x)$ in un intorno di $x_0$; ad esempio per $f(x) = x$, $g(x) = -x$ e $x_0 = 0$ si ha $\ell = m = 0$).*

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.3 (Confronto Locale con una Costante):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f: A \to \mathbb{R}$ e $\lambda \in \mathbb{R}$ e supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
$$\ell > \lambda \text{ (risp. } \ell < \lambda\text{)} \implies f(x) > \lambda \text{ (risp. } f(x) < \lambda\text{) in un intorno di } x_0$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.4 (Teorema della Permanenza del Segno):</b></font></mark> Sia $A \subset \mathbb{R}$, $f: A \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Supponiamo che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
$$\ell > 0 \text{ (risp. } \ell < 0\text{)} \implies f(x) > 0 \text{ (risp. } f(x) < 0\text{) in un intorno di } x_0$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.5 (Teorema di Prolungamento delle Disuguaglianze):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f, g: A \to \mathbb{R}$ due funzioni tali che $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$ e $\lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}}$. Allora:
$$f(x) \le g(x) \text{ in un intorno di } x_0 \implies \ell \le m$$
*(Osservazione 2.6: Si prolunga la disuguaglianza debole $\le$ ma non quella stretta $<$, ossia $f(x) < g(x) \centernot\implies \ell < m$; ad esempio $x^2 < |x|$ per $x \in ]-1, 1[ \setminus \{0\}$, ma $\lim_{x \to 0} x^2 = 0 = \lim_{x \to 0} |x|$).*

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.7 (Del Confronto / Della Convergenza Obbligata / Dei Carabinieri):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ in $\overline{\mathbb{R}}$. Siano $f, g, h: A \to \mathbb{R}$ tre funzioni tali che:
  - **a)** $f(x) \le g(x) \le h(x)$ in un intorno di $x_0$;
  - **b)** $\lim_{x \to x_0} f(x) = \ell$ e $\lim_{x \to x_0} h(x) = \ell$, con $\ell \in \overline{\mathbb{R}}$.
  Allora:
$$\lim_{x \to x_0} g(x) = \ell$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 2.8 (Confronto per Limiti Infiniti — Un Solo Carabiniere):</b></font></mark>
  - Se $f(x) \le g(x)$ in un intorno di $x_0$ e $\lim_{x \to x_0} f(x) = +\infty$, allora $\lim_{x \to x_0} g(x) = +\infty$.
  - Se $g(x) \le h(x)$ in un intorno di $x_0$ e $\lim_{x \to x_0} h(x) = -\infty$, allora $\lim_{x \to x_0} g(x) = -\infty$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.9 (Maggiorazione in Valore Assoluto con Funzione Infinitesima):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Siano $f, g: A \to \mathbb{R}$ tali che $|f(x)| \le g(x)$ in un intorno di $x_0$. Allora:
$$\lim_{x \to x_0} g(x) = 0 \implies \lim_{x \to x_0} f(x) = 0$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Esempio 2.10 (Disuguaglianza Trigonometrica e Limite Notevole):</b></font></mark> Per ogni $x \in ]0, \pi/2[$ vale la disuguaglianza geometrica:
$$\sin x < x < \tan x = \frac{\sin x}{\cos x}$$
Da essa seguono per $x \in ]-\pi/2, \pi/2[ \setminus \{0\}$ le stime $|\sin x| < |x|$ e $\cos x < \frac{\sin x}{x} < 1$, da cui:
$$\lim_{x \to 0} \sin x = 0, \qquad \lim_{x \to 0} \cos x = 1, \qquad \lim_{x \to 0} \frac{\sin x}{x} = 1$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Esempio 2.12 (Limiti della Potenza $x^n$ all'Infinito):</b></font></mark> Per ogni $n \in \mathbb{N}$ con $n \ge 1$:
$$\lim_{x \to +\infty} x^n = +\infty \qquad \text{e} \qquad \lim_{x \to -\infty} x^n = \begin{cases} +\infty & \text{se } n \text{ è pari} \\ -\infty & \text{se } n \text{ è dispari} \end{cases}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.13 (Prodotto di Infinitesima per Limitata):</b></font></mark> Sia $A \subset \mathbb{R}$ e sia $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Siano $f, g: A \to \mathbb{R}$ tali che $\lim_{x \to x_0} f(x) = 0$ e $g(x)$ sia limitata in un intorno di $x_0$. Allora:
$$\lim_{x \to x_0} f(x)g(x) = 0$$

### Operazioni con i Limiti in $\overline{\mathbb{R}}$ e Forme Indeterminate
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.15 (Limitatezza Unilaterale Locale):</b></font></mark> Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$ e $f: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$. Allora:
  - **(i)** Se $\ell > -\infty$, allora $f$ è *limitata inferiormente* in un intorno di $x_0$ ($\exists \lambda \in \mathbb{R} : \lambda \le f(x)$ in un intorno di $x_0$).
  - **(ii)** Se $\ell < +\infty$, allora $f$ è *limitata superiormente* in un intorno di $x_0$ ($\exists \lambda \in \mathbb{R} : f(x) \le \lambda$ in un intorno di $x_0$).

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.16 (Somma di Limiti Infiniti):</b></font></mark> Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$, e siano $f, g: A \to \mathbb{R}$ con $\lim_{x \to x_0} f(x) = \ell \in \{-\infty, +\infty\}$. Allora:
  - **(i)** Se $\ell = +\infty$ e $g$ è limitata inferiormente in un intorno di $x_0$, allora $\lim_{x \to x_0} (f + g)(x) = +\infty$.
  - **(ii)** Se $\ell = -\infty$ e $g$ è limitata superiormente in un intorno di $x_0$, allora $\lim_{x \to x_0} (f + g)(x) = -\infty$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 2.18 (Limite della Somma in $\overline{\mathbb{R}}$):</b></font></mark> Ponendo per convenzione $(+\infty) + m = +\infty$ per $m \in \mathbb{R} \cup \{+\infty\}$ e $(-\infty) + m = -\infty$ per $m \in \mathbb{R} \cup \{-\infty\}$, se $\lim_{x \to x_0} f(x) = \ell \in \overline{\mathbb{R}}$ e $\lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}}$, vale sempre:
$$\lim_{x \to x_0} (f(x) + g(x)) = \ell + m$$
**con l'esclusione** delle *forme indeterminate* $(+\infty) + (-\infty)$ e $(-\infty) + (+\infty)$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.19 (Prodotto di Limiti Infiniti e Passaggio al Reciproco):</b></font></mark> Sia $A \subset \mathbb{R}$, $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$, e siano $f, g: A \to \mathbb{R}$:
  - **(i)** Se $\lim_{x \to x_0} f(x) = +\infty$ (risp. $-\infty$) e $\lim_{x \to x_0} g(x) = m \in \overline{\mathbb{R}} \setminus \{0\}$, allora:
$$\lim_{x \to x_0} f(x)g(x) = \begin{cases} +\infty \text{ (risp. } -\infty\text{)} & \text{se } m > 0 \\ -\infty \text{ (risp. } +\infty\text{)} & \text{se } m < 0 \end{cases}$$
  - **(ii)** Se $\lim_{x \to x_0} f(x) = \pm\infty$, allora $\lim_{x \to x_0} \frac{1}{f(x)} = 0$.
  - **(iii)** Se $\lim_{x \to x_0} f(x) = 0$ e $f(x) > 0$ (risp. $f(x) < 0$) in un intorno di $x_0$, allora $\lim_{x \to x_0} \frac{1}{f(x)} = +\infty$ (risp. $-\infty$).

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 2.20 (Algebra Estesa di $\overline{\mathbb{R}}$ e Forme Indeterminate):</b></font></mark> Con le convenzioni $(\pm\infty) \cdot m = \pm\infty$ per $m > 0$, $(\pm\infty) \cdot m = \mp\infty$ per $m < 0$, $\frac{m}{\pm\infty} = 0$ per $m \in \mathbb{R}$ e $\frac{1}{0^\pm} = \pm\infty$, valgono $\lim (fg) = \ell m$ e $\lim (f/g) = \ell/m$ al di fuori delle **forme indeterminate algebriche**:
$$(+\infty) + (-\infty), \qquad (\pm\infty) \cdot 0, \qquad \frac{\pm\infty}{\pm\infty}, \qquad \frac{0}{0}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Regola del Limite di una Funzione Razionale per $x \to \pm\infty$:</b></font></mark> Sia $\frac{P(x)}{Q(x)} = \frac{a_n x^n + \dots + a_0}{b_m x^m + \dots + b_0}$ con $n, m \in \mathbb{N}^*$ e $a_n, b_m \ne 0$. Allora:
$$\lim_{x \to +\infty} \frac{P(x)}{Q(x)} = \begin{cases} \dfrac{a_n}{b_m} \cdot (+\infty) & \text{se } n > m \\[6pt] \dfrac{a_n}{b_m} & \text{se } n = m \\[6pt] 0 & \text{se } n < m \end{cases}, \qquad \lim_{x \to -\infty} \frac{P(x)}{Q(x)} = \begin{cases} \dfrac{a_n}{b_m} \cdot (+\infty) & \text{se } n > m \text{ e } n - m \text{ è pari} \\[6pt] \dfrac{a_n}{b_m} \cdot (-\infty) & \text{se } n > m \text{ e } n - m \text{ è dispari} \\[6pt] \dfrac{a_n}{b_m} & \text{se } n = m \\[6pt] 0 & \text{se } n < m \end{cases}$$


---

## Lezione 17: Limiti delle Funzioni Composte e Confronto Locale

### Limiti delle Funzioni Composte
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.1 (Sul Limite delle Funzioni Composte):</b></font></mark> Siano $A, B \subset \mathbb{R}$ insiemi non vuoti, $f: A \to \mathbb{R}$ e $g: B \to \mathbb{R}$ con $f(A) \subset B$. Siano $x_0 \in \overline{\mathbb{R}}$ di accumulazione per $A$ e $y_0 \in \overline{\mathbb{R}}$ di accumulazione per $B$. Supponiamo che:
  - **a)** $\lim_{x \to x_0} f(x) = y_0$ e $\lim_{y \to y_0} g(y) = \ell \in \overline{\mathbb{R}}$;
  - **b)** $f(x) \neq y_0$ in un intorno sferico forato di $x_0$.
  Allora:
$$\lim_{x \to x_0} g(f(x)) = \ell$$
  *Clausola di Continuità:* Se $y_0 \in B$ e la funzione esterna $g$ è continua in $y_0$ (ossia $\ell = g(y_0)$), la conclusione sussiste anche se la condizione **b)** non è verificata.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 1.2 (Regola di Sostituzione):</b></font></mark> Per calcolare $\lim_{x \to x_0} g(f(x))$, ponendo formalmente $y = f(x)$, se $f(x) \to y_0$ per $x \to x_0$ e sono verificate le ipotesi del Teorema 1.1, si ha:
$$\lim_{x \to x_0} g(f(x)) = \lim_{y \to y_0} g(y)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 1.4 (Necessità dell'Ipotesi di Non Stazionarietà):</b></font></mark> L'ipotesi $f(x) \neq y_0$ è necessaria se $g$ non è continua. Ponendo $f(x) = \lfloor x + 1/2 \rfloor$ e $g(y) = 1$ se $y=0$ e $0$ se $y \neq 0$: $\lim_{x \to 0} f(x) = 0$ e $\lim_{y \to 0} g(y) = 0$, ma in $[-1/2, 1/2[$ si ha $f(x) = 0$, da cui $g(f(x)) = 1$ e $\lim_{x \to 0} g(f(x)) = 1 \neq 0$.

### Teoria del Confronto Locale
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1.a (Trascurabilità Locale o o-piccolo):</b></font></mark> Siano $f, g: A \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Si dice che $f$ è *trascurabile rispetto a $g$* per $x \to x_0$, e si scrive $f \ll g$ o $f = o(g)$, se esiste $\sigma: A \to \mathbb{R}$ tale che in un intorno di $x_0$:
$$f(x) = \sigma(x)g(x) \quad \text{con } \lim_{x \to x_0} \sigma(x) = 0$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1.b (Stesso Ordine di Grandezza):</b></font></mark> Si dice che $f$ è *dello stesso ordine di $g$* per $x \to x_0$, e si scrive $f \asymp g$, se esiste $\sigma: A \to \mathbb{R}$ tale che in un intorno di $x_0$:
$$f(x) = \sigma(x)g(x) \quad \text{con } \lim_{x \to x_0} \sigma(x) = \ell \in \mathbb{R}^* = \mathbb{R} \setminus \{0\}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1.c (Asintoticità):</b></font></mark> Si dice che $f$ è *asintotica a $g$* per $x \to x_0$, e si scrive $f \sim g$, se esiste $\sigma: A \to \mathbb{R}$ tale che in un intorno di $x_0$:
$$f(x) = \sigma(x)g(x) \quad \text{con } \lim_{x \to x_0} \sigma(x) = 1$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.2 (Proprietà delle Relazioni di Confronto):</b></font></mark> Siano $f, g, h: A \to \mathbb{R}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Valgono le seguenti proprietà per $x \to x_0$:
  - **(i)** $f \ll f \implies f(x) = 0$ in un intorno di $x_0$.
  - **(ii)** $f \ll g \land g \ll h \implies f \ll h$ (proprietà transitiva della trascurabilità).
  - **(iii)** $\asymp$ è una relazione di equivalenza (riflessiva, simmetrica, transitiva).
  - **(iv)** $\sim$ è una relazione di equivalenza (riflessiva, simmetrica, transitiva).

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.4 (Caratterizzazione tramite Quoziente):</b></font></mark> Se $g(x) \neq 0$ per ogni $x$ in un intorno forato di $x_0$:
  - $f = o(g) \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = 0$
  - $f \asymp g \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = \ell \in \mathbb{R}^*$
  - $f \sim g \iff \lim_{x \to x_0} \frac{f(x)}{g(x)} = 1$
  - Inoltre, se $f(x) \neq 0$ localmente: $g = o(f) \iff \lim_{x \to x_0} \left|\frac{f(x)}{g(x)}\right| = +\infty$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizioni 2.6 e 2.7 (Infinitesimi, Infiniti e Ordini Relativi):</b></font></mark>
  - $f$ è *infinitesima* per $x \to x_0$ se $\lim_{x \to x_0} f(x) = 0$.
  - $f$ è un *infinito* per $x \to x_0$ se $\lim_{x \to x_0} |f(x)| = +\infty$.
  - Se $f \ll g$ ed entrambe sono infinitesime, $f$ è un *infinitesimo di ordine superiore* rispetto a $g$.
  - Se $f \ll g$ ed entrambe sono infiniti, $f$ è un *infinito di ordine inferiore* rispetto a $g$ ($g$ è di ordine superiore a $f$).

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.1 (Divergenza Rapida di $e^n/n$):</b></font></mark> Vale il limite di successione:
$$\lim_{n \to +\infty} \frac{e^n}{n} = +\infty$$

---

## Lezione 18: Gerarchie di Infiniti e Infinitesimi e Continuità (Parte I)

### Gerarchia degli Infiniti ed Infinitesimi per Funzioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.1 (Gerarchia di Infiniti ed Infinitesimi in R):</b></font></mark> Siano $a > 1$ e $\alpha > 0$. Valgono i seguenti limiti notevoli:
  - **(i)** $\lim_{x \to +\infty} \frac{a^x}{x^\alpha} = +\infty$
  - **(ii)** $\lim_{x \to -\infty} |x|^\alpha a^x = 0$
  - **(iii)** $\lim_{x \to +\infty} \frac{\log_a x}{x^\alpha} = 0$
  - **(iv)** $\lim_{x \to 0^+} x^\alpha \log_a x = 0$
  - **(v)** $\lim_{x \to +\infty} \frac{x^x}{a^x} = +\infty$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 1.2 (Catena Gerarchica per $x \to +\infty$):</b></font></mark>
$$\log_a x \ll x^\alpha \ll a^x \ll x^x \qquad (a > 1, \, \alpha > 0)$$

### Criterio del Rapporto e Gerarchia per Successioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.4 (Criterio del Rapporto per Successioni):</b></font></mark> Sia $(a_n)_{n \in \mathbb{N}}$ una successione reale a termini strettamente positivi ($a_n > 0$) tale che:
$$\lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]$$
Allora:
$$\lim_{n \to +\infty} a_n = \begin{cases} +\infty & \text{se } \ell > 1 \\ 0 & \text{se } \ell < 1 \end{cases}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.5 (Limiti Notevoli per Successioni con Fattoriali):</b></font></mark>
  - **(i)** $\lim_{n \to +\infty} \frac{n!}{a^n} = +\infty \quad (\forall a > 1)$
  - **(ii)** $\lim_{n \to +\infty} \frac{n^n}{n!} = +\infty$
  - **(iii)** $\lim_{n \to +\infty} \frac{(2n)!}{n^n} = +\infty$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 1.6 (Gerarchia Completa per Successioni a $+\infty$):</b></font></mark>
$$\log_a n \ll n^\alpha \ll a^n \ll n! \ll n^n \ll (2n)! \qquad (a > 1, \, \alpha > 0)$$

### Fondamenti delle Funzioni Continue
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1 (Funzione Continua - Definizione Topologica):</b></font></mark> Sia $f: A \subset \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in A$. Si dice che $f$ è *continua in $x_0$* se per ogni intorno $V \in \mathcal{U}(f(x_0))$ esiste un intorno $U \in \mathcal{U}(x_0)$ tale che:
$$f(U \cap A) \subset V$$
$f$ è continua in $B \subset A$ se è continua in ogni punto di $B$; è continua se lo è su tutto il dominio $A$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 2.2 (Formulazione Metrica Epsilon-Delta):</b></font></mark> La continuità in $x_0$ equivale a:
$$\forall \varepsilon > 0, \, \exists \delta > 0 : \forall x \in A, \, |x - x_0| < \delta \implies |f(x) - f(x_0)| < \varepsilon$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.3 (Continuità nei Punti Isolati e di Accumulazione):</b></font></mark> Sia $f: A \subset \mathbb{R} \to \mathbb{R}$ e $x_0 \in A$:
  - **(i)** Se $x_0$ è un punto isolato di $A$, allora $f$ è *sempre continua* in $x_0$.
  - **(ii)** Se $x_0$ è un punto di accumulazione per $A$, allora:
$$f \text{ è continua in } x_0 \iff \lim_{x \to x_0} f(x) = f(x_0)$$

### Teorema di Cesàro sulla Radice n-esima
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Di Cesàro):</b></font></mark> Sia $(a_n)_{n \in \mathbb{N}}$ una successione a termini strettamente positivi ($a_n > 0$). Se esiste $\lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]$, allora:
$$\lim_{n \to +\infty} \sqrt[n]{a_n} = \ell$$
*(Il viceversa non sussiste: la convergenza della radice non implica quella del rapporto).*

---

## Lezione 19: Funzioni Continue e Punti di Discontinuità

### Algebra delle Funzioni Continue
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.2 (Operazioni sulle Funzioni Continue):</b></font></mark> Siano $f, g: A \to \mathbb{R}$ continue in $x_0 \in A$. Allora sono continue in $x_0$:
  - **(i)** $f + g$
  - **(ii)** $f \cdot g$
  - **(iii)** $f/g$ (se $g(x) \neq 0$ per ogni $x \in A$)
  - **(iv)** $|f|$
  - **(v)** $f \vee g = \max\{f, g\}$ e $f \wedge g = \min\{f, g\}$
  - **(vi)** La restrizione $f|_B$ per ogni sottoinsieme $B \subset A$ con $x_0 \in B$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Lemma 1.3 (Rappresentazione di Massimo e Minimo):</b></font></mark> Per ogni $a, b \in \mathbb{R}$:
$$\max\{a, b\} = \frac{a + b + |a - b|}{2}, \qquad \min\{a, b\} = \frac{a + b - |a - b|}{2}$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.4 e Osservazione 1.5 (Struttura dello Spazio C(A)):</b></font></mark> L'insieme $\mathcal{C}(A) = \{f: A \to \mathbb{R} \mid f \text{ continua su } A\}$ è uno **spazio vettoriale reale**, un'**algebra reale** e un'**algebra reticolata**.

### Funzioni Lipschitziane
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.6 (Funzione Lipschitziana):</b></font></mark> Una funzione $f: A \to \mathbb{R}$ si dice *Lipschitziana* se esiste una costante $L > 0$ tale che:
$$\forall x, y \in A: \quad |f(x) - f(y)| \le L |x - y|$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.7 (Lipschitzianità Implica Continuità):</b></font></mark> Ogni funzione Lipschitziana $f: A \to \mathbb{R}$ è continua su $A$. (In particolare seno, coseno e modulo sono 1-Lipschitziani su $\mathbb{R}$).

### Composizione e Prolungamento Continuo
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.9 (Continuità delle Funzioni Composte):</b></font></mark> Siano $f: A \to B$ e $g: B \to \mathbb{R}$. Se $f$ è continua in $x_0 \in A$ e $g$ è continua in $f(x_0) \in B$, allora:
$$g \circ f \text{ è continua in } x_0$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 1.10 (Limite con Funzione Esterna Continua):</b></font></mark> Se $\lim_{x \to x_0} f(x) = y_0 \in B$ e $g$ è continua in $y_0$, allora:
$$\lim_{x \to x_0} g(f(x)) = g(y_0)$$
senza richiedere che $f(x) \neq y_0$.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.11 (Di Prolungamento per Continuità):</b></font></mark> Sia $f: A \to \mathbb{R}$ continua e sia $B \subset \mathbb{R}$ con $A \subset B \subset A \cup D_r(A)$. Se per ogni $x_0 \in B \setminus A$ esiste finito il limite $\lim_{x \to x_0} f(x)$, allora esiste un unico prolungamento continuo $\overline{f}: B \to \mathbb{R}$ tale che $\overline{f}|_A = f$, definito ponendo $\overline{f}(x) = \lim_{y \to x} f(y)$ per $x \in B \setminus A$.

### Tassonomia dei Punti di Discontinuità
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1 (Classificazione dei Punti di Discontinuità nel Dominio):</b></font></mark> Sia $f: A \to \mathbb{R}$ e $x_0 \in A$ punto di accumulazione per $A$. Se $f$ non è continua in $x_0$:
  - **(i) Discontinuità Eliminabile:** Esiste finito $\lim_{x \to x_0} f(x) = \ell \in \mathbb{R}$, ma $\ell \neq f(x_0)$.
  - **(ii) Discontinuità di Prima Specie (o di Salto):** Esistono finiti entrambi i limiti unilaterali ma sono distinti: $\lim_{x \to x_0^-} f(x) = \ell^- \ne \ell^+ = \lim_{x \to x_0^+} f(x)$. La differenza $s = \ell^+ - \ell^-$ si chiama *salto*.
  - **(iii) Discontinuità di Seconda Specie:** Almeno uno dei due limiti unilaterali non esiste oppure è infinito ($\pm\infty$).

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 2.2 (Requisito di Appartenenza al Dominio):</b></font></mark> Per definire una discontinuità in $x_0$, il punto **deve appartenere al dominio $A$**. Se $x_0 \notin A$ (es. $x_0 = 0$ per $f(x) = 1/x$), non si tratta di discontinuità bensì di punto escluso dal dominio.

---

## Lezione 20: Continuità delle Funzioni Monotone e Limiti Notevoli

### Regolarità delle Funzioni Monotone
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proprietà (Limiti Unilaterali di Funzioni Monotone):</b></font></mark> Per una funzione monotona $f: A \to \mathbb{R}$, i limiti unilaterali sinistro e destro nei punti di accumulazione interni esistono sempre finiti:
$$f(x_0^-) = \sup_{\substack{x \in A \\ x < x_0}} f(x) \le f(x_0) \le \inf_{\substack{x \in A \\ x > x_0}} f(x) = f(x_0^+)$$
Ne consegue che:
  - Una funzione monotona **non possiede mai discontinuità di seconda specie**;
  - L'insieme dei punti di discontinuità di una funzione monotona è **al più numerabile**.

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.4 (Continuità per Immagine Intervallo):</b></font></mark> Sia $f: A \to \mathbb{R}$ una funzione monotona. Se l'immagine $f(A)$ è un intervallo di $\mathbb{R}$, allora $f$ è **continua su tutto $A$**.
*(Garantisce la continuità di esponenziali, logaritmi, potenze reali e funzioni iperboliche).*

### Compendio dei Limiti Notevoli Trascendenti
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 1 (Numero di Nepero e):</b></font></mark>
$$\lim_{x \to \pm\infty} \left(1 + \frac{1}{x}\right)^x = e$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 2 (Potenza con Parametro ed Esponente Infinitesimo):</b></font></mark> Per ogni $p \in \mathbb{R}$:
$$\lim_{x \to \pm\infty} \left(1 + \frac{p}{x}\right)^x = e^p \qquad \text{e} \qquad \lim_{x \to 0} (1 + px)^{1/x} = e^p$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 3 (Limite del Logaritmo):</b></font></mark> Per ogni $a > 0, a \neq 1$:
$$\lim_{x \to 0} \frac{\log_a(1 + x)}{x} = \log_a e = \frac{1}{\ln a} \qquad \left(\text{in particolare } \lim_{x \to 0} \frac{\ln(1 + x)}{x} = 1\right)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 4 (Limite dell'Esponenziale):</b></font></mark> Per ogni $a > 0$:
$$\lim_{x \to 0} \frac{a^x - 1}{x} = \ln a \qquad \left(\text{in particolare } \lim_{x \to 0} \frac{e^x - 1}{x} = 1\right)$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 5 (Limite della Potenza Reale):</b></font></mark> Per ogni $\alpha \in \mathbb{R}$:
$$\lim_{x \to 0} \frac{(1 + x)^\alpha - 1}{x} = \alpha$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Limite Notevole 6 (Limiti Trigonometrici di Coseno e Tangente):</b></font></mark>
$$\lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2} \qquad \text{e} \qquad \lim_{x \to 0} \frac{\tan x}{x} = 1$$

- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Tavola delle Equivalenze Asintotiche per $x \to 0$:</b></font></mark>
$$\sin x \sim x, \quad \tan x \sim x, \quad 1 - \cos x \sim \frac{1}{2} x^2, \quad \ln(1 + x) \sim x, \quad e^x - 1 \sim x, \quad (1 + x)^\alpha - 1 \sim \alpha x$$


---

## Lezione 21: Teoremi di Bolzano e Proprietà Topologiche per Successioni

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.1 (Punto Aderente e Chiusura):</b></font></mark> Sia $A \subset \mathbb{R}$ e $x \in \mathbb{R}$. Il punto $x$ si dice *aderente* ad $A$ se per ogni intorno $U \in \mathcal{U}(x)$ si ha $U \cap A \neq \emptyset$. L'insieme dei punti di aderenza si indica con $\overline{A}$ ed è denominato *chiusura* o *aderenza* di $A$. Risulta $\overline{A} = A \cup D_r(A)$, dove $D_r(A)$ è l'insieme dei punti di accumulazione finiti di $A$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.5 (Insieme Chiuso):</b></font></mark> Un insieme $A \subset \mathbb{R}$ si dice *chiuso* se coincide con la propria chiusura: $A = \overline{A}$, ovvero se contiene tutti i propri punti di accumulazione al finito ($D_r(A) \subset A$).

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.6 (Proprietà di Minimo della Chiusura):</b></font></mark> L'aderenza $\overline{A}$ è un insieme chiuso ed è il più piccolo insieme chiuso contenente $A$ (cioè $\overline{\overline{A}} = \overline{A}$).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Caratterizzazione dei Limiti mediante Successioni — Teorema Ponte):</b></font></mark> Siano $f: A \to \mathbb{R}$, $\ell \in \overline{\mathbb{R}}$ e $x_0 \in \overline{\mathbb{R}}$ punto di accumulazione per $A$. Allora $\lim_{x \to x_0} f(x) = \ell$ se e solo se per ogni successione $(a_n)_{n \in \mathbb{N}}$ in $A \setminus \{x_0\}$ con $a_n \to x_0$ si ha $\lim_{n \to +\infty} f(a_n) = \ell$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.2 (Caratterizzazione della Continuità mediante Successioni):</b></font></mark> Siano $f: A \to \mathbb{R}$ e $x_0 \in A$. La funzione $f$ è continua in $x_0$ se e solo se per ogni successione $(a_n)_{n \in \mathbb{N}}$ a valori in $A$ tale che $a_n \to x_0$, si ha $f(a_n) \to f(x_0)$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.3 (Caratterizzazione Sequenziale della Chiusura):</b></font></mark> Sia $A \subset \mathbb{R}$ e $x \in \mathbb{R}$. Allora $x \in \overline{A} \iff \exists (a_n)_{n \in \mathbb{N}} \in A^{\mathbb{N}} : a_n \to x$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 2.4 (Caratterizzazione Sequenziale degli Insiemi Chiusi):</b></font></mark> Sia $A \subset \mathbb{R}$. $A$ è chiuso se e solo se per ogni successione convergente $(a_n)_{n \in \mathbb{N}}$ di elementi di $A$, il limite appartiene ad $A$ ($a_n \to x \implies x \in A$).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Degli Zeri di Bolzano):</b></font></mark> Sia $I$ un intervallo di $\mathbb{R}$ e $f: I \to \mathbb{R}$ continua. Siano $a, b \in I$ con $a < b$ tali che $f(a)f(b) < 0$. Allora esiste almeno un punto $x_0 \in ]a, b[$ tale che $f(x_0) = 0$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Osservazione 3.2 (Stima a Priori dell'Errore del Metodo di Bisezione):</b></font></mark> Al passo $n$-esimo del metodo di bisezione, l'approssimazione $c_n = (a_n + b_n)/2$ dello zero $x_0$ soddisfa $|x_0 - c_n| \le \frac{b - a}{2^{n+1}}$. Per raggiungere una tolleranza $\varepsilon > 0$, il numero minimo di iterazioni necessarie è $n = \lfloor \log_2((b-a)/\varepsilon) \rfloor + 1$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 4.1 (Forma Variazionale con Estremo Superiore):</b></font></mark> Sia $f: [a, b] \to \mathbb{R}$ continua con $f(a) < 0 < f(b)$. Allora $x_0 = \sup \{x \in [a, b] \mid f(x) < 0\} \in ]a, b[$ soddisfa $f(x_0) = 0$.

---

## Lezione 22: Valori Intermedi, Punti Fissi e Teorema di Bolzano-Weierstrass

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Indice di Picco):</b></font></mark> Data una successione reale $(a_n)_{n \in \mathbb{N}}$, un indice $n \in \mathbb{N}$ si dice *indice di picco* se per ogni $m \ge n$ si ha $a_n \ge a_m$ (il termine $a_n$ domina tutti i termini che lo seguono).

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.1 (Dei Valori Intermedi di Bolzano — 1° Forma):</b></font></mark> Sia $f: I \to \mathbb{R}$ continua su un intervallo $I \subset \mathbb{R}$. Siano $a, b \in I$ con $f(a) < f(b)$. Allora $[f(a), f(b)] \subset f(I)$. Inoltre, posti $m = \inf_I f$ e $M = \sup_I f$, risulta $]m, M[ \subset f(I)$ (la funzione assume tutti i valori intermedi).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.3 (Dei Valori Intermedi — 2° Forma Topologica):</b></font></mark> Sia $f: I \to \mathbb{R}$ continua su un intervallo $I \subset \mathbb{R}$. Allora l'immagine $f(I)$ è un intervallo di $\mathbb{R}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 1.4 (Esistenza ed Unicità della Radice $n$-esima):</b></font></mark> Per ogni $n \in \mathbb{N}^*$ e ogni $y \in \mathbb{R}^+$, esiste un unico $x \in \mathbb{R}^+$ tale che $x^n = y$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Del Punto Fisso per Intervalli Compatti):</b></font></mark> Sia $g: [a, b] \to [a, b]$ continua. Allora esiste almeno un punto $x_0 \in [a, b]$ tale che $g(x_0) = x_0$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.2 (Equivalenza tra Iniettività e Stretta Monotonia):</b></font></mark> Sia $I \subset \mathbb{R}$ un intervallo e $f: I \to \mathbb{R}$ continua. Allora $f$ è iniettiva se e solo se $f$ è strettamente monotona.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.4 (Continuità delle Funzioni Inverse):</b></font></mark> Sia $f: I \to \mathbb{R}$ continua, iniettiva e definita in un intervallo $I$. Allora la funzione inversa $f^{-1}: f(I) \to \mathbb{R}$ è continua su tutto il suo dominio $f(I)$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Di Bolzano-Weierstrass per Successioni):</b></font></mark> Da ogni successione reale limitata $(a_n)_{n \in \mathbb{N}}$ si può estrarre una sottosuccessione monotona convergente.

---

## Lezione 23: Insiemi Compatti, Teorema di Weierstrass e Successioni per Ricorrenza

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.1 (Insieme Compatto per Successioni):</b></font></mark> Un sottoinsieme $A \subset \mathbb{R}$ si dice *compatto* se da ogni successione $(a_n)_{n \in \mathbb{N}} \in A^{\mathbb{N}}$ è possibile estrarre una sottosuccessione $(a_{n_k})_{k \in \mathbb{N}}$ convergente a un elemento $x_0 \in A$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Massimo e Punto di Massimo Assoluto):</b></font></mark> Sia $f: A \to \mathbb{R}$. $f$ ammette massimo se esiste $\max f(A) \in \mathbb{R}$; in tal caso si pone $\max_A f := \max f(A)$ e ogni $x_0 \in A$ tale che $f(x_0) = \max_A f$ si dice *punto di massimo assoluto*.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Successione Massimizzante):</b></font></mark> Data $f: A \to \mathbb{R}$ con $M = \sup_{x \in A} f(x)$, una successione $(a_n)_{n \in \mathbb{N}} \in A^{\mathbb{N}}$ si dice massimizzante se $\lim_{n \to +\infty} f(a_n) = M$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Successione Definita per Ricorrenza / Iterata di Picard):</b></font></mark> Data una mappa $f: A \to A$ e $x_0 \in A$, la relazione $a_0 = x_0$, $a_{n+1} = f(a_n)$ definisce la successione delle iterate $a_n = f^{(n)}(x_0)$.

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.2 (Di Heine-Borel in $\mathbb{R}$):</b></font></mark> Sia $A \subset \mathbb{R}$. $A$ è compatto per successioni se e solo se $A$ è chiuso e limitato.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Di Weierstrass sui Massimi e Minimi):</b></font></mark> Sia $A \subset \mathbb{R}$ compatto e sia $f: A \to \mathbb{R}$ continua. Allora $f$ ammette massimo e minimo assoluti su $A$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.1 (Convergenza delle Ricorrenze a Punti Fissi):</b></font></mark> Sia $f: A \to A$ continua e sia $(a_n)$ generata da $a_{n+1} = f(a_n)$. Se $a_n \to \overline{x} \in A$, allora $\overline{x}$ è un punto fisso di $f$, ovvero $f(\overline{x}) = \overline{x}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Convergenza del Metodo di Erone):</b></font></mark> Sia $b > 0$. Scelto $a_0 > 0$, la successione $a_{n+1} = \frac{1}{2}(a_n + b/a_n)$ soddisfa $a_n \ge \sqrt{b}$ per ogni $n \ge 1$, è monotona decrescente per $n \ge 1$ e converge a $\lim_{n \to +\infty} a_n = \sqrt{b}$.

---

## Lezione 24: Serie Numeriche I - Definizioni, Proprietà e Serie Geometrica

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.1 (Serie Numerica e Somma):</b></font></mark> Data $(a_n)_{n \in \mathbb{N}}$, la serie numerica $\sum_{n=0}^{+\infty} a_n$ è la coppia costituita da $(a_n)$ e dalla successione delle somme parziali $s_n = \sum_{k=0}^n a_k$. Se esiste $\lim_{n \to +\infty} s_n \in \overline{\mathbb{R}}$, tale limite si chiama *somma della serie*.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Tassonomia del Carattere):</b></font></mark> Una serie si dice:
  - *Convergente:* se $\lim s_n = s \in \mathbb{R}$ (somma finita);
  - *Divergente:* se $\lim s_n = +\infty$ oppure $-\infty$;
  - *Indeterminata (od oscillante):* se il limite $\lim s_n$ non esiste.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Serie Geometrica):</b></font></mark> Si chiama serie geometrica la serie $\sum_{n=0}^{+\infty} q^n$ con parametro $q \in \mathbb{R}$ detto *ragione*.

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Carattere e Somma della Serie Geometrica):</b></font></mark>
$$\sum_{n=0}^{+\infty} q^n = \begin{cases} \frac{1}{1 - q} & \text{se } |q| < 1 \quad \text{(convergente)} \\ +\infty & \text{se } q \ge 1 \quad \text{(divergente a } +\infty) \\ \text{non esiste} & \text{se } q \le -1 \quad \text{(indeterminata)} \end{cases}$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Serie Telescopica di Mengoli):</b></font></mark> La serie $\sum_{n=1}^{+\infty} \frac{1}{n(n+1)}$ è convergente e la sua somma vale esattamente $1$:
$$\sum_{n=1}^{+\infty} \frac{1}{n(n+1)} = \lim_{n \to +\infty} \left(1 - \frac{1}{n+1}\right) = 1$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.1 (Linearità della Somma di Serie):</b></font></mark> Se $\sum a_n$ e $\sum b_n$ sono convergenti, allora $\sum (a_n + b_n) = \sum a_n + \sum b_n$ e per ogni $\lambda \in \mathbb{R}$, $\sum (\lambda a_n) = \lambda \sum a_n$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.2 (Condizione Necessaria di Convergenza):</b></font></mark> Se la serie $\sum a_n$ è convergente, allora il suo termine generale è infinitesimo:
$$\sum_{n=0}^{+\infty} a_n \text{ converge} \implies \lim_{n \to +\infty} a_n = 0$$
*(La condizione $a_n \to 0$ è necessaria ma NON sufficiente, come provato dalle serie divergenti $\sum 1/\sqrt{n}$ e $\sum 1/n$).*

---

## Lezione 25: Serie Numeriche II - Serie Resto, Proprietà Associativa e Criteri di Confronto

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.1 (Serie Resto di Ordine $m$):</b></font></mark> Data $\sum a_n$, per ogni $m \in \mathbb{N}$ si dice *serie resto* o *coda* di ordine $m$ la serie $R_m = \sum_{n=m+1}^{+\infty} a_n$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1 (Serie a Termini Positivi):</b></font></mark> Una serie $\sum a_n$ si dice a termini positivi se $a_n \ge 0$ per ogni $n \in \mathbb{N}$.

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.1 (Invarianza del Carattere del Resto):</b></font></mark> La serie $\sum a_n$ e la serie resto $R_m$ hanno esattamente lo stesso carattere. Se sono convergenti, il resto tende a zero: $\lim_{m \to +\infty} R_m = 0$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 1.2 (Stabilità del Carattere):</b></font></mark> Il carattere di una serie non si altera modificando, aggiungendo o eliminando un numero finito di termini.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.3 (Proprietà Associativa per Serie Regolari):</b></font></mark> Se $\sum a_n$ è regolare (convergente o divergente), associando i termini mediante parentesi in blocchi finiti disgiunti la nuova serie mantiene lo stesso carattere e la medesima somma.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.2 (Regolarità delle Serie a Termini Positivi):</b></font></mark> Ogni serie a termini positivi è **sempre regolare**: ammette sempre limite $\sum_{n=0}^{+\infty} a_n \in [0, +\infty]$, dunque è convergente o divergente a $+\infty$ (non può mai oscillare).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.3 (Divergenza della Serie Armonica di Oresme):</b></font></mark> La serie armonica $\sum_{n=1}^{+\infty} \frac{1}{n}$ è divergente positivamente a $+\infty$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Criterio del Confronto):</b></font></mark> Siano $\sum a_n$ e $\sum b_n$ a termini positivi con $a_n \le b_n$ definitivamente. Allora:
  - $\sum b_n$ convergente $\implies \sum a_n$ convergente;
  - $\sum a_n$ divergente $\implies \sum b_n$ divergente.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.2 (Criterio del Confronto Asintotico):</b></font></mark> Siano $a_n, b_n > 0$ con $\lim_{n \to +\infty} \frac{a_n}{b_n} = \ell \in [0, +\infty]$.
  - Se $\ell \in ]0, +\infty[$: $\sum a_n$ e $\sum b_n$ hanno lo stesso carattere;
  - Se $\ell = 0$: $\sum b_n$ convergente $\implies \sum a_n$ convergente;
  - Se $\ell = +\infty$: $\sum b_n$ divergente $\implies \sum a_n$ divergente.

---

## Lezione 26: Serie Numeriche III - Criteri della Radice, del Rapporto, Condensazione di Cauchy e Prodotto di Eulero

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Serie Armonica Generalizzata):</b></font></mark> Si chiama serie armonica generalizzata la serie $\sum_{n=1}^{+\infty} \frac{1}{n^\alpha}$ al variare del parametro reale $\alpha \in \mathbb{R}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Serie Condensata di Cauchy):</b></font></mark> Data la serie $\sum a_n$, si definisce serie condensata la serie $\sum_{n=0}^{+\infty} 2^n a_{2^n}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Prodotto Infinito):</b></font></mark> Data la successione $(a_k)_{k \ge 1}$ con $a_k > 0$, il prodotto infinito $\prod_{k=1}^{+\infty} a_k$ è definito dal limite della successione dei prodotti parziali $p_n = \prod_{k=1}^n a_k$.

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.1 (Criterio della Radice di Cauchy):</b></font></mark> Sia $a_n \ge 0$ e $\lim_{n \to +\infty} \sqrt[n]{a_n} = \ell \in [0, +\infty]$. Se $\ell < 1$ la serie converge; se $\ell > 1$ la serie diverge a $+\infty$; se $\ell = 1$ il criterio è inconcludente.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.2 (Criterio del Rapporto di d'Alembert):</b></font></mark> Sia $a_n > 0$ e $\lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]$. Se $\ell < 1$ la serie converge; se $\ell > 1$ la serie diverge a $+\infty$; se $\ell = 1$ il criterio è inconcludente.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.1 (Criterio di Condensazione di Cauchy):</b></font></mark> Sia $(a_n)$ decrescente e positiva ($a_n \ge a_{n+1} \ge 0$). Allora $\sum_{n=1}^{+\infty} a_n$ e $\sum_{n=0}^{+\infty} 2^n a_{2^n}$ hanno esattamente lo stesso carattere e vale:
$$\frac{1}{2} \sum_{n=0}^{+\infty} 2^n a_{2^n} \le \sum_{n=1}^{+\infty} a_n \le \sum_{n=0}^{+\infty} 2^n a_{2^n}$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.2 (Comportamento della Serie Armonica Generalizzata):</b></font></mark>
$$\sum_{n=1}^{+\infty} \frac{1}{n^\alpha} = \begin{cases} \text{Convergente} & \text{se } \alpha > 1 \\ \text{Divergente a } +\infty & \text{se } \alpha \le 1 \end{cases}$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Condizione Necessaria ed Equivalenza per Prodotti Infiniti):</b></font></mark> Se $\prod_{k=1}^{+\infty} a_k$ converge a valore non nullo, allora $a_k \to 1$. Se $a_k > 1$ per ogni $k$, allora $\prod_{k=1}^{+\infty} a_k$ e $\sum_{k=1}^{+\infty} (a_k - 1)$ hanno lo stesso carattere.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.2 (Formula del Prodotto di Eulero per la Funzione Zeta):</b></font></mark> Per ogni $x > 1$:
$$\zeta(x) = \sum_{n=1}^{+\infty} \frac{1}{n^x} = \prod_{k=1}^{+\infty} \frac{1}{1 - p_k^{-x}}$$
dove $p_k$ indica la successione dei numeri primi.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 3.3 (Divergenza della Serie dei Reciproci dei Primi):</b></font></mark> La serie dei reciproci dei numeri primi è divergente: $\sum_{k=1}^{+\infty} \frac{1}{p_k} = +\infty$.

---

## Lezione 27: Serie Numeriche IV - Criterio di Leibniz, Convergenza Assoluta e Serie Esponenziale

### Definizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 1.1 (Serie a Segno Alterno):</b></font></mark> Sia $a_n \ge 0$. Una serie del tipo $\sum_{n=0}^{+\infty} (-1)^n a_n = a_0 - a_1 + a_2 - a_3 + \dots$ si dice *serie a segno alterno*.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione 2.1 (Convergenza Assoluta):</b></font></mark> Una serie numerica reale $\sum a_n$ si dice *assolutamente convergente* se converge la serie dei moduli $\sum |a_n| < +\infty$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Parti Positiva e Negativa):</b></font></mark> Per ogni termine $a_n$ si pongono $a_n^+ = \max(a_n, 0) \ge 0$ e $a_n^- = \max(-a_n, 0) \ge 0$, da cui $a_n = a_n^+ - a_n^-$ e $|a_n| = a_n^+ + a_n^-$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Prodotto Convolutivo alla Cauchy):</b></font></mark> Date $\sum a_n$ e $\sum b_n$, si dice serie prodotto alla Cauchy la serie $\sum c_n$ con $c_n = \sum_{k=0}^n a_k b_{n-k}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Definizione (Funzione Esponenziale per Serie):</b></font></mark> Per ogni $x \in \mathbb{R}$, la funzione esponenziale reale è definita analiticamente da $\exp(x) = \sum_{n=0}^{+\infty} \frac{x^n}{n!}$.

### Teoremi e Proposizioni
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 1.2 (Criterio di Leibniz):</b></font></mark> Sia $a_n \ge 0$. Se (a) $\lim a_n = 0$ e (b) $a_{n+1} \le a_n$ per ogni $n \in \mathbb{N}$, allora $\sum_{n=0}^{+\infty} (-1)^n a_n$ converge a una somma $s \in \mathbb{R}$. Inoltre $s_{2n+1} \le s \le s_{2n}$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proprietà (Stima del Resto di Troncamento di Leibniz):</b></font></mark> L'errore commesso arrestando la somma al termine $n$-esimo è maggiorato dal modulo del primo termine trascurato:
$$|s - s_n| \le a_{n+1}$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 2.2 (La Convergenza Assoluta Implica la Semplice):</b></font></mark> Se $\sum |a_n| < +\infty$, allora $\sum a_n$ converge semplicemente in $\mathbb{R}$ e vale $|\sum_{n=0}^{+\infty} a_n| \le \sum_{n=0}^{+\infty} |a_n|$. Inoltre $\sum |a_n| < +\infty \iff (\sum a_n^+ < +\infty \land \sum a_n^- < +\infty)$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.1 (Stima del Resto del Numero di Nepero):</b></font></mark> Per ogni $n \in \mathbb{N}^*$, vale la stima stretta:
$$0 < e - \sum_{k=0}^n \frac{1}{k!} < \frac{1}{n \cdot n!}$$
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Corollario 3.2 (Irrazionalità del Numero $e$):</b></font></mark> Il numero $e$ di Nepero è irrazionale ($e \in \mathbb{R} \setminus \mathbb{Q}$).
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.3 (Prodotto alla Cauchy per Serie Positive):</b></font></mark> Siano $\sum a_n$ e $\sum b_n$ a termini positivi. Posto $c_n = \sum_{k=0}^n a_k b_{n-k}$, si ha $\sum_{n=0}^{+\infty} c_n = (\sum_{n=0}^{+\infty} a_n)(\sum_{n=0}^{+\infty} b_n)$.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema 3.4 (Di Mertens sul Prodotto di Serie Assolutamente Convergenti):</b></font></mark> Se $\sum a_n$ e $\sum b_n$ sono assolutamente convergenti, la loro serie prodotto alla Cauchy $\sum c_n$ è assolutamente convergente e la sua somma è uguale al prodotto delle somme.
- <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Proposizione 3.5 (Proprietà della Funzione Esponenziale):</b></font></mark> La serie $\sum_{n=0}^{+\infty} \frac{x^n}{n!}$ converge assolutamente per ogni $x \in \mathbb{R}$ e verifica:
  1. $\exp(x+y) = \exp(x)\exp(y)$ per ogni $x, y \in \mathbb{R}$;
  2. $\exp(x) > 0$ e $\exp(-x) = 1/\exp(x)$;
  3. $\exp(1) = e$;
  4. $\exp$ è strettamente crescente, con $\lim_{x \to +\infty} \exp(x) = +\infty$ e $\lim_{x \to -\infty} \exp(x) = 0$.
