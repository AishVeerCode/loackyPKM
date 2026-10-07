---
status: permanent
type: lecture
area: education
related: ["[[Lezione 4 - Funzioni II Proprieta e Invertibilita]]", "[[Lezione 8 - Densita Sommatorie e Teorema del Binomio]]"]
aliases: ["Lezione 9", "Fondamenti di Matematica Lezione 9", "Funzioni Reali Parte 1"]
source: Lezione 9.pdf
title: "Lezione 9 - Funzioni Reali ed Estremi"
date: '2026-10-07'
updated: 2026-10-07T17:50
tags: [education/university, education/matematica, education/lecture]
summary: "Struttura di anello ordinato e reticolare di R^A, limitatezza di funzioni reali, estremo superiore e inferiore, punti di massimo e minimo globale e successioni."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[Lezione 9 - Funzioni Reali ed Estremi]]

# Lezione 9 - Funzioni Reali ed Estremi

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Le funzioni reali</b></font></mark> a valori in $\mathbb{R}$ estendono le nozioni algebriche e d'ordine dei numeri reali allo spazio funzionale $\mathbb{R}^A$, dotandolo della struttura di anello commutativo unitario ordinato e reticolo. La lezione analizza perché l'ordinamento funzionale puntuale non è totale, introduce le operazioni reticolari di estremo superiore e inferiore di funzioni ($f \vee g$ e $f \wedge g$) assieme alle scomposizioni in parte positiva, negativa e valore assoluto, per poi estendere rigorosamente i concetti di limitatezza, estremo superiore, estremo inferiore, massimo e minimo globale attraverso l'immagine $f(A) \subseteq \mathbb{R}$, distinguendo con precisione il valore scalare dell'estremo dall'insieme dei punti estremali ($\mathrm{argmax}$ e $\mathrm{argmin}$).

## Nozione di Funzione Reale e Modelli Applicativi

In continuità con lo studio generale delle relazioni e funzioni intrapreso in [[Lezione 4 - Funzioni II Proprieta e Invertibilita]], si esaminano le funzioni il cui codominio è il campo reale $\mathbb{R}$.

### Definizione Generale
Sia $A$ un insieme non vuoto qualsiasi. Si definisce <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>funzione reale</b></font></mark> definita su $A$ ogni applicazione:
$$f: A \to \mathbb{R}$$
L'insieme di tutte le funzioni reali aventi dominio $A$ si denota con:
$$\mathbb{R}^A := \{f \mid f: A \to \mathbb{R}\}$$

Casi notevoli:
- Se $A \subseteq \mathbb{R}$, $f$ si dice **funzione reale di una variabile reale**.
- Se $A = \mathbb{N}$, la funzione $f: \mathbb{N} \to \mathbb{R}$ individua una **successione reale**, in cui l'immagine $f(n)$ si indica convenzionalmente con $a_n$ e la funzione con $(a_n)_{n \in \mathbb{N}}$.
- Tra le funzioni in $\mathbb{R}^A$ figurano le **funzioni costanti**: per ogni $c \in \mathbb{R}$, la funzione $x \mapsto c$ è indicata con il simbolo $c$ medesimo.

### Modelli di Rappresentazione del Reale
Le funzioni reali formalizzano fenomeni fisici, ingegneristici ed economici:
1. **Distribuzione termica spaziale:** Nello spazio tridimensionale identificato con $\mathbb{R}^3 = \mathbb{R} \times \mathbb{R} \times \mathbb{R}$, data una regione $A \subset \mathbb{R}^3$, la temperatura nei punti $(x, y, z) \in A$ è modellata dalla funzione reale:
   $$T: A \to \mathbb{R}, \qquad (x, y, z) \mapsto T(x, y, z)$$
2. **Dinamica del moto oscillatorio:** Il moto di un pendolo nell'intervallo temporale $A = [t_0, t_1]$ è descritto dall'angolo orientato rispetto alla verticale:
   $$\theta: [t_0, t_1] \to \mathbb{R}, \qquad t \mapsto \theta(t)$$
3. **Serie temporali dei mercati:** L'andamento del prezzo giornaliero di un bene su base annua si esprime come funzione reale discreta:
   $$f: \{1, 2, \dots, 365\} \to \mathbb{R}, \qquad n \mapsto f(n)$$

## L'Anello Ordinato e Reticolare $(\mathbb{R}^A, +, \cdot, \le)$

### Operazioni Algebriche Puntuali
Sull'insieme $\mathbb{R}^A$ sono definite le operazioni di somma e prodotto per via puntuale: dati $f, g \in \mathbb{R}^A$:
- **Somma di funzioni:**
  $$(f + g): A \to \mathbb{R}, \qquad (f + g)(x) := f(x) + g(x)$$
- **Prodotto di funzioni:**
  $$(f \cdot g): A \to \mathbb{R}, \qquad (f \cdot g)(x) := f(x) \cdot g(x)$$

La terna $(\mathbb{R}^A, +, \cdot)$ soddisfa le proprietà algebriche fondamentali:
- **A1–A4:** $(\mathbb{R}^A, +)$ è un **gruppo abeliano** con elemento neutro la funzione nulla $0: x \mapsto 0$ e opposto $(-f): x \mapsto -f(x)$.
- **M1, M2, M4:** La moltiplicazione è associativa, commutativa e ammette elemento neutro dato dalla funzione costante $1: x \mapsto 1$.
- **D:** Vale la proprietà distributiva del prodotto rispetto alla somma.

> [!WARNING] Assenza della Struttura di Campo: Mancanza di M3
> Diversamente da $\mathbb{R}$, la struttura $(\mathbb{R}^A, +, \cdot)$ **non è un campo** (non soddisfa l'assioma M3).
> Infatti, se una funzione $f \neq 0$ si annulla anche in un solo punto $x_0 \in A$ ($f(x_0) = 0$), non può esistere alcuna funzione $g \in \mathbb{R}^A$ tale che $f \cdot g = 1$, poiché $(f \cdot g)(x_0) = f(x_0)g(x_0) = 0 \cdot g(x_0) = 0 \neq 1$.
> La funzione reciproca $1/f$ esiste se e solo se $f$ è **ovunque non nulla**:
> $$\forall x \in A: f(x) \neq 0 \implies \left(\frac{1}{f}\right)(x) := \frac{1}{f(x)}$$
> Di conseguenza, $(\mathbb{R}^A, +, \cdot)$ è un <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>anello commutativo unitario</b></font></mark>.

### Relazione d'Ordine Parziale Puntuale
Si definisce una relazione d'ordine su $\mathbb{R}^A$ ponendo:
$$f \le g \stackrel{\text{def}}{\iff} \forall x \in A: f(x) \le g(x)$$

La relazione $\le$ soddisfa gli assiomi di ordine parziale:
- **O1 Riflessività:** $\forall f \in \mathbb{R}^A: f \le f$.
- **O2 Antisimetria:** $\forall f, g \in \mathbb{R}^A: f \le g \land g \le f \implies f = g$.
- **O3 Transitività:** $\forall f, g, h \in \mathbb{R}^A: f \le g \land g \le h \implies f \le h$.

> [!IMPORTANT] Non Totalità dell'Ordine Funzionale
> L'ordinamento su $\mathbb{R}^A$ **non è totale**: due funzioni non sono necessariamente confrontabili. Se ad esempio i grafici di $f$ e $g$ si intersecano (ossia esistono $x_1, x_2 \in A$ tali che $f(x_1) < g(x_1)$ ma $f(x_2) > g(x_2)$), non risulta né $f \le g$ né $g \le f$.

L'ordinamento è compatibile con le operazioni algebriche:
- **AO Compatibilità additiva:** $\forall f, g, h \in \mathbb{R}^A: f \le g \implies f + h \le g + h$.
- **MO Compatibilità moltiplicativa:** $\forall f, g, h \in \mathbb{R}^A: h \ge 0 \land f \le g \implies f \cdot h \le g \cdot h$.
Pertanto $(\mathbb{R}^A, +, \cdot, \le)$ è un <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>anello ordinato</b></font></mark>.

### Operazioni Reticolari su Funzioni
Dati $f, g \in \mathbb{R}^A$, si definiscono puntualmente le funzioni:
- **Estremo superiore reticolare ($f \vee g$):**
  $$(f \vee g)(x) := \sup\{f(x), g(x)\} = \max\{f(x), g(x)\}$$
- **Estremo inferiore reticolare ($f \wedge g$):**
  $$(f \wedge g)(x) := \inf\{f(x), g(x)\} = \min\{f(x), g(x)\}$$

*Nota concettuale:* La funzione $f \vee g$ rappresenta la più piccola funzione in $\mathbb{R}^A$ che sia maggiore o uguale sia di $f$ che di $g$. Essa non coincide con il massimo della coppia $\{f, g\}$ nell'ordine parziale, in quanto né $f \le g$ né $g \le f$ sussistono in generale.

In analogia con i numeri reali (studiati in [[Lezione 6 - Valore Assoluto e Numeri Naturali]]), si definiscono:
- **Parte positiva:** $f^+ := f \vee 0$, ovvero $f^+(x) = \max\{f(x), 0\}$
- **Parte negativa:** $f^- := (-f) \vee 0$, ovvero $f^-(x) = \max\{-f(x), 0\}$
- **Valore assoluto di una funzione:** $|f| := f \vee (-f)$, ovvero $|f|(x) = |f(x)|$

Valgono per ogni $x \in A$ le identità:
$$f = f^+ - f^-, \qquad |f| = f^+ + f^-$$

## Limitatezza di Funzioni Reali

La limitatezza di una funzione reale si definisce riconducendosi alla limitatezza della sua immagine $f(A) \subseteq \mathbb{R}$, dove:
$$f(A) := \{f(x) \mid x \in A\} \subset \mathbb{R}$$

### Definizioni
Sia $f: A \to \mathbb{R}$. Allora:
1. $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>limitata superiormente</b></font></mark> se l'immagine $f(A)$ è limitata superiormente in $\mathbb{R}$, ossia:
   $$\exists M \in \mathbb{R} \text{ tale che } \forall x \in A: f(x) \le M$$
   Ogni numero $M$ siffatto è detto **maggiorante** di $f$.
2. $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>limitata inferiormente</b></font></mark> se l'immagine $f(A)$ è limitata inferiormente in $\mathbb{R}$, ossia:
   $$\exists m \in \mathbb{R} \text{ tale che } \forall x \in A: m \le f(x)$$
   Ogni numero $m$ siffatto è detto **minorante** di $f$.
3. $f$ si dice <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>limitata</b></font></mark> se è contemporaneamente limitata superiormente e inferiormente:
   $$\exists m, M \in \mathbb{R} \text{ tali che } \forall x \in A: m \le f(x) \le M$$
   *Formulazione modulare equivalente:* Posto $C := \max\{|m|, |M|\} \in \mathbb{R}_+$, $f$ è limitata se e solo se:
   $$\exists C \in \mathbb{R}_+ \text{ tale che } \forall x \in A: |f(x)| \le C$$

### Negazione Logica: Funzioni Illimitate
Quando una funzione non è limitata, si dice illimitata. Negando formalmente i quantificatori:
- **Illimitata superiormente:**
  $$\neg(\exists M \in \mathbb{R}, \forall x \in A : f(x) \le M) \iff \forall M \in \mathbb{R}, \exists x \in A : f(x) > M$$
- **Illimitata inferiormente:**
  $$\neg(\exists m \in \mathbb{R}, \forall x \in A : m \le f(x)) \iff \forall m \in \mathbb{R}, \exists x \in A : f(x) < m$$

## Estremo Superiore ed Estremo Inferiore di Funzioni Reali

### Definizione e Caratterizzazione $\varepsilon$
Sia $f: A \to \mathbb{R}$. Si definisce estremo superiore (risp. inferiore) di $f$ su $A$ l'estremo superiore (risp. inferiore) del suo insieme immagine:
$$\sup_A f = \sup_{x \in A} f(x) := \sup f(A), \qquad \inf_A f = \inf_{x \in A} f(x) := \inf f(A)$$

Dalla caratterizzazione operativa di $\sup$ e $\inf$ sui reali (stabilita in [[Lezione 5 - i Numeri Reali e Assioma di Completezza]]), un numero $\lambda \in \mathbb{R}$ è l'estremo superiore di $f$ ($\lambda = \sup_A f$) se e solo se:
1. **Condizione di maggiorante:** $\forall x \in A: f(x) \le \lambda$
2. **Condizione di approssimazione:** $\forall \varepsilon > 0, \exists x \in A : f(x) > \lambda - \varepsilon$

Dualmenete, un numero $\mu \in \mathbb{R}$ è l'estremo inferiore di $f$ ($\mu = \inf_A f$) se e solo se:
1. **Condizione di minorante:** $\forall x \in A: \mu \le f(x)$
2. **Condizione di approssimazione:** $\forall \varepsilon > 0, \exists x \in A : f(x) < \mu + \varepsilon$

### Esempio Notevole: La Funzione Arcotangente
Consideriamo $\mathrm{arctg}: \mathbb{R} \to \mathbb{R}$. Poiché l'immagine è l'intervallo aperto $]-\pi/2, \pi/2[$:
$$\sup_{x \in \mathbb{R}} \mathrm{arctg}(x) = \frac{\pi}{2}, \qquad \inf_{x \in \mathbb{R}} \mathrm{arctg}(x) = -\frac{\pi}{2}$$
Entrambi i valori non sono mai assunti dalla funzione sui reali (quindi massimo e minimo non esistono).

### Esercizi di Verifica e Calcolo di Estremi

#### Esercizio 1: $f(x) = \frac{1}{x \sin x}$ su $]0, \pi[$
- **Limitatezza inferiore:** Per ogni $x \in ]0, \pi[$, $\sin x > 0$ e $x > 0$, dunque $f(x) > 0$. Ne segue che $0$ è un minorante e $f$ è limitata inferiormente.
- **Illimitatezza superiore:** Fissato arbitrariamente $M > 0$, risolviamo la disequazione:
  $$\frac{1}{x \sin x} > M \iff x \sin x < \frac{1}{M}$$
  Poiché per $x \in ]0, \pi[$ si ha $0 < \sin x \le 1$, vale $x \sin x \le x$.
  Pertanto, la condizione $x < 1/M$ implica a maggior ragione $x \sin x < 1/M$.
  Basta scegliere qualsiasi $x < \min\left\{\frac{1}{M}, \pi\right\}$ per ottenere $f(x) > M$. Essendo $M$ arbitrario, la funzione è illimitata superiormente.

#### Esercizio 2: $f(x) = \frac{-x\sqrt{x} + 1}{1 - x}$ su $]0, 1[$
- **Calcolo dell'estremo inferiore:** Trasformiamo algebricamente l'espressione:
  $$f(x) = \frac{-x\sqrt{x} + 1 - x + x}{1 - x} = 1 + \frac{x - x\sqrt{x}(1 - x)}{1 - x} = 1 + \frac{x}{1 - x}\big(1 - \sqrt{x}(1 - x)\big)$$
  Poiché $0 < x < 1$, si ha $0 < \sqrt{x} < 1$ e $0 < 1 - x < 1$, da cui $0 < \sqrt{x}(1 - x) < 1$.
  Ne consegue $1 - \sqrt{x}(1 - x) > 0$, e poiché $\frac{x}{1 - x} > 0$, si conclude che $f(x) > 1$. Il numero $1$ è quindi un minorante.
  Verifichiamo la seconda condizione per $\varepsilon > 0$:
  $$f(x) < 1 + \varepsilon \iff \frac{x}{1 - x}\big(1 - \sqrt{x}(1 - x)\big) < \varepsilon \impliedby \frac{x}{1 - x} < \varepsilon$$
  Risolvendo $\frac{x}{1 - x} < \varepsilon$:
  $$x < \varepsilon(1 - x) \iff (1 + \varepsilon)x < \varepsilon \iff x < \frac{\varepsilon}{1 + \varepsilon}$$
  Scegliendo qualsiasi $x \in \left]0, \frac{\varepsilon}{1 + \varepsilon}\right[ \subset ]0, 1[$, la disuguaglianza $f(x) < 1 + \varepsilon$ è soddisfatta. Dunque:
  $$\inf_{]0, 1[} f = 1$$
- **Illimitatezza superiore:** Per provare che per ogni $M > 0$ esiste $x \in ]0, 1[$ tale che $f(x) > M$, osserviamo che essendo $-1 < -x\sqrt{x} < 0$, vale la minorazione:
  $$f(x) \ge \frac{-1 + 1}{1 - x} \implies \text{più precisamente: } f(x) > \frac{1 - x}{1 - x} = 1, \quad \text{e per } x \to 1^-: \frac{-x\sqrt{x} + 1}{1 - x} > \frac{-1 + 1}{1-x} \text{ (singolarità)}$$
  Minorando direttamente con $g(x) := -1 + \frac{1}{1 - x}$:
  $$-1 + \frac{1}{1 - x} > M \iff \frac{1}{1 - x} > M + 1 \iff 1 - x < \frac{1}{M + 1} \iff x > 1 - \frac{1}{M + 1}$$
  Ogni $x \in \left]1 - \frac{1}{M + 1}, 1\right[$ soddisfa $f(x) > M$. La funzione è illimitata superiormente.

> [!TIP] Principio di Maggiorazione e Minorazione
> Per risolvere disequazioni parametriche $f(x) < b$ (rispettivamente $f(x) > b$) in cui è sufficiente mostrare l'esistenza di almeno una soluzione, è prassi individuare una funzione ausiliaria più semplice $g(x)$ tale che $f(x) \le g(x)$ (rispettivamente $f(x) \ge g(x)$). Risolvendo la disequazione più restrittiva $g(x) < b$ si garantisce la validità per $f(x)$.

## Massimi e Minimi Globali ed Estremi di Successioni

### Massimo e Minimo Globale (Assoluto)
Sia $f: A \to \mathbb{R}$. Il <mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>massimo di una funzione</b></font></mark> è il massimo dell'immagine $f(A)$, se esiste:
$$\max_A f = \max_{x \in A} f(x) := \max f(A)$$

Un numero $M \in \mathbb{R}$ è il massimo di $f$ se soddisfa due condizioni:
1. **Appartenenza all'immagine:** $\exists \bar{x} \in A$ tale che $f(\bar{x}) = M$.
2. **Universalità della disuguaglianza:** $\forall x \in A: f(x) \le M$.

### Punti Estremali Globali ($\mathrm{argmax}$ e $\mathrm{argmin}$)
I punti del dominio in cui il valore massimo viene effettivamente assunto sono detti <mark style="background:rgba(181, 113, 255, 0.36)"><font color="#9a54c1"><b>punti di massimo globale (o assoluto)</b></font></mark>:
$$\bar{x} \in A \text{ è punto di massimo globale} \iff \forall x \in A: f(x) \le f(\bar{x})$$

L'insieme di tutti i punti di massimo globale si denota con:
$$\mathrm{argmax}_A f := \{\bar{x} \in A \mid f(\bar{x}) = \max_A f\}$$

Analogamente si definiscono il **minimo globale** $\min_A f := \min f(A)$ e l'insieme dei **punti di minimo globale**:
$$\mathrm{argmin}_A f := \{\bar{x} \in A \mid f(\bar{x}) = \min_A f\}$$

> [!NOTE] Unicità del Valore vs Molteplicità dei Punti
> Il valore del massimo (o del minimo) di una funzione, qualora esista, è **unico** per l'antisimmetria dell'ordinamento reale.
> Al contrario, i **punti di massimo** possono essere unici, molteplici o persino infiniti:
> - Per la funzione seno $\sin: \mathbb{R} \to \mathbb{R}$:
>   $$\max_{\mathbb{R}} \sin = 1, \qquad \mathrm{argmax}_{\mathbb{R}} \sin = \left\{\frac{\pi}{2} + 2k\pi \;\middle|\; k \in \mathbb{Z}\right\} \quad (\text{infiniti punti})$$
>   $$\min_{\mathbb{R}} \sin = -1, \qquad \mathrm{argmin}_{\mathbb{R}} \sin = \left\{-\frac{\pi}{2} + 2k\pi \;\middle|\; k \in \mathbb{Z}\right\}$$
> - Per la parabola $f(x) = x^2$ su $\mathbb{R}$:
>   $$\min_{\mathbb{R}} f = 0, \qquad \mathrm{argmin}_{\mathbb{R}} f = \{0\} \quad (\text{unico punto})$$
>   mentre $\max_{\mathbb{R}} f$ non esiste poiché $f$ è illimitata superiormente.

### Estremi di Successioni Reali
Essendo una successione reale un'applicazione $a: \mathbb{N} \to \mathbb{R}$, le definizioni si applicano immediatamente ponendo $A = \mathbb{N}$. Le notazioni diventano $\sup_{n \in \mathbb{N}} a_n$ e $\inf_{n \in \mathbb{N}} a_n$, e le proprietà caratteristiche si declinano nella forma discreta:

$$\sup_{n \in \mathbb{N}} a_n = \lambda \iff \begin{cases} \text{1)} & \forall n \in \mathbb{N}: a_n \le \lambda \\ \text{2)} & \forall \varepsilon > 0, \; \exists n \in \mathbb{N} : a_n > \lambda - \varepsilon \end{cases}$$

$$\inf_{n \in \mathbb{N}} a_n = \lambda \iff \begin{cases} \text{1)} & \forall n \in \mathbb{N}: \lambda \le a_n \\ \text{2)} & \forall \varepsilon > 0, \; \exists n \in \mathbb{N} : a_n < \lambda + \varepsilon \end{cases}$$
