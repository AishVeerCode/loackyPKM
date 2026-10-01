---
status: permanent
type: lecture
area: education
related: ["[[Lezione 1 - Logica delle Proposizioni e dei Predicati]]", "[[Lezione 2 - Teoria Assiomatica degli Insiemi]]", "[[University]]"]
aliases: ["Calcolo delle Probabilita e Statistica", "CPSA", "Probabilita e Statistica"]
source: CPSA2627 Nappo-Spizzichino Feb 2024.pdf
title: "Introduzione al Calcolo delle Probabilita"
date: '2026-10-01'
updated: 2026-10-01T15:38
tags: [education/university, education/matematica, education/lecture]
summary: "Compendio rigoroso del corso Sapienza di Probabilità e Statistica con spazi finiti e generali, variabili aleatorie, Bayes, valori attesi e teoremi limite."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Introduzione al Calcolo delle Probabilita]]

# Introduzione al Calcolo delle Probabilita

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Il Calcolo delle Probabilità e la Statistica</b></font></mark> forniscono il paradigma formale per quantificare l'incertezza e modellare fenomeni aleatori complessi nell'ingegneria e nell'informatica. Basato sul testo didattico di riferimento della Sapienza (F. Spizzichino e G. Nappo), il percorso teorico si articola in due macro-fasi: l'approccio elementare su spazi campione finiti con l'algebra degli eventi e il calcolo combinatorio, e la generalizzazione assiomatica alla Kolmogorov su spazi continui con variabili aleatorie generali, densità di probabilità, fino ai grandi risultati asintotici della Legge dei Grandi Numeri e del Teorema Centrale del Limite.

## Architettura Epistemologica del Corso
L'impostazione concettuale sviluppata da Fabio Spizzichino e Giovanna Nappo persegue un duplice obiettivo:
1. **Fase Discreta Elementare (Capitoli 1–14):** Si opera su uno spazio campione $\Omega$ finito, dove l'algebra degli eventi coincide con l'intero insieme delle parti $\mathcal{P}(\Omega)$ (introdotto formalmente in [[Lezione 2 - Teoria Assiomatica degli Insiemi]]). Ogni evento è identificato come un sottoinsieme di $\Omega$ e ogni variabile aleatoria come una funzione reale a dominio finito. Ciò consente di definire il valore atteso direttamente e di provarne la linearità senza ricorrere alla teoria della misura.
2. **Fase Generale e Continua (Capitoli 15–17):** Si introducono spazi campione infiniti non numerabili con $\sigma$-algebre di eventi e la proprietà di $\sigma$-additività (additività numerabile), estendendo i concetti di densità, funzione di ripartizione cumulativa e convergenza asintotica.

## Fenomeni Aleatori e Logica degli Eventi
Un esperimento o fenomeno si dice **aleatorio** se i suoi esiti non sono prevedibili a priori con certezza.

### Spazio Campione ed Eventi
- Lo <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>spazio campione $\Omega$</b></font></mark> è l'insieme di tutti i risultati elementari possibili dell'esperimento.
- Un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>evento $E$</b></font></mark> è un qualsiasi sottoinsieme dello spazio campione: $E \subseteq \Omega$ ($E \in \mathcal{P}(\Omega)$).

### Corrispondenza tra Logica delle Proposizioni e Teoria degli Insiemi
Esiste un perfetto isomorfismo tra il calcolo proposizionale di [[Lezione 1 - Logica delle Proposizioni e dei Predicati]] e le operazioni insiemistiche di [[Lezione 2 - Teoria Assiomatica degli Insiemi]]:

| Concetto Probabilistico | Nozione Insiemistica | Nozione Logica Proposizionale |
| :--- | :---: | :--- |
| Evento certo | $\Omega$ | Tautologia ($V$) |
| Evento impossibile | $\emptyset$ | Contraddizione ($F$) |
| Verificarsi congiunto di $A$ e $B$ | $A \cap B$ | Congiunzione logica $A \land B$ |
| Verificarsi di almeno uno tra $A$ o $B$ | $A \cup B$ | Disgiunzione inclusiva $A \lor B$ |
| Evento contrario (non $A$) | $A^c = \Omega \setminus A$ | Negazione $\neg A$ |
| L'evento $A$ implica l'evento $B$ | $A \subseteq B$ | Implicazione $A \implies B$ |
| Eventi incompatibili (disgiunti) | $A \cap B = \emptyset$ | Mutua esclusione ($\neg(A \land B)$) |

### Assiomatica di Kolmogorov su Spazi Finiti
Una misura di probabilità su $(\Omega, \mathcal{P}(\Omega))$ è una funzione $P: \mathcal{P}(\Omega) \to [0, 1]$ che rispetta tre postulati fondamentali:
1. **Non negatività:** $P(A) \ge 0$ per ogni $A \subseteq \Omega$.
2. **Normalizzazione:** $P(\Omega) = 1$.
3. **Additività finita:** Se $A, B \subseteq \Omega$ con $A \cap B = \emptyset$, allora:
   $$P(A \cup B) = P(A) + P(B)$$

Proprietà dedotte immediatamente:
- $P(\emptyset) = 0$
- $P(A^c) = 1 - P(A)$
- **Monotonia:** Se $A \subseteq B \implies P(A) \le P(B)$
- **Formula di inclusione-esclusione (Poincaré):**
  $$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$
  Generalizzabile a $n$ eventi unendo le intersezioni multiple alternate di segno.

## Probabilità Classica e Calcolo Combinatorio
Quando lo spazio campione finito $\Omega$ è composto da $N$ esiti equiprobabili (simmetria fisica), per ogni evento $A$:
$$P(A) = \frac{|A|}{|\Omega|} = \frac{\text{numero di casi favorevoli}}{\text{numero di casi possibili}}$$

### Strumenti Combinatori Fondamentali
Dato un insieme di $n$ oggetti distinti e dovendone selezionare $k$:

1. **Disposizioni Semplici (senza ripetizione, ordine conta):**
   $$D_{n, k} = n(n-1)\dots(n-k+1) = \frac{n!}{(n-k)!}$$
2. **Disposizioni con Ripetizione (ordine conta, reinserimento):**
   $$D'_{n, k} = n^k$$
3. **Permutazioni Semplici ($k = n$):**
   $$P_n = n!$$
4. **Combinazioni Semplici (l'ordine NON conta, senza ripetizione):**
   $$C_{n, k} = \binom{n}{k} = \frac{n!}{k!(n-k)!}$$
   I coefficienti binomiali godono della simmetria $\binom{n}{k} = \binom{n}{n-k}$, della formula ricorsiva di Tartaglia $\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$ e governano lo sviluppo del **Binomio di Newton**:
   $$(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^k b^{n-k}$$
5. **Combinazioni con Ripetizione:**
   $$C'_{n, k} = \binom{n + k - 1}{k}$$

## Probabilità Condizionata e Teorema di Bayes

### Definizione di Probabilità Condizionata
Sia $B$ un evento con $P(B) > 0$. La <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>probabilità condizionata</b></font></mark> di un evento $A$ dato il verificarsi di $B$ è definita da:
$$P(A \mid B) := \frac{P(A \cap B)}{P(B)}$$
Il condizionamento opera una restrizione dello spazio campione originario $\Omega$ al nuovo sottoinsieme certo $B$.

### Teoremi Cardinali del Condizionamento
1. **Formula delle Probabilità Composte:**
   $$P(A_1 \cap A_2 \cap \dots \cap A_n) = P(A_1) \cdot P(A_2 \mid A_1) \cdot P(A_3 \mid A_1 \cap A_2) \dots P(A_n \mid A_1 \cap \dots \cap A_{n-1})$$
2. **Formula delle Probabilità Totali:**
   Sia $\{H_1, H_2, \dots, H_n\}$ una partizione dello spazio $\Omega$ (ossia eventi a due a due disgiunti la cui unione è $\Omega$) con $P(H_i) > 0$. Per ogni evento $E$:
   $$P(E) = \sum_{i=1}^n P(E \mid H_i) P(H_i)$$
3. **Formula di Bayes (Teorema dell'Inferenza Inversa):**
   Consente di calcolare la probabilità delle cause $H_k$ alla luce dell'effetto osservato $E$:
   $$P(H_k \mid E) = \frac{P(E \mid H_k) P(H_k)}{\sum_{i=1}^n P(E \mid H_i) P(H_i)}$$
   - $P(H_k)$ rappresenta la **probabilità a priori** dell'ipotesi.
   - $P(E \mid H_k)$ rappresenta la **verosimiglianza** dell'evidenza dato il modello.
   - $P(H_k \mid E)$ rappresenta la **probabilità a posteriori**, cardine dell'aggiornamento bayesiano nell'intelligenza artificiale e nel machine learning.

## Indipendenza Stocastica e Prove Ripetute

### Indipendenza tra Due Eventi
Due eventi $A$ e $B$ si dicono <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>stocasticamente indipendenti</b></font></mark> se e solo se:
$$P(A \cap B) = P(A) \cdot P(B)$$
Se $P(B) > 0$, tale condizione equivale a $P(A \mid B) = P(A)$: il verificarsi di $B$ non altera l'incertezza su $A$.
- **Correlazione Positiva:** $P(A \cap B) > P(A)P(B) \iff P(A \mid B) > P(A)$.
- **Correlazione Negativa:** $P(A \cap B) < P(A)P(B) \iff P(A \mid B) < P(A)$.

### Indipendenza Completa
Una famiglia di eventi $\{A_1, A_2, \dots, A_n\}$ è **completamente indipendente** se per ogni sottoinsieme di indici $J \subseteq \{1, \dots, n\}$ di cardinalità $2 \le |J| \le n$:
$$P\left( \bigcap_{j \in J} A_j \right) = \prod_{j \in J} P(A_j)$$
*Attenzione:* L'indipendenza a coppie non implica in generale l'indipendenza completa.

### Schemi di Estrazione da Urne
- **Con reinserimento (restituzione):** Le prove successive sono bernoulliane stocasticamente indipendenti. Conduce alla **distribuzione binomiale**.
- **Senza reinserimento:** Le estrazioni successive sono dipendenti, alterando la composizione dell'urna. Conduce alla **distribuzione ipergeometrica**.

## Variabili Aleatorie Discrete

### Definizione
Una <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>variabile aleatoria</b></font></mark> (v.a.) reale discreta su uno spazio $(\Omega, P)$ è un'applicazione:
$$X: \Omega \to \mathbb{R}$$
che associa a ciascun esito elementare $\omega \in \Omega$ un valore numerico $X(\omega)$.

La **densità discreta** (o funzione di probabilità) di $X$ è data da:
$$p_X(x) := P(X = x) = P(\{\omega \in \Omega \mid X(\omega) = x\})$$
soddisfacente $\sum_x p_X(x) = 1$.

### Principali Distribuzioni Discrete Notevoli

| Modello | Notazione | Densità Discreta $p_X(k)$ | Valore Atteso $E[X]$ | Varianza $\text{Var}(X)$ |
| :--- | :--- | :--- | :---: | :---: |
| **Bernoulli** | $\text{Ber}(p)$ | $p^k (1-p)^{1-k}, \quad k \in \{0, 1\}$ | $p$ | $p(1-p)$ |
| **Binomiale** | $B(n, p)$ | $\binom{n}{k} p^k (1-p)^{n-k}, \quad k \in \{0, \dots, n\}$ | $np$ | $np(1-p)$ |
| **Ipergeometrica** | $\text{Hyp}(N, K, n)$ | $\frac{\binom{K}{k}\binom{N-K}{n-k}}{\binom{N}{n}}, \quad k \le \min(n, K)$ | $n \frac{K}{N}$ | $n \frac{K}{N}\left(1-\frac{K}{N}\right)\frac{N-n}{N-1}$ |
| **Geometrica** | $\text{Geom}(p)$ | $(1-p)^{k-1} p, \quad k \in \{1, 2, \dots\}$ | $\frac{1}{p}$ | $\frac{1-p}{p^2}$ |
| **Poisson** | $\text{Poiss}(\lambda)$ | $\frac{\lambda^k}{k!} e^{-\lambda}, \quad k \in \{0, 1, 2, \dots\}$ | $\lambda$ | $\lambda$ |

*Proprietà di assenza di memoria della Geometrica:*
$$P(X > s + t \mid X > s) = P(X > t) \quad \forall s, t \in \mathbb{N}$$
Il tempo già trascorso in attesa del primo successo non fornisce alcuna informazione sul tempo residuo.

### Distribuzioni Congiunte e Somma di V.A.
Per una coppia di variabili aleatorie $(X, Y)$:
- **Densità congiunta:** $p_{X, Y}(x, y) = P(X = x, Y = y)$.
- **Densità marginali:** $p_X(x) = \sum_y p_{X, Y}(x, y)$ e $p_Y(y) = \sum_x p_{X, Y}(x, y)$.
- **Indipendenza stocastica di v.a.:** $X$ e $Y$ sono indipendenti se $p_{X, Y}(x, y) = p_X(x) p_Y(y)$ per ogni coppia $(x, y)$.
- **Somma di v.a. indipendenti (Convoluzione discreta):**
  $$p_{X+Y}(z) = \sum_x p_X(x) p_Y(z - x)$$

## Valore Atteso, Varianza e Covarianza

### Valore Atteso (Speranza Matematica)
Il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>valore atteso</b></font></mark> di una variabile aleatoria discreta $X$ è definito come la media dei valori ponderata con le rispettive probabilità:
$$E[X] := \sum_{\omega \in \Omega} X(\omega) P(\{\omega\}) = \sum_x x \cdot p_X(x)$$

Proprietà essenziali:
- **Linearità dell'operatore speranza:**
  $$E[aX + bY + c] = a E[X] + b E[Y] + c$$
  *Nota epistemologica fondamentale:* La linearità vale **sempre**, sia che le variabili siano indipendenti oppure dipendenti.
- **Moltiplicazione sotto indipendenza:** Se $X$ e $Y$ sono stocasticamente indipendenti, allora:
  $$E[X \cdot Y] = E[X] \cdot E[Y]$$
- **Valore Atteso Totale Condizionato:** $E[X] = E[E[X \mid Y]] = \sum_y E[X \mid Y = y] p_Y(y)$.

### Varianza e Deviazione Standard
La <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>varianza</b></font></mark> quantifica la dispersione quadratica media attorno al baricentro atteso $\mu = E[X]$:
$$\text{Var}(X) := E[(X - E[X])^2] = E[X^2] - (E[X])^2$$
La deviazione standard è $\sigma_X := \sqrt{\text{Var}(X)}$.
Proprietà di scala: $\text{Var}(aX + b) = a^2 \text{Var}(X)$.

### Covarianza e Correlazione Lineare
La <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>covarianza</b></font></mark> misura il grado di associazione lineare congiunta tra due variabili:
$$\text{Cov}(X, Y) := E[(X - E[X])(Y - E[Y])] = E[XY] - E[X]E[Y]$$

Varianza della somma:
$$\text{Var}(X + Y) = \text{Var}(X) + \text{Var}(Y) + 2\text{Cov}(X, Y)$$
Se $X$ e $Y$ sono indipendenti $\implies \text{Cov}(X, Y) = 0$, e quindi:
$$\text{Var}(X + Y) = \text{Var}(X) + \text{Var}(Y)$$

Il **coefficiente di correlazione lineare di Bravais-Pearson**:
$$\rho(X, Y) := \frac{\text{Cov}(X, Y)}{\sigma_X \sigma_Y} \in [-1, 1]$$
- $|\rho| = 1 \iff Y = aX + b$ (perfetta dipendenza affine deterministica).
- $\rho = 0 \iff X, Y$ sono incorrelate.

## Spazi Generali e Variabili Aleatorie Continue

### Spazio di Probabilità Generale $(\Omega, \mathcal{F}, P)$
Negli spazi non numerabili non è possibile assegnare probabilità non nulle a singoli punti senza violare gli assiomi. Si introduce quindi una $\sigma$-algebra $\mathcal{F}$ di eventi e l'assioma di **$\sigma$-additività**:
$$P\left( \bigcup_{n=1}^\infty A_n \right) = \sum_{n=1}^\infty P(A_n) \quad \text{per } A_i \cap A_j = \emptyset \, (i \neq j)$$

### Funzione di Ripartizione (Distribuzione Cumulativa)
Per qualunque variabile aleatoria $X$, la sua **funzione di ripartizione** $F_X: \mathbb{R} \to [0, 1]$ è:
$$F_X(t) := P(X \le t)$$
Proprietà analitiche universali:
1. $F_X(t)$ è monotona non decrescente.
2. Continua da destra: $\lim_{h \to 0^+} F_X(t + h) = F_X(t)$.
3. Limiti asintotici: $\lim_{t \to -\infty} F_X(t) = 0$ e $\lim_{t \to +\infty} F_X(t) = 1$.
4. Calcolo probabilistico su intervalli: $P(a < X \le b) = F_X(b) - F_X(a)$.

### Variabili Aleatorie Continue e Densità $f_X(x)$
Una v.a. $X$ si dice assolutamente continua se esiste una funzione $f_X(x) \ge 0$ (funzione di densità di probabilità, PDF) tale che:
$$F_X(t) = \int_{-\infty}^t f_X(x)\,dx \implies P(a \le X \le b) = \int_a^b f_X(x)\,dx$$
Condizione di normalizzazione: $\int_{-\infty}^{+\infty} f_X(x)\,dx = 1$.
Per il teorema fondamentale del calcolo integrale: $f_X(x) = F'_X(x)$ nei punti di continuità.
Ne consegue che la probabilità di un singolo punto è sempre nulla: $P(X = c) = 0$ per ogni $c \in \mathbb{R}$.

Momenti per v.a. continue:
$$E[X] = \int_{-\infty}^{+\infty} x f_X(x)\,dx, \quad E[g(X)] = \int_{-\infty}^{+\infty} g(x) f_X(x)\,dx$$

### Principali Modelli Continui
1. **Uniforme Continua $U(a, b)$:**
   $$f(x) = \frac{1}{b - a} \quad \text{per } x \in [a, b], \quad E[X] = \frac{a+b}{2}, \quad \text{Var}(X) = \frac{(b-a)^2}{12}$$
2. **Esponenziale $\text{Exp}(\lambda)$ ($\lambda > 0$):**
   $$f(x) = \lambda e^{-\lambda x} \quad (x \ge 0), \quad F(t) = 1 - e^{-\lambda t}, \quad E[X] = \frac{1}{\lambda}, \quad \text{Var}(X) = \frac{1}{\lambda^2}$$
   Gode dell'assenza di memoria nel continuo: $P(X > s+t \mid X > s) = P(X > t)$. Modello universale dei tempi di vita e d'attesa.
3. **Normale (o Gaussiana) $N(\mu, \sigma^2)$:**
   $$f(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-\frac{(x - \mu)^2}{2\sigma^2}}$$
   Standardizzazione: $Z = \frac{X - \mu}{\sigma} \sim N(0, 1)$ con densità simmetrica a campana $\phi(z) = \frac{1}{\sqrt{2\pi}}e^{-z^2/2}$ e funzione di ripartizione standard $\Phi(z)$.

## Teoremi Limite e Convergenza Asintotica

### Disuguaglianze Notevoli
1. **Disuguaglianza di Markov:** Sia $Y \ge 0$ una v.a. non negativa. Per ogni $t > 0$:
   $$P(Y \ge t) \le \frac{E[Y]}{t}$$
2. **Disuguaglianza di Chebyshev:** Sia $X$ una v.a. con media $\mu$ e varianza $\sigma^2 < \infty$. Per ogni $\varepsilon > 0$:
   $$P(|X - \mu| \ge \varepsilon) \le \frac{\sigma^2}{\varepsilon^2}$$
   Fornisce un limite superiore deterministico alle oscillazioni di una variabile attorno alla propria media.

### La Legge Debole dei Grandi Numeri (WLLN)
Sia $(X_n)_{n \ge 1}$ una successione di variabili aleatorie indipendenti e identicamente distribuite (i.i.d.), aventi valore atteso finito $E[X_i] = \mu$ e varianza finita $\text{Var}(X_i) = \sigma^2$.
Consideriamo la media campionaria aritmetica:
$$\bar{X}_n = \frac{1}{n} \sum_{i=1}^n X_i$$
Si nota facilmente che $E[\bar{X}_n] = \mu$ e $\text{Var}(\bar{X}_n) = \frac{\sigma^2}{n}$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema (Legge Debole dei Grandi Numeri):</b></font></mark>
Per ogni $\varepsilon > 0$, la media campionaria converge in probabilità alla media teorica $\mu$:
$$\lim_{n \to \infty} P(|\bar{X}_n - \mu| \ge \varepsilon) = 0$$

*Dimostrazione:*
Applicando la disuguaglianza di Chebyshev alla variabile $\bar{X}_n$:
$$P(|\bar{X}_n - \mu| \ge \varepsilon) \le \frac{\text{Var}(\bar{X}_n)}{\varepsilon^2} = \frac{\sigma^2}{n \varepsilon^2} \xrightarrow{n \to \infty} 0$$

Questo risultato giustifica rigorosamente l'approccio frequentista: la frequenza relativa dei successi in prove bernoulliane ripetute converge stocasticamente alla probabilità teorica del singolo evento.

### Il Teorema Centrale del Limite (CLT)
Mentre la Legge dei Grandi Numeri sancisce la concentrazione della media attorno al baricentro $\mu$, il Teorema Centrale del Limite descrive l'esatta forma della fluttuazione statistica su scala $\sqrt{n}$.

<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Teorema Centrale del Limite:</b></font></mark>
Sia $(X_n)_{n \ge 1}$ una successione di v.a. i.i.d. con $E[X_i] = \mu$ e $\text{Var}(X_i) = \sigma^2 \in (0, \infty)$. La variabile standardizzata della somma campionaria:
$$Z_n := \frac{\sum_{i=1}^n X_i - n\mu}{\sigma \sqrt{n}} = \frac{\bar{X}_n - \mu}{\sigma / \sqrt{n}}$$
converge in legge (in distribuzione) alla variabile casuale normale standard $N(0, 1)$:
$$\lim_{n \to \infty} P(Z_n \le z) = \Phi(z) = \int_{-\infty}^z \frac{1}{\sqrt{2\pi}} e^{-u^2 / 2}\,du \quad \forall z \in \mathbb{R}$$

Il Teorema Centrale del Limite spiega perché la distribuzione normale regna sovrana nei processi empirici, fisici e computazionali: la somma aggregata di un gran numero di perturbazioni microscopiche indipendenti, qualunque sia la loro legge di probabilità di partenza, assume asintoticamente la configurazione gaussiana.
