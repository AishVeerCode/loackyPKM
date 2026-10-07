---
status: permanent
type: lecture
area: education
related: ["[[Lezione 6 - Valore Assoluto e Numeri Naturali]]", "[[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]", "[[Lecture 02 - Cantor's Theory of Cardinality]]", "[[Lecture 06 - The Uncountability of the Real Numbers]]", "[[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]]"]
aliases: ["Lezione 7", "Fondamenti di Matematica Lezione 7", "N, Z e Q"]
source: Lezione 7.pdf
title: "Lezione 7 - Insiemi Numerici N Z e Q"
date: '2026-10-07'
updated: 2026-10-07T19:30
tags: [education/university, education/matematica, education/lecture]
summary: "Buon ordinamento di N, divisione euclidea, ricorrenza, disuguaglianza di Bernoulli, anello Z, campo ordinato Q, irrazionalita di radice di 2 e incompletezza di Q."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 7 - Insiemi Numerici N Z e Q]]

# Lezione 7 - Insiemi Numerici N, Z e Q

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il principio del buon ordinamento</b></font></mark> sancisce che ogni sottoinsieme non vuoto di numeri naturali ammette elemento minimo, costituendo il fondamento strutturale da cui derivano l'esistenza del massimo per insiemi limitati e la divisione euclidea con resto. La lezione formalizza il principio di definizione per ricorrenza, dimostra la disuguaglianza di Bernoulli, estende l'aritmetica all'anello degli interi relativi $\mathbb{Z}$ e al campo ordinato dei razionali $\mathbb{Q}$, culminando nella dimostrazione dell'irrazionalità di $\sqrt{2}$ e nella prova dell'incompletezza di Dedekind per $\mathbb{Q}$, che motiva l'introduzione dei numeri reali compiuta in [[Lezione 5 - i Numeri Reali e Assioma di Completezza]].

## Il Principio del Buon Ordinamento

In continuità con la costruzione assiomatica di [[Lezione 6 - Valore Assoluto e Numeri Naturali]], l'ordine su $\mathbb{N}$ gode di una proprietà assente nei campi continui.

### Teorema del Buon Ordinamento
**Teorema:** Ogni sottoinsieme non vuoto di $\mathbb{N}$ ammette elemento minimo:
$$\forall X \subseteq \mathbb{N}, X \neq \emptyset \implies \exists \min X \in X$$

*Dimostrazione:* Sia $\emptyset \neq X \subseteq \mathbb{N}$. Ragioniamo per assurdo supponendo che $X$ non ammetta minimo. Definiamo l'insieme dei minoranti stretti:
$$A := \{n \in \mathbb{N} \mid n \le x, \; \forall x \in X\}$$
1. **Base:** Poiché per ogni $x \in X$ si ha $x \ge 0$, risulta $0 \le x$ per ogni $x \in X$, dunque $0 \in A$.
2. **Passo induttivo:** Sia $n \in A$. Allora $n \notin X$, altrimenti $n$, essendo un minorante di $X$ appartenente a $X$, ne costituirebbe il minimo (che abbiamo supposto inesistente).
   Dunque $n < x$ per ogni $x \in X$. Per la discretezza dell'ordine dei naturali, $n < x \implies n + 1 \le x$ per ogni $x \in X$, il che significa che $n + 1 \in A$.
Per il principio di induzione, $A = \mathbb{N}$.
D'altra parte, nessun elemento di $X$ può appartenere ad $A$ (poiché sarebbe il minimo), quindi:
$$X = \mathbb{N} \cap X = A \cap X = \emptyset$$
il che contraddice l'ipotesi $X \neq \emptyset$. Di conseguenza, $X$ ammette necessariamente minimo.

*Esempio applicativo:* Sia $X = \{n^2 - 4n + 5 \mid n \in \mathbb{N}\}$. Riscrivendo l'espressione:
$$n^2 - 4n + 5 = (n - 2)^2 + 1 \ge 1$$
Poiché per $n = 2$ il valore $1$ è effettivamente assunto e appartiene ad $X$, si ha $\min X = 1$.

### Esistenza del Massimo per Insiemi Limitati
**Corollario:** Ogni sottoinsieme non vuoto di $\mathbb{N}$ avente maggioranti in $\mathbb{N}$ ammette massimo.

*Dimostrazione:* Sia $\emptyset \neq X \subseteq \mathbb{N}$ superiormente limitato. Consideriamo l'insieme dei suoi maggioranti in $\mathbb{N}$:
$$B := \{k \in \mathbb{N} \mid x \le k, \; \forall x \in X\}$$
Per ipotesi di limitatezza, $B \neq \emptyset$. Per il teorema del buon ordinamento, esiste $a := \min B$. Mostriamo che $a \in X$:
- Se $a = 0$, da $0 \le x \le 0$ per ogni $x \in X$ segue $X = \{0\}$, e banalmente $\max X = 0$.
- Se $a > 0$, allora $a - 1 \in \mathbb{N}$. Per la minimalità di $a$ in $B$, il numero $a - 1$ non può essere un maggiorante di $X$, dunque esiste $x \in X$ tale che:
  $$a - 1 < x \le a$$
  Per la discretezza dell'ordine, $a - 1 < x \implies a \le x$. Essendo $x \le a$, si conclude che $x = a \in X$.
Dunque $a$ è un maggiorante che appartiene ad $X$, ovvero $a = \max X$.

> [!NOTE] Relazione tra Estremi e Minimi/Massimi in $\mathbb{N}$
> In $\mathbb{N}$, ogni sottoinsieme non vuoto possiede estremo inferiore che coincide sempre con il minimo ($\inf X = \min X$). Se è superiormente limitato, il suo estremo superiore coincide con il massimo ($\sup X = \max X$). In $\mathbb{N}$ non si hanno lacune topologiche tra sup e max.

## La Divisione Euclidea e Parità

### Teorema della Divisione Euclidea
**Teorema:** Dati $n, m \in \mathbb{N}$ con $m \neq 0$, esiste ed è unica la coppia $(q, r) \in \mathbb{N} \times \mathbb{N}$ tale che:
$$n = qm + r, \qquad 0 \le r < m$$
Il numero $q$ è il <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>quoziente</b></font></mark> e $r$ è il <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>resto</b></font></mark>.

*Dimostrazione:*
- **Esistenza:** Consideriamo l'insieme dei multipli di $m$ che non superano $n$:
  $$A := \{k \in \mathbb{N} \mid km \le n\}$$
  Si ha $0 \in A$ poiché $0 \cdot m = 0 \le n$. Inoltre, essendo $m \ge 1$, per ogni $k \in A$ vale $k \le km \le n$, per cui $A$ è limitato superiormente da $n$.
  Per il corollario precedente, esiste $q := \max A$.
  Ne segue che $qm \le n$, mentre $(q + 1)m > n$ (altrimenti $q + 1 \in A$, violando la massimalità di $q$).
  Poniamo $r := n - qm$. Poiché $qm \le n$, $r \in \mathbb{N}$. Inoltre:
  $$n < (q + 1)m = qm + m \implies r = n - qm < m$$
- **Unicità:** Supponiamo che $n = qm + r = q'm + r'$ con $0 \le r, r' < m$. Se fosse $q < q'$, allora per discretezza $q + 1 \le q'$, da cui:
  $$n = qm + r < qm + m = (q + 1)m \le q'm \le q'm + r' = n$$
  contraddizione ($n < n$). Similmente si esclude $q' < q$. Ne consegue $q = q'$ e, per cancellazione, $r = r'$.

### Teorema di Parità
**Corollario:** Ogni numero naturale $n \in \mathbb{N}$ si scrive in una e una sola delle due forme:
$$n = 2k \quad (\text{pari}) \qquad \lor \qquad n = 2k + 1 \quad (\text{dispari}), \qquad k \in \mathbb{N}$$

*Dimostrazione:* Applicando la divisione euclidea con divisore $m = 2$, il resto $r$ soddisfa $0 \le r < 2$. Essendo $r \in \mathbb{N}$, per discretezza $r \in \{0, 1\}$. L'unicità del resto garantisce che nessun naturale possa essere simultaneamente pari e dispari.

## Successioni, Ricorrenza e Disuguaglianza di Bernoulli

### Successioni e Definizione per Ricorrenza
Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>successione</b></font></mark> di elementi in un insieme $X$ è una funzione $u: \mathbb{N} \to X$, tradizionalmente indicata con $(u_n)_{n \in \mathbb{N}}$ ponendo $u_n := u(n)$.

**Teorema della Definizione per Ricorrenza:** Siano $f: X \to X$ una funzione e $b \in X$. Esiste un'unica successione $(u_n)_{n \in \mathbb{N}}$ tale che:
$$u_0 = b, \qquad u_{n+1} = f(u_n) \quad \forall n \in \mathbb{N}$$

*Dimostrazione dell'unicità:* Siano $u$ e $v$ due successioni soddisfacenti le condizioni.
- Base: $u_0 = b = v_0$.
- Passo induttivo: se $u_n = v_n$, allora $u_{n+1} = f(u_n) = f(v_n) = v_{n+1}$.
Per il principio di induzione, $u_n = v_n$ per ogni $n \in \mathbb{N}$. (L'esistenza formale è garantita tramite la più piccola relazione funzionale chiusa in $\mathbb{N} \times X$).

### Potenze ad Esponente Naturale
Applicando il teorema di ricorrenza con $X = \mathbb{R}$, $b = 1$ e $f(x) = ax$, si definiscono le potenze per ogni base $a \in \mathbb{R}$:
$$a^0 := 1, \qquad a^{n+1} := a \cdot a^n$$
Si adotta la convenzione algebrica standard $0^0 = 1$ in tale contesto; per $n \ge 1$ si ha $0^n = 0$.
Proprietà dimostrabili per induzione:
$$a^{n+m} = a^n a^m, \qquad (ab)^n = a^n b^n, \qquad (a^n)^m = a^{nm}, \qquad \left(\frac{a}{b}\right)^n = \frac{a^n}{b^n} \quad (b \neq 0)$$

### Disuguaglianza di Bernoulli
**Proposizione:** Per ogni numero reale $x \ge -1$ e per ogni $n \in \mathbb{N}$:
$$(1 + x)^n \ge 1 + nx$$

*Dimostrazione per induzione su $n$ (con $x \ge -1$ fissato):*
- **Base ($n = 0$):** $(1 + x)^0 = 1$ e $1 + 0 \cdot x = 1$. L'uguaglianza $1 \ge 1$ è vera.
- **Passo induttivo:** Supponiamo vera l'ipotesi per $n$: $(1 + x)^n \ge 1 + nx$.
  Essendo $x \ge -1$, il fattore $(1 + x)$ è non negativo ($\ge 0$). Moltiplicando ambo i membri per $(1 + x)$ preservando il verso:
  $$(1 + x)^{n+1} = (1 + x)(1 + x)^n \ge (1 + x)(1 + nx)$$
  Sviluppando il prodotto:
  $$(1 + x)(1 + nx) = 1 + nx + x + nx^2 = 1 + (n + 1)x + nx^2$$
  Poiché $n \ge 0$ e $x^2 \ge 0$, il termine $nx^2 \ge 0$. Pertanto:
  $$1 + (n + 1)x + nx^2 \ge 1 + (n + 1)x$$
  Combinando le disuguaglianze otteniamo $(1 + x)^{n+1} \ge 1 + (n + 1)x$.

**Corollario:** Per ogni $n \in \mathbb{N}$:
$$2^n \ge n + 1 > n$$
*Dimostrazione:* Si pone $x = 1 \ge -1$ nella disuguaglianza di Bernoulli: $(1 + 1)^n = 2^n \ge 1 + n \cdot 1 = n + 1 > n$.

## L'Anello degli Interi Relativi $\mathbb{Z}$

Definiamo l'insieme dei numeri interi relativi introducendo gli opposti additivi dei naturali:
$$\mathbb{Z} := (-\mathbb{N}) \cup \mathbb{N}, \qquad -\mathbb{N} := \{-n \mid n \in \mathbb{N}\}$$

### Proprietà Strutturali di $\mathbb{Z}$
1. **Chiusura algebrica:** $\forall n, m \in \mathbb{Z} \implies n + m \in \mathbb{Z}$ e $nm \in \mathbb{Z}$.
2. **Positività:** $\forall n \in \mathbb{Z} : n \ge 0 \iff n \in \mathbb{N}$.
3. **Esistenza di minimi e massimi:** Ogni sottoinsieme non vuoto di $\mathbb{Z}$ limitato inferiormente ammette minimo; ogni sottoinsieme non vuoto limitato superiormente ammette massimo.
   *Dimostrazione (per insieme limitato superiormente $X \subset \mathbb{Z}$):*
   - Poniamo $X^+ := X \cap \mathbb{N}$.
   - Se $X^+ \neq \emptyset$, $X^+$ è un sottoinsieme non vuoto di $\mathbb{N}$ limitato superiormente in $\mathbb{N}$. Per il corollario del buon ordinamento, esiste $a = \max X^+$, che risulta essere anche $\max X$.
   - Se $X^+ = \emptyset$, allora $X \subset -\mathbb{N}$, da cui $-X \subset \mathbb{N}$. Per il buon ordinamento esiste $b = \min(-X)$. Ne segue direttamente che $-b = \max X$.

### Potenze ad Esponente Intero
Dato $a \in \mathbb{R} \setminus \{0\}$ e $n \in \mathbb{Z}$:
$$a^n := \begin{cases} a^n & \text{se } n \ge 0 \\ \dfrac{1}{a^{-n}} & \text{se } n < 0 \end{cases}$$
Si preservano per ogni $n, m \in \mathbb{Z}$ tutte le regole delle potenze: $a^{n+m} = a^n a^m$, $(ab)^n = a^n b^n$, $(a^n)^m = a^{nm}$. Il simbolo $0^n$ per $n \le 0$ non è definito.

## Il Campo dei Numeri Razionali $\mathbb{Q}$

### Costruzione e Assiomi di Campo
L'insieme dei numeri razionali è definito come:
$$\mathbb{Q} := \{x \in \mathbb{R} \mid \exists (m, n) \in \mathbb{Z} \times \mathbb{N}^*, \; x = m n^{-1} = \frac{m}{n}\}$$

**Proposizione:** La quintupla $(\mathbb{Q}, +, \cdot, \le)$ costituisce un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>campo totalmente ordinato</b></font></mark>.
*Dimostrazione:* Siano $x_1 = m_1 n_1^{-1}$ e $x_2 = m_2 n_2^{-1}$ elementi di $\mathbb{Q}$.
- Somma: $x_1 + x_2 = \frac{m_1 n_2 + m_2 n_1}{n_1 n_2} \in \mathbb{Q}$ (poiché $m_1 n_2 + m_2 n_1 \in \mathbb{Z}$ e $n_1 n_2 \in \mathbb{N}^*$).
- Prodotto: $x_1 \cdot x_2 = \frac{m_1 m_2}{n_1 n_2} \in \mathbb{Q}$.
- Inversi additivi: se $x = mn^{-1}$, allora $-x = (-m)n^{-1} \in \mathbb{Q}$.
- Inversi moltiplicativi: se $x = mn^{-1} \neq 0$, allora $m \neq 0$. Se $m > 0$, $x^{-1} = n m^{-1} \in \mathbb{Q}$; se $m < 0$, $x^{-1} = (-n)(-m)^{-1} \in \mathbb{Q}$.
Tutti gli assiomi di campo (A1–4, M1–4, D) e compatibilità d'ordine (AO, MO, O1–4) ereditati da $\mathbb{R}$ sono pienamente soddisfatti.

### Lemma della Decomposizione Binaria
**Lemma:** Ogni intero positivo $n \ge 1$ si scrive nella forma:
$$n = 2^j k, \qquad j \in \mathbb{N}, \; k \text{ dispari}$$
*Dimostrazione:* Se $n$ è dispari, basta porre $j = 0$ e $k = n$. Consideriamo l'insieme dei numeri privi di tale rappresentazione:
$$A := \{n \in \mathbb{N}^* \mid n \text{ non ha rappresentazione } n = 2^j k \text{ con } k \text{ dispari}\}$$
Se per assurdo $A \neq \emptyset$, per il buon ordinamento esisterebbe $n_0 = \min A$. Poiché ogni dispari ha la forma voluta, $n_0$ deve essere pari: $n_0 = 2m$ con $m \in \mathbb{N}^*$.
Essendo $m < n_0$, per minimalità $m \notin A$, quindi $m = 2^j k$ con $k$ dispari. Ma allora $n_0 = 2(2^j k) = 2^{j+1} k$, assurdo. Dunque $A = \emptyset$.

## L'Irrazionalità di $\sqrt{2}$

**Teorema:** Non esiste alcun numero razionale $x \in \mathbb{Q}$ tale che $x^2 = 2$.

*Dimostrazione (per assurdo):*
Poiché $x^2 = (-x)^2$, possiamo limitarci a considerare $x > 0$. Supponiamo esista $x \in \mathbb{Q}$ con $x^2 = 2$.
Possiamo scrivere $x = \frac{m}{n}$ con $m, n \in \mathbb{N}^*$ ridotti ai minimi termini, ovvero tali che $m$ e $n$ non siano entrambi pari. Da $x^2 = 2$ segue:
$$\frac{m^2}{n^2} = 2 \implies m^2 = 2n^2$$
1. $m^2$ è pari. Poiché il quadrato di un numero dispari è sempre dispari ($(2h+1)^2 = 4h^2 + 4h + 1 = 2(2h^2+2h) + 1$), ne consegue che $m$ deve essere **pari**.
2. Possiamo quindi scrivere $m = 2k$ per un opportuno $k \in \mathbb{N}^*$. Sostituendo nell'equazione:
   $$(2k)^2 = 2n^2 \implies 4k^2 = 2n^2 \implies n^2 = 2k^2$$
3. Di conseguenza anche $n^2$ è pari, il che implica che $n$ è **pari**.
Si è così dedotto che sia $m$ sia $n$ sono pari, in contraddizione palese con l'ipotesi che la frazione fosse ridotta ai minimi termini.

> [!WARNING] Rilevanza Storica: La Crisi dei Pitagorici
> La scoperta che la diagonale del quadrato di lato unitario ($d = \sqrt{2}$) non è commensurabile con il lato, tradizionalmente attribuita ad Ippaso di Metaponto (V sec. a.C.), mostrò per la prima volta che l'aritmetica di $\mathbb{Q}$ non basta a misurare il continuo geometrico. Gli elementi di $\mathbb{R} \setminus \mathbb{Q}$ presero il nome di <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>numeri irrazionali</b></font></mark>.

## L'Incompletezza di $\mathbb{Q}$

Il campo razionale $(\mathbb{Q}, \le)$ possiede tutte le proprietà algebriche e d'ordine di $\mathbb{R}$, ma non soddisfa l'Assioma di Completezza di Dedekind.

**Teorema:** L'insieme ordinato $(\mathbb{Q}, \le)$ non è completo. In particolare, il sottoinsieme:
$$A := \{x \in \mathbb{Q} \mid x \le 0 \lor x^2 < 2\}$$
è non vuoto, limitato superiormente in $\mathbb{Q}$, ma non ammette estremo superiore in $\mathbb{Q}$.

*Dimostrazione:*
1. $A \neq \emptyset$ poiché $1 \in A$ ($1^2 = 1 < 2$).
2. $A$ è limitato superiormente in $\mathbb{Q}$: infatti per ogni $x \in A$ con $x > 0$, $x^2 < 2 < 4 = 2^2 \implies x < 2$. Quindi $2$ è un maggiorante razionale di $A$.
3. Supponiamo per assurdo che esista $\lambda \in \mathbb{Q}$ tale che $\lambda = \sup_{\mathbb{Q}} A$.
   Poiché $1 \in A$, deve aversi $\lambda \ge 1 > 0$. Dal teorema precedente sappiamo che $\lambda^2 \neq 2$. Restano due casi:
   - **Caso 1: $\lambda^2 < 2$.**
     Scegliamo $\varepsilon \in \mathbb{Q}$ con $0 < \varepsilon < 1$. Calcoliamo:
     $$(\lambda + \varepsilon)^2 = \lambda^2 + 2\lambda\varepsilon + \varepsilon^2 < \lambda^2 + (1 + 2\lambda)\varepsilon$$
     Affinché $(\lambda + \varepsilon)^2 < 2$, basta imporre che:
     $$\lambda^2 + (1 + 2\lambda)\varepsilon < 2 \iff \varepsilon < \frac{2 - \lambda^2}{1 + 2\lambda}$$
     Scegliendo $\varepsilon = \frac{1}{2}\min\left\{1, \frac{2 - \lambda^2}{1 + 2\lambda}\right\} \in \mathbb{Q}^+$, l'elemento $a := \lambda + \varepsilon$ appartiene ad $A$. Ma $a > \lambda$, il che contraddice il fatto che $\lambda$ sia un maggiorante di $A$.
   - **Caso 2: $\lambda^2 > 2$.**
     Scegliamo $\varepsilon \in \mathbb{Q}$ con $0 < \varepsilon < \lambda$. Calcoliamo:
     $$(\lambda - \varepsilon)^2 = \lambda^2 - 2\lambda\varepsilon + \varepsilon^2 > \lambda^2 - 2\lambda\varepsilon$$
     Affinché $(\lambda - \varepsilon)^2 > 2$, basta che:
     $$\lambda^2 - 2\lambda\varepsilon > 2 \iff \varepsilon < \frac{\lambda^2 - 2}{2\lambda}$$
     Scegliendo $\varepsilon = \frac{1}{2}\min\left\{\lambda, \frac{\lambda^2 - 2}{2\lambda}\right\} \in \mathbb{Q}^+$, si ha $(\lambda - \varepsilon)^2 > 2$.
     Per ogni $x \in A$ positivo si ha $x^2 < 2 < (\lambda - \varepsilon)^2 \implies x < \lambda - \varepsilon$.
     Ne segue che $\lambda - \varepsilon$ è un maggiorante di $A$ strettamente minore di $\lambda$, contraddicendo l'ipotesi che $\lambda$ fosse il minimo dei maggioranti.
Entrambi i casi conducono a una contraddizione. Dunque $\sup_{\mathbb{Q}} A$ non esiste in $\mathbb{Q}$.

## Complementi: Divisibilità, Numeri Primi ed Erone

### Fattorizzazione e Infinità dei Numeri Primi
- Dati $n, m \in \mathbb{N}^*$, diciamo che $m$ **divide** $n$ ($m \mid n$) se esiste $q \in \mathbb{N}$ tale che $n = mq$. Un numero $p \ge 2$ si definisce **primo** se ammette solo divisori impropri ($1$ e $p$).
- **Teorema di Esistenza della Fattorizzazione:** Ogni naturale $n \ge 2$ è prodotto di numeri primi.
  *Dimostrazione:* Se per assurdo l'insieme dei naturali non fattorizzabili fosse non vuoto, per il buon ordinamento ammetterebbe un minimo $N$. Tale $N$ non è primo, quindi $N = mq$ con $2 \le m, q < N$. Per minimalità di $N$, sia $m$ che $q$ sono prodotti di primi, e moltiplicandoli si otterrebbe una fattorizzazione per $N$, assurdo.
- **Teorema di Euclide (Infinità dei Primi):** L'insieme dei numeri primi è infinito.
  *Dimostrazione:* Data una qualsiasi lista finita di primi $\{p_1, \dots, p_k\}$, poniamo $M := p_1 \cdots p_k + 1$. Essendo $M \ge 2$, esso ammette un divisore primo $p$. Poiché la divisione di $M$ per ciascun $p_i$ dà resto 1, nessun $p_i$ divide $M$. Dunque $p$ è un numero primo non presente nella lista.

### La Ricorrenza di Erone
Data la necessità di calcolare radici non razionali, si definisce per $a \ge 0$ e $u_0 > 0$ la successione ricorsiva:
$$u_{n+1} = \frac{1}{2}\left(u_n + \frac{a}{u_n}\right)$$
Tale successione costruisce per ricorrenza una sequenza razionale convergente a $\sqrt{a}$ nel completamento reale $\mathbb{R}$.

---

## Integrazione Analisi 1 & Real Analysis: Cardinalità di Cantor e Studio di Convergenza della Ricorrenza di Erone

In **Analisi Matematica 1** e nelle lezioni [[Lecture 02 - Cantor's Theory of Cardinality]], [[Lecture 06 - The Uncountability of the Real Numbers]] e [[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]], la distinzione algebrica tra $\mathbb{N}, \mathbb{Z}, \mathbb{Q}$ e $\mathbb{R}$ si trasforma in una discrepanza quantitativa di ordine superiore, mentre le successioni ricorsive come quella di Erone diventano la palestra tipica per applicare il Teorema di Convergenza Monotona.

### 1. Teoria della Cardinalità: Numerabilità di $\mathbb{Q}$ vs Non-Numerabilità di $\mathbb{R}$
All'esame orale di Analisi 1 viene frequentemente richiesta la dimostrazione che i numeri razionali sono infiniti numerabili, mentre i numeri reali formano un infinito di ordine superiore:

- **Numerabilità di $\mathbb{Z}$ e di $\mathbb{N} \times \mathbb{N}$ (da [[Lecture 02 - Cantor's Theory of Cardinality]]):**
  - $\mathbb{Z} \sim \mathbb{N}$ tramite la biezione che alterna positivi e negativi: $f(n) = n/2$ se pari, $-(n-1)/2$ se dispari.
  - $\mathbb{N} \times \mathbb{N} \sim \mathbb{N}$ tramite l'argomento diagonale di Cantor che enumera le coppie ordinate per diagonali finite $D_k = \{(m, n) \mid m + n = k\}$.
- **Teorema: L'insieme dei numeri razionali $\mathbb{Q}$ è numerabile ($|\mathbb{Q}| = \aleph_0$).**
  *Dimostrazione:* Ogni razionale positivo si scrive univocamente come frazione ridotta ai minimi termini $\frac{m}{n}$ con $(m, n) \in \mathbb{N}^* \times \mathbb{N}^*$. La mappa $f(m/n) = (m, n)$ è iniettiva da $\mathbb{Q}^+$ in $\mathbb{N} \times \mathbb{N}$. Poiché $\mathbb{N} \times \mathbb{N}$ è numerabile e ogni sottoinsieme di un numerabile è numerabile, $\mathbb{Q}^+$ è numerabile. Poiché $\mathbb{Q} = (-\mathbb{Q}^+) \cup \{0\} \cup \mathbb{Q}^+$ è unione finita di insiemi numerabili, $\mathbb{Q}$ è numerabile.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>L'Argomento Diagonale di Cantor per la Non-Numerabilità di $\mathbb{R}$ (da [[Lecture 06 - The Uncountability of the Real Numbers]]):</b></font></mark>
L'intervallo reale $]0, 1[$ (e di conseguenza $\mathbb{R}$) non è numerabile:
Supponiamo per assurdo di poter elencare tutti i reali di $]0, 1[$ in una successione $x_1, x_2, x_3, \dots$ con espansione decimale $x_n = 0.d_{n1} d_{n2} d_{n3} \dots$
Costruiamo il numero reale $y = 0.a_1 a_2 a_3 \dots$ modificando le cifre sulla diagonale principale:
$$a_n = \begin{cases} 4 & \text{se } d_{nn} \neq 4 \\ 5 & \text{se } d_{nn} = 4 \end{cases}$$
Per ogni $n \in \mathbb{N}$, l'$n$-esima cifra di $y$ differisce dall'$n$-esima cifra di $x_n$, quindi $y \neq x_n$. Dunque $y \in ]0, 1[$ non è presente nell'elenco, contraddicendo l'esaustività della lista! Dunque $|\mathbb{R}| = \mathfrak{c} > \aleph_0$.

> [!IMPORTANT] Sovrabbondanza degli Irrazionali
> Poiché $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$, se gli irrazionali fossero numerabili $\mathbb{R}$ sarebbe l'unione di due numerabili e quindi risulterebbe numerabile.
> Ne consegue che **$\mathbb{R} \setminus \mathbb{Q}$ è non numerabile**. La "quasi totalità" dei numeri reali è costituita da numeri irrazionali (e trascendenti).

### 2. Studio Rigoroso di Convergenza della Successione di Erone (da [[Lecture 08 - The Squeeze Theorem and Operations with Convergent Sequences]])
La successione di Erone $u_{n+1} = \frac{1}{2}\left(u_n + \frac{a}{u_n}\right)$ con $a > 0, u_0 > 0$ è il prototipo d'esame per le successioni definite per ricorrenza:

1. **Limitazione Inferiore:** Per ogni $n \ge 1$, calcoliamo:
   $$u_{n+1}^2 - a = \frac{1}{4}\left(u_n + \frac{a}{u_n}\right)^2 - a = \frac{u_n^2 + 2a + a^2/u_n^2 - 4a}{4} = \frac{(u_n^2 - a)^2}{4u_n^2} \ge 0$$
   Ne segue $u_{n+1}^2 \ge a \implies u_{n+1} \ge \sqrt{a}$ per ogni $n \ge 0$. Dunque la successione è limitata inferiormente da $\sqrt{a}$ a partire dal primo passo.
2. **Monotonia Decrescente:** Calcoliamo la differenza tra termini successivi per $n \ge 1$:
   $$u_{n+1} - u_n = \frac{1}{2}\left(u_n + \frac{a}{u_n}\right) - u_n = \frac{a - u_n^2}{2u_n}$$
   Poiché $u_n^2 \ge a$ e $u_n > 0$, il numeratore $a - u_n^2 \le 0$, da cui $u_{n+1} \le u_n$. La successione è **monotona decrescente** per $n \ge 1$.
3. **Esistenza del Limite (MCT):** Essendo decrescente e inferiormente limitata da $\sqrt{a}$, per il **Teorema di Convergenza Monotona** esiste finito il limite reale:
   $$L = \lim_{n \to \infty} u_n \ge \sqrt{a} > 0$$
4. **Calcolo del Limite:** Passando al limite per $n \to \infty$ in ambo i membri della relazione di ricorrenza (sfruttando l'algebra dei limiti):
   $$L = \frac{1}{2}\left(L + \frac{a}{L}\right) \iff 2L = L + \frac{a}{L} \iff L = \frac{a}{L} \iff L^2 = a$$
   Poiché $L > 0$, l'unica soluzione ammissibile è $L = \sqrt{a}$.
La successione converge a $\sqrt{a}$ con convergenza quadratica (metodo delle tangenti di Newton).

