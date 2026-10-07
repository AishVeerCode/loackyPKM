---
status: permanent
type: lecture
area: education
related: ["[[Lezione 3 - Relazioni e Funzioni I]]", "[[Lezione 5 - i Numeri Reali e Assioma di Completezza]]", "[[Lecture 02 - Cantor's Theory of Cardinality]]", "[[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]]", "[[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]]"]
aliases: ["Lezione 4", "Fondamenti di Matematica Lezione 4"]
source: Lezione 4.pdf
title: "Lezione 4 - Funzioni II Proprieta e Invertibilita"
date: '2026-10-01'
updated: 2026-10-07T19:30
tags: [education/university, education/matematica, education/lecture]
summary: "Studio sistematico di iniettività, suriettività, bigettività, composizione funzionale, teorema di invertibilità, simmetria del grafico e isometrie."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 4 - Funzioni II Proprieta e Invertibilita]]

# Lezione 4 - Funzioni II Proprieta e Invertibilita

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'analisi qualitativa delle funzioni</b></font></mark> si concentra sulle proprietà globali di iniettività, suriettività e bigettività, ponendole in relazione diretta con la teoria dei problemi inversi e la risolubilità dell'equazione $f(x) = y$. La lezione approfondisce l'algebra della composizione funzionale, stabilisce il teorema fondamentale di invertibilità con la dimostrazione di esistenza e unicità della funzione inversa $f^{-1}$, ne analizza la simmetria geometrica e formalizza l'inversione delle isometrie e delle funzioni composte.

## Funzioni Iniettive, Suriettive e Bigettive
Sia data un'applicazione $f: A \to B$, definita secondo i canoni insiemistici introdotti in [[Lezione 3 - Relazioni e Funzioni I]].

### 1. Funzione Iniettiva (o Ingettiva)
Una funzione $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>iniettiva</b></font></mark> se elementi distinti del dominio hanno sempre immagini distinte nel codominio:
$$(\forall x_1, x_2 \in A)(x_1 \neq x_2 \implies f(x_1) \neq f(x_2))$$

Per la legge della contronominale (vista in [[Lezione 1 - Logica delle Proposizioni e dei Predicati]]), l'iniettività equivale a:
$$(\forall x_1, x_2 \in A)(f(x_1) = f(x_2) \implies x_1 = x_2)$$

In termini algebrici e operativi:
$$\forall y \in B \text{ esiste } \mathbf{al\ più\ un} \text{ elemento } x \in A \text{ tale che } f(x) = y$$
Geometricamente, nel piano cartesiano una funzione reale è iniettiva se e solo se qualunque retta orizzontale $y = c$ interseca il grafico $G_f$ in **al più un punto**.

### 2. Funzione Suriettiva (o Surgettiva)
Una funzione $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>suriettiva</b></font></mark> se ogni elemento del codominio è raggiunto da almeno un elemento del dominio:
$$(\forall y \in B)(\exists x \in A)(f(x) = y) \iff f(A) = B$$

In termini algebrici e operativi:
$$\forall y \in B \text{ esiste } \mathbf{almeno\ un} \text{ elemento } x \in A \text{ tale che } f(x) = y$$
Geometricamente, una funzione reale è suriettiva se e solo se qualunque retta orizzontale associata a un punto del codominio $y \in B$ interseca il grafico in **almeno un punto**.

### 3. Funzione Bigettiva (o Biiettiva, Corrispondenza Biunivoca)
Una funzione $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>bigettiva</b></font></mark> se è contemporaneamente iniettiva e suriettiva:
$$(\forall y \in B)(\exists! x \in A)(f(x) = y)$$
Ogni elemento del codominio possiede **esattamente un'unica** controimmagine nel dominio.

## Il Legame con i Problemi Inversi
Molti problemi scientifici ed ingegneristici si formulano come la risoluzione di un'equazione del tipo:
$$f(x) = y, \quad y \in B$$
in cui $y$ rappresenta il dato misurato (output) e $x \in A$ è la grandezza incognita da determinare (input). Questo schema prende il nome di <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>problema inverso</b></font></mark>.

La corretta formulazione matematica (secondo Hadamard) richiede:
- **Esistenza della soluzione:** Garantita se e solo se $f$ è **suriettiva**.
- **Unicità della soluzione:** Garantita se e solo se $f$ è **iniettiva**.
- **Ben posizione (Well-posedness):** L'equazione ammette una e una sola soluzione per qualsiasi dato $y \in B$ se e solo se $f$ è **bigettiva**.

### Studio Comparativo di Esempi in $\mathbb{R}$
Analizziamo il comportamento dell'equazione $f(x) = y$ per diverse leggi analitiche:

1. **Caso Né Iniettiva Né Suriettiva:**
   $$f: \mathbb{R} \to \mathbb{R}, \quad f(x) = x^2 + 1$$
   Risolvendo l'equazione $x^2 + 1 = y \iff x^2 = y - 1$:
   - Se $y < 1$: l'equazione non ammette soluzioni reali ($\implies$ non suriettiva).
   - Se $y = 1$: ammette l'unica soluzione $x = 0$.
   - Se $y > 1$: ammette due soluzioni distinte $x = \pm \sqrt{y - 1}$ ($\implies$ non iniettiva).

2. **Caso Iniettiva ma Non Suriettiva:**
   $$f: \mathbb{R}_+ \to \mathbb{R}, \quad f(x) = \sqrt{x} + 1 \quad (\text{dove } \mathbb{R}_+ = [0, +\infty))$$
   - Se $y < 1$: nessuna soluzione reale.
   - Se $y \ge 1$: ammette l'unica soluzione $x = (y - 1)^2 \ge 0$.
   Dunque $f$ è iniettiva (al più una soluzione), ma non suriettiva.

3. **Caso Suriettiva ma Non Iniettiva:**
   $$f: \mathbb{R} \to \mathbb{R}, \quad f(x) = x^3 - x$$
   L'equazione $x^3 - x = y$ è un polinomio di terzo grado a coefficienti reali. Poiché $\lim_{x \to \pm \infty} f(x) = \pm \infty$ ed $f$ è continua, l'equazione ammette sempre almeno una soluzione reale per ogni $y \in \mathbb{R}$ ($\implies$ suriettiva).
   Studiando la derivata prima $f'(x) = 3x^2 - 1$:
   - Punti stazionari: $x = \pm 1/\sqrt{3}$.
   - Massimo locale: $y_{\max} = f(-1/\sqrt{3}) = 2 / (3\sqrt{3})$.
   - Minimo locale: $y_{\min} = f(1/\sqrt{3}) = -2 / (3\sqrt{3})$.
   Di conseguenza:
   - Se $y < y_{\min}$ oppure $y > y_{\max}$: 1 sola soluzione reale.
   - Se $y = y_{\min}$ oppure $y = y_{\max}$: 2 soluzioni distinte.
   - Se $y_{\min} < y < y_{\max}$: 3 soluzioni reali distinte ($\implies$ non iniettiva).

### Proprietà di Immagine e Controimmagine con Proprietà Funzionali
Riprendendo le inclusioni di composizione viste nella lezione precedente:
- Se $f: A \to B$ è **iniettiva**, allora per ogni $X \subseteq A$:
  $$f^{-1}(f(X)) = X$$
- Se $f: A \to B$ è **suriettiva**, allora per ogni $Y \subseteq B$:
  $$f(f^{-1}(Y)) = Y$$

## Composizione di Funzioni

### Definizione
Siano $f: A \to B$ e $g: B \to C$ due applicazioni in cui il codominio di $f$ coincide con il dominio di $g$. La <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>funzione composta</b></font></mark> di $f$ e $g$, indicata con $g \circ f: A \to C$, è definita da:
$$(g \circ f)(x) := g(f(x)) \quad \forall x \in A$$

*Rilassamento del dominio:* La condizione di perfetta coincidenza tra codominio di $f$ e dominio di $g$ può essere rilassata: affinché $g \circ f$ sia ben definita è sufficiente che l'immagine di $f$ sia contenuta nel dominio di $g$:
$$f(A) \subseteq \text{dom}(g)$$
Ad esempio, se $f: \mathbb{R} \to \mathbb{R}$ con $f(x) = x^2 + 1$ e $g: \mathbb{R}_+ \to \mathbb{R}$ con $g(x) = \sqrt{x}$, poiché $f(\mathbb{R}) = [1, +\infty) \subset \mathbb{R}_+$, la composta $(g \circ f)(x) = \sqrt{x^2 + 1}$ è perfettamente valida su tutto $\mathbb{R}$.

### Proprietà della Composizione
1. **Associatività:** Date $f: A \to B$, $g: B \to C$ e $h: C \to D$:
   $$h \circ (g \circ f) = (h \circ g) \circ f$$
2. **Elemento Neutro:** Le funzioni identità si comportano come unità moltiplicative:
   $$i_B \circ f = f \quad \text{e} \quad f \circ i_A = f$$
3. **Non Commutatività Generale:** In generale $g \circ f \neq f \circ g$.
   *Esempio:* Siano $f(x) = \sin x$ e $g(x) = x^2$ su $\mathbb{R}$:
   $$(g \circ f)(x) = g(\sin x) = (\sin x)^2 = \sin^2 x$$
   $$(f \circ g)(x) = f(x^2) = \sin(x^2)$$
   Le due espressioni identificano funzioni radicalmente differenti.

## Il Teorema di Invertibilità

### Enunciato Fondamentale
**Teorema:** Sia data una funzione $f: A \to B$. Le seguenti affermazioni sono logicamente equivalenti:
1. $f$ è **bigettiva**.
2. $f$ è **invertibile**, ossia esiste una funzione $g: B \to A$ tale che:
   $$g \circ f = i_A \quad \text{e} \quad f \circ g = i_B$$
   il che equivale alle identità:
   $$\forall x \in A: g(f(x)) = x \quad \text{e} \quad \forall y \in B: f(g(y)) = y$$

Inoltre, tale funzione $g$ è **unica**, prende il nome di <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>funzione inversa</b></font></mark> di $f$ e si denota con $f^{-1}: B \to A$.

### Dimostrazione
- **$(1 \implies 2)$:**
  Poiché $f$ è bigettiva, per ogni $y \in B$ l'equazione $f(x) = y$ ammette un'unica soluzione in $A$. Definiamo la funzione $g: B \to A$ ponendo per ogni $y \in B$:
  $$g(y) := \text{l'unica soluzione dell'equazione } f(x) = y$$
  Dalla definizione segue immediatamente che:
  $$f(x) = y \iff x = g(y)$$
  Applicando $f$ ad ambo i membri: $f(g(y)) = y$, dunque $f \circ g = i_B$.
  Applicando $g$ a $y = f(x)$: $g(f(x)) = x$, dunque $g \circ f = i_A$.

- **$(2 \implies 1)$:**
  Supponiamo che esista $g: B \to A$ con $g(f(x)) = x$ e $f(g(y)) = y$.
  - *Suriettività:* Per ogni $y \in B$, posto $x = g(y) \in A$, si ha $f(x) = f(g(y)) = y$. Dunque ogni $y$ ammette controimmagine, provando la suriettività.
  - *Iniettività:* Siano $x_1, x_2 \in A$ tali che $f(x_1) = f(x_2)$. Applicando $g$:
    $$g(f(x_1)) = g(f(x_2)) \implies x_1 = x_2$$
    dunque $f$ è iniettiva.
  Essendo iniettiva e suriettiva, $f$ è bigettiva.

- **Unicità dell'inversa:**
  Se esistesse un'altra funzione $h: B \to A$ soddisfacente le stesse condizioni ($h \circ f = i_A$ e $f \circ h = i_B$), sfruttando l'associatività:
  $$h = h \circ i_B = h \circ (f \circ g) = (h \circ f) \circ g = i_A \circ g = g$$
  L'inversa è pertanto univocamente determinata.

### Significato Geometrico e Simmetria del Grafico
Ricordando che il grafico di $f$ è dato da $G_f = \{(x, y) \in A \times B \mid y = f(x)\}$:
$$(x, y) \in G_f \iff y = f(x) \iff x = f^{-1}(y) \iff (y, x) \in G_{f^{-1}}$$
Geometricamente, il grafico di $f^{-1}$ si ottiene <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>riflettendo simmetricamente il grafico di $f$ rispetto alla bisettrice del primo e terzo quadrante</b></font></mark> ($y = x$).

### Esempio di Calcolo dell'Inversa
Consideriamo $f: \mathbb{R} \to \mathbb{R}$ definita da $f(x) = x^3 + 7$.
Per determinare l'espressione analitica di $f^{-1}$, si esplicita la variabile $x$ in funzione di $y$:
$$x^3 + 7 = y \iff x^3 = y - 7 \iff x = \sqrt[3]{y - 7}$$
Poiché per ogni $y \in \mathbb{R}$ la radice cubica esiste ed è unica, $f$ è bigettiva e l'inversa è:
$$f^{-1}(y) = \sqrt[3]{y - 7}$$

## Applicazioni Notevoli e Risultati Ulteriori

### Isometrie del Piano Euclideo
Sia $\Pi$ il piano euclideo e $d(P, Q)$ la distanza metrica ordinaria tra punti. Un'applicazione $T: \Pi \to \Pi$ si definisce **isometria** se preserva rigorosamente le distanze:
$$\forall P, Q \in \Pi: d(T(P), T(Q)) = d(P, Q)$$

- **Iniettività:** Siano $P, Q \in \Pi$ tali che $T(P) = T(Q)$. Ne segue $d(T(P), T(Q)) = 0$, da cui per la proprietà isometrica $d(P, Q) = 0 \implies P = Q$.
- **Suriettività:** Si dimostra che ogni isometria del piano è anche suriettiva, e quindi **bigettiva**. La sua inversa $T^{-1}$ è anch'essa un'isometria.
Le isometrie modellano formalmente i *movimenti rigidi* nello spazio: traslazioni, rotazioni e riflessioni assiali.

### Inversa della Composizione di Funzioni
**Teorema:** Siano $f: A \to B$ e $g: B \to C$ due funzioni bigettive. Allora la loro composta $g \circ f: A \to C$ è bigettiva e la sua inversa soddisfa:
$$(g \circ f)^{-1} = f^{-1} \circ g^{-1}$$

*Dimostrazione:*
Applicando la definizione di inversa due volte consecutive:
$$z = (g \circ f)(x) = g(f(x)) \iff f(x) = g^{-1}(z) \iff x = f^{-1}(g^{-1}(z)) = (f^{-1} \circ g^{-1})(z)$$
L'ordine delle funzioni nell'inversione viene rigorosamente scambiato (analogo a togliersi prima la scarpa e poi la calza quando ci si veste).

### Invertibilità sull'Immagine
Se una funzione $f: A \to B$ è **iniettiva** ma non suriettiva, essa non ammette un'inversa globale su tutto $B$. Tuttavia, restringendo il codominio all'immagine effettiva $f(A) \subseteq B$, l'applicazione diventa bigettiva.
Si definisce l'inversa sull'immagine:
$$f^{-1}: f(A) \to A, \quad f^{-1}(y) = x \iff f(x) = y$$
la quale soddisfa le relazioni:
$$f^{-1} \circ f = i_A \quad \text{e} \quad f \circ f^{-1} = j_{f(A)}$$
dove $j_{f(A)}: f(A) \to B$ è l'immersione canonica di $f(A)$ in $B$.

---

## Integrazione Analisi 1 & Real Analysis: Monotonia, Continuità e Derivabilità della Funzione Inversa

In **Analisi Matematica 1** e nelle lezioni [[Lecture 02 - Cantor's Theory of Cardinality]], [[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]] e [[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]], l'invertibilità delle funzioni reali costituisce uno dei capitoli più ricchi di teoremi operativi per il calcolo differenziale e per la teoria della cardinalità.

### 1. Monotonia Stretta come Criterio Operativo di Iniettività
Negli esercizi d'esame di Analisi 1, verificare l'iniettività mediante la definizione algebrica $f(x_1) = f(x_2) \implies x_1 = x_2$ è spesso proibitivo per funzioni trascendenti complesse. Si ricorre al legame fondamentale tra ordine e iniettività:

- **Proposizione:** Sia $f: I \to \mathbb{R}$ definita su un intervallo $I \subseteq \mathbb{R}$. Se $f$ è **strettamente monotona** (strettamente crescente o strettamente decrescente), allora $f$ è **iniettiva** su $I$.
  *Dimostrazione:* Siano $x_1, x_2 \in I$ con $x_1 \neq x_2$. Poiché l'ordine su $\mathbb{R}$ è totale, si ha $x_1 < x_2$ oppure $x_2 < x_1$. Se $f$ è strettamente crescente, $x_1 < x_2 \implies f(x_1) < f(x_2)$, da cui $f(x_1) \neq f(x_2)$.
- **Criterio Differenziale (da [[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]]):** Se $f$ è derivabile su $I$ e la sua derivata prima è strettamente positiva ($f'(x) > 0$) quasi ovunque su $I$ (senza annullarsi su sottointervalli), per il Teorema del Valor Medio di Lagrange $f$ è strettamente crescente e dunque **globalmente iniettiva e invertibile sull'immagine**.

### 2. Teorema di Continuità della Funzione Inversa (da [[Lecture 16 - Extreme Value Theorem and Bolzano's Intermediate Value Theorem]])
All'esame orale, una domanda teorica classica è: *Se una funzione continua è invertibile, la sua inversa è automaticamente continua?*
La risposta è affermativa purché il dominio sia un **intervallo**:

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema della Funzione Inversa Continua:</b></font></mark>
Sia $I \subseteq \mathbb{R}$ un intervallo e sia $f: I \to \mathbb{R}$ continua e strettamente monotona. Allora:
1. L'immagine $J = f(I)$ è un intervallo (in virtù del Teorema dei Valori Intermedi di Bolzano - IVT).
2. L'applicazione $f: I \to J$ è una bigezione.
3. La funzione inversa $f^{-1}: J \to I$ è **continua** su tutto $J$ e possiede la **stessa monotonia** di $f$.

> [!TIP] Rilevanza per le Funzioni Trascendenti
> Questo teorema garantisce a priori la continuità di tutte le funzioni inverse standard del calcolo:
> - $\ln: ]0, +\infty[ \to \mathbb{R}$ come inversa di $\exp(x)$
> - $\arcsin: [-1, 1] \to [-\pi/2, \pi/2]$ come inversa di $\sin|_{[-\pi/2, \pi/2]}$
> - $\arctan: \mathbb{R} \to ]-\pi/2, \pi/2[$ come inversa di $\tan|_{]-\pi/2, \pi/2[}$
> - $\sqrt[n]{x}$ su $[0, +\infty[$ come inversa delle potenze pari $x^n$.

### 3. Teorema di Derivabilità della Funzione Inversa (da [[Lecture 19 - Differentiation Rules, Rolle's and Mean Value Theorem]])
Se $f$ è differenziabile, la pendenza della retta tangente al grafico di $f^{-1}$ si ottiene reciprocando la derivata di $f$:

**Teorema:** Sia $f: I \to J$ invertibile e continua, derivabile nel punto $x_0 \in I$. Se $f'(x_0) \neq 0$, allora $f^{-1}$ è derivabile nel punto corrispondente $y_0 = f(x_0) \in J$ e vale:
$$(f^{-1})'(y_0) = \frac{1}{f'(x_0)} = \frac{1}{f'(f^{-1}(y_0))}$$

*Esempio d'esame (Derivata dell'Arcotangente):*
Posto $y = \tan x$ per $x \in ]-\pi/2, \pi/2[$, si ha $x = \arctan y$. Poiché $(\tan x)' = 1 + \tan^2 x$:
$$(\arctan)'(y) = \frac{1}{\tan'(x)} = \frac{1}{1 + \tan^2 x} = \frac{1}{1 + y^2}$$

### 4. Biezioni e la Teoria della Cardinalità di Cantor (da [[Lecture 02 - Cantor's Theory of Cardinality]])
Nella visione di Georg Cantor, le funzioni bigettive diventano il metro universale per confrontare la "dimensione" degli insiemi infiniti:
- Due insiemi $A$ e $B$ hanno la stessa **cardinalità** (o sono equipotenti, $A \sim B$) se e solo se esiste una bigezione $f: A \to B$.
- Un insieme è **infinito numerabile** se ammette una bigezione con $\mathbb{N}$ ($A \sim \mathbb{N}$).
- L'esistenza di una bigezione esplicita tra $\mathbb{R}$ e l'intervallo limitato $]-1, 1[$ (ad esempio tramite l'omeomorfismo $f(x) = \frac{x}{\sqrt{1 + x^2}}$ con inversa $f^{-1}(y) = \frac{y}{\sqrt{1 - y^2}}$) dimostra che la retta reale infinita ha la stessa identica cardinalità di un segmento compresso.

