---
status: permanent
type: lecture
area: education
related: ["[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]", "[[Lecture 04 - The Characterization of the Real Numbers]]", "[[Lecture 07 - Convergent Sequences of Real Numbers]]", "[[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]"]
aliases: ["Lezione 3", "Fondamenti di Matematica Lezione 3"]
source: Lezione 3.pdf
title: "Lezione 3 - Relazioni e Funzioni I"
date: '2026-10-01'
updated: 2026-10-07T19:30
tags: [education/university, education/matematica, education/lecture]
summary: "Definizione insiemistica di coppie ordinate di Kuratowski, prodotto cartesiano, relazioni binarie, funzioni come terne, immagine e controimmagine."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 3 - Relazioni e Funzioni I]]

# Lezione 3 - Relazioni e Funzioni I

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La nozione di funzione</b></font></mark> viene fondata rigorosamente all'interno della teoria assiomatica degli insiemi introdotta in [[Lezione 2 - Teoria Assiomatica degli Insiemi]]. Partendo dalla definizione di coppia ordinata secondo Kuratowski e dalla costruzione del prodotto cartesiano, la lezione definisce le relazioni binarie e formalizza la funzione come terna ordinata composta da dominio, codominio e relazione funzionale univoca, analizzando dettagliatamente il comportamento algebrico dell'immagine diretta e della controimmagine.

## Coppie Ordinate e Definizione di Kuratowski
Nell'algebra degli insiemi la coppia non ordinata $\{x, y\}$ non distingue la posizione dei suoi costituenti: $\{x, y\} = \{y, x\}$. Per introdurre sistemi di coordinate, corrispondenze e grafici è indispensabile un costrutto in cui l'ordine sia informativo: $(x, y) \neq (y, x)$ per ogni $x \neq y$.

### Definizione di Kuratowski (1921)
Siano $x$ e $y$ due insiemi. Si definisce la <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>coppia ordinata</b></font></mark> di prima coordinata $x$ e seconda coordinata $y$ come l'insieme:
$$(x, y) := \{\{x\}, \{x, y\}\}$$

La genialità di questa costruzione risiede nel fatto che la prima coordinata $x$ è isolata nel singoletto $\{x\}$, mentre l'insieme $\{x, y\}$ specifica entrambi i termini, preservando l'asimmetria strutturale.

### Proprietà Caratteristica delle Coppie Ordinate
**Proposizione:** Siano $x, y, a, b$ insiemi. Allora:
$$(x, y) = (a, b) \iff x = a \land y = b$$

*Dimostrazione:*
L'implicazione $(\impliedby)$ è banale per sostituzione diretta.
Dimostriamo l'implicazione $(\implies)$: $\{\{x\}, \{x, y\}\} = \{\{a\}, \{a, b\}\}$.
1. **Caso $x = y$:**
   In questo caso la coppia si riduce a $(x, x) = \{\{x\}, \{x, x\}\} = \{\{x\}, \{x\}\} = \{\{x\}\}$, che è un singoletto contenente un singoletto. Poiché $(a, b) = (x, x)$, anche $(a, b)$ deve essere un singoletto, il che implica $\{a\} = \{a, b\} = \{x\}$, da cui segue immediatamente $a = b = x = y$.
2. **Caso $x \neq y$:**
   Qui $(x, y)$ contiene esattamente due elementi distinti: il singoletto $\{x\}$ e la coppia $\{x, y\}$. Uguagliando a $(a, b)$, anche quest'ultimo deve avere due elementi distinti con $a \neq b$. L'unico elemento di cardinalità 1 nell'uguaglianza deve coincidere, quindi necessariamente $\{x\} = \{a\}$, da cui $x = a$. Di conseguenza deve valere anche $\{x, y\} = \{a, b\} = \{x, b\}$, e poiché $y \in \{x, y\}$ e $y \neq x$, deve necessariamente risultare $y = b$.

## Prodotto Cartesiano

### Costruzione Assiomatica
Siano $A$ e $B$ due insiemi. Vogliamo definire l'insieme di tutte le coppie ordinate con primo elemento in $A$ e secondo in $B$.
Notiamo che se $x \in A$ e $y \in B$, allora $x, y \in A \cup B$.
Di conseguenza $\{x\} \subseteq A \cup B$ e $\{x, y\} \subseteq A \cup B$, ossia:
$$\{x\}, \{x, y\} \in \mathcal{P}(A \cup B)$$
Ne segue che la coppia $(x, y) = \{\{x\}, \{x, y\}\}$ è un sottoinsieme di $\mathcal{P}(A \cup B)$, e quindi:
$$(x, y) \in \mathcal{P}(\mathcal{P}(A \cup B))$$

Applicando l'assioma di specificazione di ZF, possiamo definire formalmente il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>prodotto cartesiano</b></font></mark> come:
$$A \times B := \{z \in \mathcal{P}(\mathcal{P}(A \cup B)) \mid (\exists x \in A)(\exists y \in B)(z = (x, y))\}$$

Con notazione standard più snella scriveremo:
$$A \times B = \{(x, y) \mid x \in A \land y \in B\}$$

Esempi:
- Discreto: Se $A = \{a, b, c\}$ e $B = \{d, e\}$, allora:
  $$A \times B = \{(a, d), (a, e), (b, d), (b, e), (c, d), (c, e)\}$$
- Continuo: Se $A = [1, 4]$ e $B = [2, 3]$, il prodotto $A \times B$ rappresenta un rettangolo compatto nel piano reale $\mathbb{R}^2 = \mathbb{R} \times \mathbb{R}$.

## Relazioni e Corrispondenze
Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>relazione binaria</b></font></mark> tra due insiemi $A$ e $B$ è un qualsiasi sottoinsieme $R$ del loro prodotto cartesiano:
$$R \subseteq A \times B$$

Se $(x, y) \in R$, si dice che $x$ è in relazione con $y$ secondo $R$, denotato con $x \xrightarrow{R} y$ oppure con la notazione infissa $xRy$. Quando $A = B$, $R \subseteq A \times A$ si definisce relazione binaria su $A$.

Il **dominio della relazione** $R$ è l'insieme degli elementi di $A$ che ammettono almeno un corrispondente in $B$:
$$\text{dom}(R) := \{x \in A \mid \exists y \in B : (x, y) \in R\} \subseteq A$$

Esempi di relazioni:
- *Relazione genitoriale:* Su $A = \text{persone viventi}$, $xRy \iff x \text{ è genitore di } y$. Il dominio $\text{dom}(R)$ è il sottoinsieme proprio di $A$ costituito da coloro che hanno generato figli.
- *Grafi orientati:* Un grafo orientato è una coppia $G = (V, E)$, dove $V$ è l'insieme dei vertici e la relazione di adiacenza $E \subseteq V \times V$ individua gli archi orientati (frecce tra nodi).

## Definizione Assiomatica di Funzione
Intuitivamente, una funzione associa a ogni input un unico output. Nella teoria formale degli insiemi, le funzioni non sono entità a sé stanti, ma particolari terne ordinate di insiemi.

Posta la terna ordinata $(x, y, z) := ((x, y), z)$:
Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>funzione</b></font></mark> (o applicazione) di $A$ in $B$ è una terna:
$$f = (A, B, R)$$
dove $R \subseteq A \times B$ è una relazione funzionale che rispetta la condizione:
$$(\forall x \in A)(\exists! y \in B)((x, y) \in R)$$

Tale condizione universale si decompone in due requisiti inderogabili:
1. **Esistenza (Totalità sul dominio):**
   $$(\forall x \in A)(\exists y \in B)((x, y) \in R) \iff \text{dom}(R) = A$$
2. **Unicità (Univocità del valore):**
   $$(\forall x \in A)(\forall y_1, y_2 \in B)\left(((x, y_1) \in R \land (x, y_2) \in R) \implies y_1 = y_2\right)$$

L'unico elemento $y \in B$ tale che $(x, y) \in R$ si indica con $f(x)$ e si definisce **immagine** di $x$ mediante $f$.
La scrittura canonica è:
$$f: A \to B, \quad x \mapsto f(x)$$
- $A$ è detto **dominio** (insieme di partenza).
- $B$ è detto **codominio** (insieme di arrivo).
- L'insieme di tutte le possibili funzioni da $A$ a $B$ si indica con $B^A$.

### Grafico di una Funzione
La relazione funzionale $R$ coincide con il <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>grafico</b></font></mark> della funzione $f$, indicato con $G_f$:
$$G_f = \{(x, f(x)) \in A \times B \mid x \in A\}$$
Una relazione geometrica nel piano cartesiano rappresenta una funzione se e solo se ogni retta verticale passante per un punto del dominio $x \in A$ interseca il grafico esattamente in un punto.

### Funzioni Notevoli
1. **Funzione Identità:** Dato un insieme $A$, la funzione $i_A: A \to A$ definita da $i_A(x) = x$ per ogni $x \in A$ è detta funzione identità. Formalmente $i_A = (A, A, \Delta_A)$, dove $\Delta_A = \{(x, x) \mid x \in A\}$ è la diagonale di $A$.
2. **Iniezione (o immersione) canonica:** Sia $X \subseteq A$. La funzione $j_X: X \to A$ definita da $j_X(x) = x$ per ogni $x \in X$ immerge il sottoinsieme nel sovrainsieme.
3. **Dominio naturale (massimale):** Quando una funzione reale viene introdotta unicamente attraverso la sua espressione analitica (es. $f(x) = \sqrt{x^2 - 1}$), si assume convenzionalmente che il dominio sia il più ampio sottoinsieme di $\mathbb{R}$ in cui l'espressione risulta ben definita.

## Immagine Diretta e Controimmagine
Sia data un'applicazione $f: A \to B$.

1. **Immagine Diretta:** Sia $X \subseteq A$. L'immagine di $X$ mediante $f$ è l'insieme dei valori assunti dalla funzione sugli elementi di $X$:
   $$f(X) := \{y \in B \mid \exists x \in X : f(x) = y\} = \{f(x) \in B \mid x \in X\}$$
   L'insieme $f(A) \subseteq B$ è detto **immagine della funzione $f$**, spesso denotato con $\text{Im}(f)$.

2. **Controimmagine (o Immagine Inversa):** Sia $Y \subseteq B$. La controimmagine di $Y$ mediante $f$ è l'insieme di tutti gli elementi del dominio che mappano all'interno di $Y$:
   $$f^{-1}(Y) := \{x \in A \mid f(x) \in Y\}$$

### Esempio Esplicativo
Siano $A = \{1, 2, 3\}$, $B = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$ e la legge $f(x) = x^2 + 1$.
- Se $X = \{1, 2\}$, allora $f(1) = 2$ e $f(2) = 5$, per cui:
  $$f(X) = \{2, 5\}$$
- Se $Y = \{5, 6, 7, 8, 9, 10\}$, calcoliamo quali elementi di $A$ hanno immagine in $Y$:
  $f(1) = 2 \notin Y$, $f(2) = 5 \in Y$, $f(3) = 10 \in Y$, per cui:
  $$f^{-1}(Y) = \{2, 3\}$$

### Proprietà Algebriche di Immagine e Controimmagine
Siano $X_1, X_2 \subseteq A$ e $Y_1, Y_2 \subseteq B$:

- **Monotonia:**
  $$X_1 \subseteq X_2 \implies f(X_1) \subseteq f(X_2)$$
  $$Y_1 \subseteq Y_2 \implies f^{-1}(Y_1) \subseteq f^{-1}(Y_2)$$
- **Comportamento rispetto all'unione:**
  $$f(X_1 \cup X_2) = f(X_1) \cup f(X_2)$$
  $$f^{-1}(Y_1 \cup Y_2) = f^{-1}(Y_1) \cup f^{-1}(Y_2)$$
- **Comportamento rispetto all'intersezione (Asimmetria fondamentale):**
  $$f(X_1 \cap X_2) \subseteq f(X_1) \cap f(X_2)$$
  *Attenzione:* L'inclusione inversa per l'immagine diretta non vale in generale! Se due elementi distinti $x_1 \neq x_2$ possiedono la stessa immagine $y = f(x_1) = f(x_2)$, posti $X_1 = \{x_1\}$ e $X_2 = \{x_2\}$ si ha $X_1 \cap X_2 = \emptyset \implies f(X_1 \cap X_2) = \emptyset$, mentre $f(X_1) \cap f(X_2) = \{y\}$.
  Al contrario, per la controimmagine sussiste l'uguaglianza perfetta:
  $$f^{-1}(Y_1 \cap Y_2) = f^{-1}(Y_1) \cap f^{-1}(Y_2)$$
- **Composizione diretta/inversa:**
  $$X \subseteq f^{-1}(f(X)) \quad \text{e} \quad f(f^{-1}(Y)) \subseteq Y$$

## Restrizioni e Famiglie

### Restrizione di una Funzione
Sia $f: A \to B$ e sia $X \subseteq A$. La <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>restrizione</b></font></mark> di $f$ ad $X$, indicata con $f|_X: X \to B$, è la funzione definita restringendo il dominio ad $X$:
$$f|_X(x) = f(x) \quad \forall x \in X$$
In forma di terna: $f|_X = (X, B, R|_X)$, dove $R|_X = \{(x, y) \in R \mid x \in X\}$.

### Famiglie Indicizzate di Elementi e di Parti
- **Famiglia di elementi:** Una funzione $a: I \to A$, dove $I$ è un insieme d'indici, viene comunemente chiamata famiglia di elementi di $A$ e denotata con $(a_i)_{i \in I}$, indicando il valore $a(i)$ con il pedice $a_i$.
- **Famiglia di parti:** Una funzione $F: I \to \mathcal{P}(A)$ è detta famiglia di parti di $A$, denotata con $(F_i)_{i \in I}$. L'unione e l'intersezione generalizzata della famiglia assumono la forma:
  $$\bigcup_{i \in I} F_i = \{x \in A \mid (\exists i \in I)(x \in F_i)\}$$
  $$\bigcap_{i \in I} F_i = \{x \in A \mid (\forall i \in I)(x \in F_i)\}$$

---

## Integrazione Analisi 1 & Real Analysis: Relazioni Strutturali, Continuità Topologica e Successioni

In **Analisi Matematica 1** e nella trattazione di [[Lecture 04 - The Characterization of the Real Numbers]], [[Lecture 07 - Convergent Sequences of Real Numbers]] e [[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]], i concetti di relazione binaria e di funzione costituiscono l'infrastruttura formale con cui si costruiscono gli insiemi numerici e si formalizzano le nozioni di limite e continuità.

### 1. Relazioni di Equivalenza e Costruzione Rigorosa di $\mathbb{Q}$ ed $\mathbb{R}$
Una relazione binaria $\sim$ su un insieme $X$ è detta di **equivalenza** se è riflessiva ($x \sim x$), simmetrica ($x \sim y \implies y \sim x$) e transitiva ($x \sim y \land y \sim z \implies x \sim z$). L'insieme quoziente $X / \sim$ partiziona $X$ in classi disgiunte:
1. **Costruzione dei Numeri Razionali $\mathbb{Q}$:**
   Sul prodotto cartesiano $\mathbb{Z} \times \mathbb{N}^*$ si definisce la relazione:
   $$(m, n) \sim (p, q) \iff mq = np$$
   Ogni frazione $\frac{m}{n}$ è la classe di equivalenza $[(m, n)]_\sim$ di tutte le coppie che rappresentano lo stesso rapporto.
2. **Costruzione di Cauchy dei Numeri Reali $\mathbb{R}$ (da [[Lecture 10 - Completeness of Real Numbers and Infinite Series]]):**
   Sia $\mathcal{C}$ lo spazio di tutte le successioni di Cauchy a valori in $\mathbb{Q}$. Si definisce l'equivalenza:
   $$(x_n) \sim (y_n) \iff \lim_{n \to \infty} |x_n - y_n| = 0$$
   Il campo reale $\mathbb{R}$ è canonicamente isomorfo all'insieme quoziente $\mathcal{C} / \sim$.

### 2. Relazioni d'Ordine Totale su $\mathbb{R}$ e Tricotomia
Una relazione $\le$ è un **ordine parziale** se è riflessiva, antisimmetrica e transitiva. Si dice **ordine totale** (o lineare) se per ogni coppia vale la tricotomia: $x < y \lor x = y \lor x > y$.
- L'ordinamento su $\mathbb{R}$ è totale, consentendo la partizione di intervalli e la nozione di estremo superiore ed inferiore (trattata in [[Lecture 04 - The Characterization of the Real Numbers]]).
- Al contrario, lo spazio funzionale $\mathbb{R}^A$ (o il campo complesso $\mathbb{C}$) ammette unicamente un ordinamento parziale puntuale: due funzioni i cui grafici si incrociano non sono confrontabili.

### 3. La Controimmagine come Definizione Topologica della Continuità
Nell'algebra delle funzioni, mentre l'immagine diretta $f$ distrugge parzialmente la struttura booleana ($f(X_1 \cap X_2) \neq f(X_1) \cap f(X_2)$ in assenza di iniettività), la **controimmagine preserva rigorosamente tutte le operazioni**:
$$f^{-1}(Y_1 \cup Y_2) = f^{-1}(Y_1) \cup f^{-1}(Y_2)$$
$$f^{-1}(Y_1 \cap Y_2) = f^{-1}(Y_1) \cap f^{-1}(Y_2)$$
$$f^{-1}(B \setminus Y) = A \setminus f^{-1}(Y)$$

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Caratterizzazione Topologica della Continuità (da [[Lecture 14 - Limits of Functions in Terms of Sequences and Continuity]]):</b></font></mark>
Una funzione $f: \mathbb{R} \to \mathbb{R}$ è continua su $\mathbb{R}$ se e solo se **la controimmagine di ogni insieme aperto è un insieme aperto**:
$$\forall V \subseteq \mathbb{R} \text{ aperto} \implies f^{-1}(V) \text{ è aperto in } \mathbb{R}$$

*Dimostrazione dell'equivalenza con la definizione $\varepsilon-\delta$:*
- $(\implies)$ Sia $V$ aperto e $x_0 \in f^{-1}(V)$, ovvero $f(x_0) \in V$. Poiché $V$ è aperto, esiste un intorno aperto $]f(x_0) - \varepsilon, f(x_0) + \varepsilon[ \subseteq V$. Per la continuità $\varepsilon-\delta$ in $x_0$, esiste $\delta > 0$ tale che se $|x - x_0| < \delta$, allora $|f(x) - f(x_0)| < \varepsilon$. Dunque $]x_0 - \delta, x_0 + \delta[ \subseteq f^{-1}(V)$, provando che $f^{-1}(V)$ è aperto.
- $(\impliedby)$ Dato $\varepsilon > 0$, l'intervallo $V = ]f(x_0) - \varepsilon, f(x_0) + \varepsilon[$ è aperto. La sua controimmagine $f^{-1}(V)$ è aperta e contiene $x_0$, dunque contiene un intorno aperto $]x_0 - \delta, x_0 + \delta[$, riottenendo la condizione metrica $\varepsilon-\delta$.

### 4. Le Successioni come Funzioni da $\mathbb{N}$ in $\mathbb{R}$
In Analisi 1, una successione reale non è una lista intuitiva di valori, ma formalmente un'applicazione:
$$a: \mathbb{N} \to \mathbb{R}, \qquad n \mapsto a_n$$
L'insieme di indici è $I = \mathbb{N}$. Una **sottosuccessione** (introdotta in [[Lecture 09 - Limsup, Liminf, and the Bolzano-Weierstrass Theorem]]) è la composizione $a \circ \sigma$ con una funzione d'indici strettamente crescente $\sigma: \mathbb{N} \to \mathbb{N}$ ($\sigma(k) = n_k$ con $n_1 < n_2 < \dots$).

