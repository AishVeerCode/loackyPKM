---
status: permanent
type: lecture
area: education
related: ["[[Lezione 7 - Insiemi Numerici N Z e Q]]", "[[Lezione 9 - Funzioni Reali ed Estremi]]"]
aliases: ["Lezione 8", "Fondamenti di Matematica Lezione 8"]
source: Lezione 8.pdf
title: "Lezione 8 - Densita Sommatorie e Teorema del Binomio"
date: '2026-10-07'
updated: 2026-10-07T17:50
tags: [education/university, education/matematica, education/lecture]
summary: "Proprieta archimedea, densita dei numeri razionali e irrazionali, calcolo delle sommatorie notevoli, combinatoria, triangolo di Tartaglia e teorema del binomio."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]

# Lezione 8 - Densità, Sommatorie e Teorema del Binomio

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>La proprietà archimedea</b></font></mark> discende direttamente dall'Assioma di Completezza di Dedekind e stabilisce che l'insieme dei numeri naturali non è superiormente limitato in $\mathbb{R}$, costituendo la pietra angolare per dimostrare la densità dei numeri razionali $\mathbb{Q}$ e degli irrazionali $\mathbb{R} \setminus \mathbb{Q}$. La lezione sviluppa inoltre l'algebra delle sommatorie finite ricavando le formule chiuse per la somma geometrica, la somma di Gauss dei primi naturali, la somma dei numeri dispari e dei quadrati, per poi culminare nel calcolo combinatorio (permutazioni, disposizioni, combinazioni), nelle proprietà del triangolo di Tartaglia e nella dimostrazione per induzione del Teorema del Binomio di Newton.

## Proprietà Archimedea e Densità di $\mathbb{Q}$ ed $\mathbb{R} \setminus \mathbb{Q}$

### Teorema della Proprietà di Archimede
**Teorema:** L'insieme dei numeri naturali $\mathbb{N}$ non è limitato superiormente in $\mathbb{R}$.

*Dimostrazione (per assurdo):*
Supponiamo che $\mathbb{N}$ sia limitato superiormente in $\mathbb{R}$. Poiché $\mathbb{N} \neq \emptyset$, per l'Assioma di Completezza (trattato in [[Lezione 5 - i Numeri Reali e Assioma di Completezza]]) esiste:
$$S := \sup \mathbb{N} \in \mathbb{R}$$
Poiché $-1 < 0$, si ha $S - 1 < S$. Per la caratterizzazione operativa dell'estremo superiore, deve esistere un elemento $n \in \mathbb{N}$ tale che:
$$n > S - 1$$
Aggiungendo $1$ ad ambo i membri:
$$n + 1 > S$$
Tuttavia, essendo $\mathbb{N}$ un insieme induttivo (come stabilito in [[Lezione 6 - Valore Assoluto e Numeri Naturali]]), $n + 1 \in \mathbb{N}$. Si è così trovato un numero naturale strettamente maggiore di $S$, contraddicendo il fatto che $S$ sia un maggiorante di $\mathbb{N}$.

### Formulazioni Geometriche e Campi Archimedei
Dalla proprietà di Archimede derivano forme equivalenti di costante impiego analitico:
1. **Superamento di ogni soglia reale:**
   $$\forall x \in \mathbb{R}, \; \exists n \in \mathbb{N}^* : n > x$$
2. **Formulazione geometrica del sottomultiplo:**
   $$\forall a \in \mathbb{R}, \forall u \in \mathbb{R} \text{ con } u > 0, \; \exists n \in \mathbb{N} : n u > a$$
   *(Dimostrazione: basta porre $x = a/u$ e applicare il punto 1).*
   Geometricamente, se $u$ rappresenta la lunghezza di un segmento assunto come unità di misura, un opportuno multiplo intero di $u$ supera qualsiasi lunghezza finita $a$.
3. Un campo ordinato che soddisfa tale condizione si dice <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>campo archimedeo</b></font></mark>. Sia $\mathbb{R}$ sia $\mathbb{Q}$ sono campi archimedei (se $q = m/n \in \mathbb{Q}^+$, allora $m + 1 > m \ge m/n$).

### Applicazioni al Calcolo di $\sup$ e $\inf$
La proprietà archimedea consente di risolvere le disequazioni di verifica $\varepsilon$:

1. **Insieme $A = \left\{\dfrac{2n+2}{2n+1} \;\middle|\; n \in \mathbb{N}\right\}$:**
   Riscrivendo l'elemento generico:
   $$\frac{2n+2}{2n+1} = 1 + \frac{1}{2n+1}$$
   - Per $n = 0$, l'elemento vale $2$, ed essendo $\frac{1}{2n+1} \le 1$, si ha $\max A = 2$.
   - Mostriamo che $\inf A = 1$. Chiaramente $1 + \frac{1}{2n+1} > 1$, quindi $1$ è un minorante. Sia ora $\varepsilon > 0$; dobbiamo trovare $n \in \mathbb{N}$ tale che:
     $$1 + \frac{1}{2n+1} < 1 + \varepsilon \iff \frac{1}{2n+1} < \varepsilon \iff 2n + 1 > \frac{1}{\varepsilon} \iff n > \frac{1}{2}\left(\frac{1}{\varepsilon} - 1\right)$$
     L'esistenza di tale $n$ è garantita dalla proprietà archimedea. Quindi $\inf A = 1$.

2. **Insieme $A = \left\{\dfrac{3n}{2n+1} \;\middle|\; n \in \mathbb{N}\right\}$:**
   Per $n \in \mathbb{N}^*$:
   $$\frac{3n}{2n+1} = \frac{3}{2 + 1/n} < \frac{3}{2}$$
   Quindi $3/2$ è un maggiorante. Fissato un candidato $b < 3/2$, la condizione $\frac{3n}{2n+1} > b$ equivale a:
   $$3n > b(2n + 1) \iff (3 - 2b)n > b \iff n > \frac{b}{3 - 2b}$$
   Poiché $3 - 2b > 0$, la proprietà di Archimede assicura l'esistenza di tale $n$. Dunque $\sup A = 3/2$.

3. **Insieme $A = \left\{(-1)^n + \dfrac{1}{2^n} \;\middle|\; n \in \mathbb{N}\right\}$:**
   - Se $n$ è pari: $(-1)^n + 2^{-n} = 1 + 2^{-n} \le 2$ (per $n=0$ vale $2$, quindi $\max A = 2$).
   - Se $n$ è dispari: $(-1)^n + 2^{-n} = -1 + 2^{-n} > -1$.
   Per provare che $\inf A = -1$, risolviamo per $n$ dispari:
   $$-1 + \frac{1}{2^n} < -1 + \varepsilon \iff \frac{1}{2^n} < \varepsilon \iff 2^n > \frac{1}{\varepsilon}$$
   Ricordando il corollario di Bernoulli ($2^n > n$), basta scegliere un dispari $n > 1/\varepsilon$ (archimedeo) per soddisfare la disuguaglianza. Ne segue $\inf A = -1$.

### Illimitatezza di $\mathbb{Z}$
**Proposizione:** $\mathbb{Z}$ è illimitato sia inferiormente sia superiormente in $\mathbb{R}$.
*Dimostrazione:* Poiché $\mathbb{N} \subset \mathbb{Z}$ non è limitato superiormente per Archimede, $\mathbb{Z}$ non è limitato superiormente. Inoltre, poiché $-\mathbb{N} \subset \mathbb{Z}$ e $-\mathbb{N}$ non ha minoranti (se avesse minorante $m$, $-m$ sarebbe maggiorante per $\mathbb{N}$), $\mathbb{Z}$ è illimitato inferiormente.

### Teorema della Densità dei Razionali in $\mathbb{R}$
**Teorema:** Dati due qualsiasi numeri reali $a, b \in \mathbb{R}$ con $a < b$, esiste un numero razionale $x \in \mathbb{Q}$ tale che:
$$a < x < b$$

*Dimostrazione:*
Vogliamo trovare $m \in \mathbb{Z}$ e $n \in \mathbb{N}^*$ tali che $a < \frac{m}{n} < b$, ovvero:
$$na < m < nb$$
Affinché esista un intero $m$ compreso tra i due reali $na$ e $nb$, è sufficiente che la loro distanza sia strettamente maggiore di 1:
$$nb - na > 1 \iff n(b - a) > 1 \iff n > \frac{1}{b - a}$$
Poiché $b - a > 0$, la proprietà archimedea assicura l'esistenza di un tale $n \in \mathbb{N}^*$.
Fissato questo $n$, consideriamo l'insieme:
$$A := \{k \in \mathbb{Z} \mid k > na\}$$
- $A \neq \emptyset$ perché $\mathbb{Z}$ non è superiormente limitato.
- $A$ è limitato inferiormente da $na$ in $\mathbb{Z}$.
Per il teorema del buon ordinamento su $\mathbb{Z}$ (visto in [[Lezione 7 - Insiemi Numerici N Z e Q]]), $A$ ammette elemento minimo: $m := \min A$.
Di conseguenza:
1. $m \in A \implies na < m$.
2. $m - 1 \notin A \implies m - 1 \le na \implies m \le na + 1$.
Poiché $n(b - a) > 1$, abbiamo $na + 1 < nb$. Dunque:
$$na < m \le na + 1 < nb \implies a < \frac{m}{n} < b$$
Il numero $x := \frac{m}{n} \in \mathbb{Q}$ soddisfa la tesi.

### Densità degli Irrazionali
**Corollario:** L'insieme $\mathbb{R} \setminus \mathbb{Q}$ è denso in $\mathbb{R}$: per ogni $a < b$ esiste $x \in \mathbb{R} \setminus \mathbb{Q}$ tale che $a < x < b$.
*Dimostrazione:* Fissiamo un numero irrazionale positivo, ad esempio $\alpha = \sqrt{2} > 0$.
Per la densità di $\mathbb{Q}$, scegliamo $q \in \mathbb{Q}$ con $a < q < b$.
Per la proprietà archimedea, scegliamo $n \in \mathbb{N}^*$ sufficientemente grande in modo che:
$$n > \frac{\alpha}{b - q} \iff \frac{\alpha}{n} < b - q \iff q + \frac{\alpha}{n} < b$$
Poniamo $x := q + \frac{\alpha}{n}$. Chiaramente $a < q < x < b$. Inoltre $x$ è irrazionale: se fosse razionale, allora $\alpha = n(x - q)$ sarebbe razionale, contraddicendo l'irrazionalità di $\sqrt{2}$.

## Teoria delle Sommatorie e Somme Notevoli

### Definizione per Ricorrenza e Proprietà Operative
Data una successione reale $(a_n)_{n \in \mathbb{N}}$, la <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>sommatoria</b></font></mark> $\sum_{k=0}^n a_k$ è definita ricorsivamente:
$$\sum_{k=0}^0 a_k := a_0, \qquad \sum_{k=0}^{n+1} a_k := \left(\sum_{k=0}^n a_k\right) + a_{n+1}$$

Proprietà algebriche fondamentali:
1. **Linearità:** $\sum_{k=0}^n (a_k + b_k) = \sum_{k=0}^n a_k + \sum_{k=0}^n b_k$ e $\sum_{k=0}^n \lambda a_k = \lambda \sum_{k=0}^n a_k$.
2. **Scomposizione:** per ogni $m < n$: $\sum_{k=0}^n a_k = \sum_{k=0}^m a_k + \sum_{k=m+1}^n a_k$.
3. **Traslazione d'indici:** $\sum_{k=0}^n a_k = \sum_{k=m}^{n+m} a_{k-m}$.
4. **Riflessione d'indici:** $\sum_{k=0}^n a_k = \sum_{k=0}^n a_{n-k}$.

### Somma di Segni Alterni
**Proposizione:** Per ogni $n \in \mathbb{N}$:
$$\sum_{k=0}^n (-1)^k = \begin{cases} 1 & \text{se } n \text{ è pari} \\ 0 & \text{se } n \text{ è dispari} \end{cases}$$
*Dimostrazione:* Sia $s_n := \sum_{k=0}^n (-1)^k$. Moltiplicando per $-1$:
$$-s_n = \sum_{k=0}^n (-1)^{k+1} = \sum_{k=1}^{n+1} (-1)^k = -1 + \sum_{k=0}^{n+1} (-1)^k = -1 + s_{n+1}$$
Da cui $s_{n+1} = 1 - s_n$. Sostituendo $s_n = 1 - s_{n-1}$ si ha $s_{n+1} = s_{n-1}$.
Poiché $s_0 = (-1)^0 = 1$ e $s_1 = 1 - 1 = 0$, tutti i termini di indice pari valgono 1 e quelli dispari 0.

### Somma della Successione Geometrica
**Proposizione:** Sia $q \in \mathbb{R}$. Per ogni $n \in \mathbb{N}$:
$$\sum_{k=0}^n q^k = \begin{cases} n + 1 & \text{se } q = 1 \\ \dfrac{1 - q^{n+1}}{1 - q} & \text{se } q \neq 1 \end{cases}$$

*Dimostrazione (metodo di Gauss):*
Posto $s_n := \sum_{k=0}^n q^k = 1 + q + q^2 + \dots + q^n$, moltiplichiamo per $q$:
$$q s_n = q + q^2 + \dots + q^n + q^{n+1}$$
Sottraendo membro a membro:
$$s_n - q s_n = 1 - q^{n+1} \iff s_n(1 - q) = 1 - q^{n+1}$$
Poiché $q \neq 1$, dividendo per $1 - q$ si ottiene $s_n = \frac{1 - q^{n+1}}{1 - q}$.

### Somma dei Primi Naturali (Numeri Triangolari)
**Proposizione:** Per ogni $n \ge 1$:
$$\sum_{k=1}^n k = \frac{n(n + 1)}{2}$$

*Dimostrazione (Gauss per inversione):*
Scriviamo la somma in ordine crescente e decrescente:
$$\begin{aligned}
S &= 1 &+& 2 &+& \dots &+& (n - 1) &+& n \\
S &= n &+& (n - 1) &+& \dots &+& 2 &+& 1
\end{aligned}$$
Sommando termine a termine per colonna:
$$2S = \underbrace{(n + 1) + (n + 1) + \dots + (n + 1)}_{n \text{ volte}} = n(n + 1) \implies S = \frac{n(n + 1)}{2}$$

I numeri $T_n := \frac{n(n+1)}{2}$ sono detti <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>numeri triangolari</b></font></mark> ($T_0=0, T_1=1, T_2=3, T_3=6, T_4=10, T_5=15$).
*Interpretazione grafica:* Disponendo $n^2$ punti in una griglia quadrata, la diagonale contiene $n$ punti. I punti rimanenti ($n^2 - n$) si ripartiscono equamente nei due triangoli: $\frac{n^2 - n}{2} + n = \frac{n(n+1)}{2}$.

### Somma dei Primi Numeri Dispari
**Corollario:** Per ogni $n \ge 1$:
$$\sum_{k=1}^n (2k - 1) = n^2$$
*Dimostrazione:* Per linearità della sommatoria:
$$\sum_{k=1}^n (2k - 1) = 2 \sum_{k=1}^n k - \sum_{k=1}^n 1 = 2 \frac{n(n + 1)}{2} - n = n^2 + n - n = n^2$$
Geometricamente, aggiungere il $k$-esimo numero dispari equivale ad ampliare un quadrato $(k-1) \times (k-1)$ aggiungendo un orlo ad "L" (gnomone) di $2k-1$ punti, formando un quadrato $k \times k$.

### Somma dei Quadrati dei Primi Naturali
**Proposizione:** Per ogni $n \ge 1$:
$$\sum_{k=1}^n k^2 = \frac{n(n + 1)(2n + 1)}{6}$$

*Dimostrazione (sviluppo telescopico del cubo):*
Consideriamo l'identità $(1 + k)^3 = 1 + 3k + 3k^2 + k^3$. Sommando per $k$ da $0$ ad $n$:
$$\sum_{k=0}^n (1 + k)^3 = \sum_{k=0}^n \left(1 + 3k + 3k^2 + k^3\right) = (n + 1) + 3 \sum_{k=1}^n k + 3 \sum_{k=1}^n k^2 + \sum_{k=1}^n k^3$$
D'altra parte, traslando gli indici a sinistra:
$$\sum_{k=0}^n (1 + k)^3 = \sum_{k=1}^{n+1} k^3 = \sum_{k=1}^n k^3 + (n + 1)^3$$
Uguagliando le due espressioni ed elidendo il termine comune $\sum_{k=1}^n k^3$:
$$(n + 1)^3 = (n + 1) + 3 \sum_{k=1}^n k + 3 \sum_{k=1}^n k^2$$
Isolando la somma dei quadrati e sostituendo $\sum_{k=1}^n k = \frac{n(n+1)}{2}$:
$$3 \sum_{k=1}^n k^2 = (n + 1)^3 - (n + 1) - 3 \frac{n(n + 1)}{2} = (n + 1) \left[(n + 1)^2 - 1 - \frac{3n}{2}\right]$$
Sviluppando il polinomio tra parentesi:
$$(n^2 + 2n) - \frac{3n}{2} = n\left(n + 2 - \frac{3}{2}\right) = n\left(n + \frac{1}{2}\right) = \frac{n(2n + 1)}{2}$$
Moltiplicando per $(n + 1)$ e dividendo per $3$:
$$\sum_{k=1}^n k^2 = \frac{n(n + 1)(2n + 1)}{6}$$

## Calcolo Combinatorio e Coefficienti Binomiali

### Fattoriale e Modelli di Conteggio
Si definisce per ricorrenza il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>fattoriale</b></font></mark> di $n \in \mathbb{N}$:
$$0! := 1, \qquad (n + 1)! := (n + 1) \cdot n!$$
Esplicitamente, per $n \ge 1$: $n! = n \cdot (n - 1) \cdots 2 \cdot 1$.

- **Permutazioni:** Dato un insieme $A$ di $n$ elementi, il numero di funzioni biettive $f: A \to A$ (permutazioni) è pari a $n!$.
- **Disposizioni semplici:** Il numero di funzioni iniettive da un insieme di $k$ elementi a uno di $n$ elementi ($k \le n$) è:
  $$D_{n, k} = n(n - 1)(n - 2)\cdots(n - k + 1) = \frac{n!}{(n - k)!}$$
- **Combinazioni (Sottoinsiemi di cardinalità $k$):** Se non consideriamo l'ordine dei $k$ elementi scelti, ogni configurazione viene contata $k!$ volte. Dunque la cardinalità della famiglia dei sottoinsiemi di $k$ elementi $\mathcal{P}_k(\{1, \dots, n\})$ è:
  $$\binom{n}{k} := \frac{n!}{k!(n - k)!}$$

La quantità $\binom{n}{k}$ si legge "$n$ su $k$" ed è il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>coefficiente binomiale</b></font></mark>.

### Proprietà dei Coefficienti Binomiali
Per ogni $n, k \in \mathbb{N}$ con $k \le n$:
1. **Valori estremi ed elementari:**
   $$\binom{n}{0} = \binom{n}{n} = 1, \qquad \binom{n}{1} = n$$
2. **Simmetria speculare:**
   $$\binom{n}{k} = \binom{n}{n - k}$$
   *(Scegliere $k$ elementi da includere equivale a scegliere $n-k$ elementi da escludere).*
3. **Formula ricorsiva di Pascal/Tartaglia:** Se $1 \le k \le n$:
   $$\binom{n + 1}{k} = \binom{n}{k - 1} + \binom{n}{k}$$

*Dimostrazione algebrica:*
$$\begin{aligned}
\binom{n}{k - 1} + \binom{n}{k} &= \frac{n!}{(k - 1)!(n - k + 1)!} + \frac{n!}{k!(n - k)!} \\
&= \frac{n! \cdot k + n! \cdot (n - k + 1)}{k!(n - k + 1)!} \\
&= \frac{n!(k + n - k + 1)}{k!(n + 1 - k)!} \\
&= \frac{n!(n + 1)}{k!(n + 1 - k)!} = \frac{(n + 1)!}{k!(n + 1 - k)!} = \binom{n + 1}{k}
\end{aligned}$$

### Triangolo di Tartaglia (Pascal)
La regola ricorsiva permette di costruire i coefficienti disponendoli su una griglia triangolare, in cui ogni elemento interno è la somma dei due elementi soprastanti:

| $n$ | Coefficienti $\binom{n}{k}$ per $k = 0, 1, \dots, n$ |
| :--- | :--- |
| **0** | $1$ |
| **1** | $1 \quad 1$ |
| **2** | $1 \quad 2 \quad 1$ |
| **3** | $1 \quad 3 \quad 3 \quad 1$ |
| **4** | $1 \quad 4 \quad 6 \quad 4 \quad 1$ |
| **5** | $1 \quad 5 \quad 10 \quad 10 \quad 5 \quad 1$ |

## Il Teorema del Binomio di Newton

I coefficienti binomiali forniscono i moltiplicatori algebrici nello sviluppo della potenza di un binomio.

### Teorema del Binomio
**Teorema:** Per ogni coppia di numeri reali $a, b \in \mathbb{R}$ e per ogni $n \in \mathbb{N}$:
$$(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$$
con la convenzione $a^0 = b^0 = 1$ anche qualora uno dei termini sia nullo.

*Dimostrazione (per induzione su $n$):*
- **Base ($n = 0$):** $(a + b)^0 = 1$ e $\sum_{k=0}^0 \binom{0}{k} a^{0-k} b^k = \binom{0}{0} a^0 b^0 = 1$. L'uguaglianza è verificata.
- **Passo induttivo:** Supponiamo vera la formula per $n$:
  $$(a + b)^{n+1} = (a + b)(a + b)^n = a(a + b)^n + b(a + b)^n$$
  Sostituendo l'ipotesi induttiva:
  $$(a + b)^{n+1} = a \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k + b \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k = \sum_{k=0}^n \binom{n}{k} a^{n+1-k} b^k + \sum_{k=0}^n \binom{n}{k} a^{n-k} b^{k+1}$$
  Isoliamo il primo termine ($k=0$) della prima somma e l'ultimo ($k=n$) della seconda somma:
  $$= \binom{n}{0} a^{n+1} + \sum_{k=1}^n \binom{n}{k} a^{n+1-k} b^k + \sum_{k=0}^{n-1} \binom{n}{k} a^{n-k} b^{k+1} + \binom{n}{n} b^{n+1}$$
  Effettuando una traslazione di indice sulla seconda sommatoria ($j = k + 1$):
  $$\sum_{k=0}^{n-1} \binom{n}{k} a^{n-k} b^{k+1} = \sum_{j=1}^n \binom{n}{j-1} a^{n-(j-1)} b^j = \sum_{k=1}^n \binom{n}{k-1} a^{n+1-k} b^k$$
  Raggruppando le due sommatorie intermedie:
  $$= a^{n+1} + \sum_{k=1}^n \left[ \binom{n}{k} + \binom{n}{k-1} \right] a^{n+1-k} b^k + b^{n+1}$$
  Applicando la formula ricorsiva di Tartaglia $\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$:
  $$= \binom{n+1}{0} a^{n+1} + \sum_{k=1}^n \binom{n+1}{k} a^{n+1-k} b^k + \binom{n+1}{n+1} b^{n+1} = \sum_{k=0}^{n+1} \binom{n+1}{k} a^{n+1-k} b^k$$
Il teorema è dimostrato per ogni $n \in \mathbb{N}$.

### Cardinalità delle Parti
**Corollario:** Per ogni $n \in \mathbb{N}$:
$$\sum_{k=0}^n \binom{n}{k} = 2^n$$
*Dimostrazione:* Basta porre $a = 1$ e $b = 1$ nel Teorema del Binomio:
$$(1 + 1)^n = 2^n = \sum_{k=0}^n \binom{n}{k} 1^{n-k} 1^k = \sum_{k=0}^n \binom{n}{k}$$
Poiché ogni sottoinsieme di un insieme di $n$ elementi ha cardinalità $k \in \{0, \dots, n\}$, la somma dei coefficienti rappresenta esattamente la cardinalità dell'insieme delle parti $\mathcal{P}(A)$, confermando che $|\mathcal{P}(A)| = 2^{|A|}$.
