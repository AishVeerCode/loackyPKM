---
status: permanent
type: lecture
area: education
related: ["[[Dimostrazioni]]", "[[Assiomi, proposizioni ecc...]]", "[[University]]"]
aliases: ["Lezione 15 - 15: Proprietà dei limiti", "Lezione 15"]
source: "Lezione 15.pdf"
title: "Lezione 15 - 15: Proprietà dei limiti"
date: '2026-10-20'
updated: '2026-10-20T20:22'
tags: [education/university, education/matematica, education/lecture]
summary: "Lezione 15: Proprietà dei limiti
G. Franzina∗ & S. Salzo †
16 Ottobre 2026
1 Algebra dei limiti (esempi)
Nella scorsa lezione abbiamo osservato un’importante proprietà dei limiti: rispettano."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Lezione 15 - 15: Proprietà dei limiti]]

# Lezione 15 - 15: Proprietà dei limiti

## Sintesi Esecutiva
<mark style="background:rgba(255, 193, 69, 0.32)"><font color="#cc8800"><b>Lezione 15 - 15: Proprietà dei limiti</b></font></mark> introduce concetti e strumenti analitici fondamentali per la teoria matematica. La trattazione sviluppa definizioni rigorose, proprietà operative ed enunciati formali completi di verifiche deduttive.

## Quadro Teorico ed Enunciati

> [!IMPORTANT] Teorema 2.1: (della permanenza delle disuguaglianze). Sia A⊂ R e x0\in  R un punto di
> accumulazione perA in R. Sianof : A\to  R e g : A\to  R due funzioni e supponiamo che
lim
x\to x0
f (x) = \ell\in  R e lim
x\to x0
g(x) = m\in  R.
Allora
\ell>m \implies f (x)>g (x) in un intorno dix0.


> [!IMPORTANT] Corollario 2.3.: Sia A ⊂ R e x0 \in  R un punto di accumulazione per A in R. Siano
> f : A\to  R e \lambda\in  R e supponiamo chelimx\to x0f (x) = \ell\in  R. Allora
\ell>\lambda (risp. \ell<\lambda ) \implies  f (x)>\lambda (risp. f (x)<\lambda ) in un intorno dix0.


> [!IMPORTANT] Corollario 2.4: (teorema della permanenza del segno). Sia A⊂ R e f : A\to  R. Siax0\in  R
> un punto di accumulazione perA. Supponiamo che limx\to x0f (x) = \ell\in  R. Allora
\ell> 0 (risp. \ell< 0) \implies  f (x)> 0 (risp. < 0) in un intorno dix0.


> [!IMPORTANT] Corollario 2.5: (teorema di prolungamento delle disuguaglianze). Sia A⊂ R e x0\in  R un
> punto di accumulazione perA in R. Sianof : A\to  R eg : A\to  R due funzioni e supponiamo
che limx\to x0f (x) = \ell e limx\to x0g(x) = m. Allora
f (x)≤g(x) in un intorno dix0 \implies  \ell\le m.


> [!IMPORTANT] Teorema 2.7: (del confronto o della convergenza obbligata o dei carabinieri). Sia A⊂ R e
> x0\in  R un punto di accumulazione perA in R. Siano f, g e h tre funzioni definite inA a
valori in R e supponiamo che
a) f (x)≤g(x)≤h(x) in un intorno dix0.
b) lim
x\to x0
f (x) = \ell e lim
x\to x0
h(x) = \ell conℓ\in  R.
Allora lim
x\to x0
g(x) = \ell.


> [!IMPORTANT] Corollario 2.9.: Sia A⊂ R e x0\in  R un punto di accumulazione perA. Sianof : A\to  R e
> g : A\to  R due funzioni e supponiamo che
|f (x)|≤ g(x) in un intorno dix0.
Allora si ha
lim
x\to x0
g(x) = 0 \implies  lim
x\to x0
f (x) = 0.


> [!IMPORTANT] Corollario 2.13.: Sia A⊂ R e x0\in  R un punto di accumulazione perA. Siano f : A\to  R
> e g : A\to  R due funzioni e supponiamo che
lim
x\to x0
f (x) = 0 e che g(x) è limitata in un intorno dix0.
Allora lim
x\to x0
f (x)g(x) = 0.


> [!IMPORTANT] Proposizione 2.15.: Sia A⊂ R, x0 \in  R punto di accumulazione perA e f : A\to  R.
> Supponiamo che limx\to x0f (x) = \ell\in  R. Allora valgono le seguenti affermazioni
(i) Se \ell> −∞, alloraf è limitata inferiormente in un intorno dix0, cioè
\exists \lambda\in  R tale cheλ\le f (x) in un intorno dix0.
(ii) Se \ell< +∞, alloraf è limitata superiormente in un intorno dix0, cioè
\exists \lambda\in  R tale chef (x)≤\lambda in un intorno dix0.


> [!IMPORTANT] Teorema 2.16: (somma di limiti infiniti). Sia A⊂ R e x0\in  R punto di accumulazione per
> A. Sianof :A\to  R e g :A\to  R e supponiamo che
lim
x\to x0
f (x) = \ell\in {−∞, +∞}.
Valgono le seguenti proposizioni.
(i) Se \ell = +∞ e g è limitata inferiormente in un intorno dix0, limx\to x0(f +g)(x) = \ell.
(ii) Se \ell =−∞ e g è limitata superiormente in un intorno dix0, limx\to x0(f +g)(x) = \ell.
Il contenuto di questo teorema possiamo schematizzarlo nel modo seguente
f (x)|{z}
↓
+∞
+g(x)|{z}
l.i.
\to  +∞ e f (x)|{z}
↓
−∞
+g(x)|{z}
l.s.
\to −∞.
Per esempio possiamo affermare chelimx\to 0
x2 + sen(1/x) = +∞, perché la seconda funzione,
anche se non ha limite, è limitata inferiormente.


> [!IMPORTANT] Teorema 2.16: e dalla Proposizione 2.15, segue che
> 


se \ell = +∞ e m> −∞, allora lim
x\to x0
f (x) +g(x) = +∞
se \ell =−∞ e m< +∞, allora lim
x\to x0
f (x) +g(x) =−∞.
Perciò, se si estende l’algebra diR su R ponendo, per convenzione,
\forall m\in  R∪{ +∞} : (+ ∞) +m =m + (+∞) = +∞
\forall m\in  R∪{−∞} : ( −∞) +m =m + (−∞) =−∞.
possiamo dire che vale sempre
lim
x\to x0
f (x) +g(x) = \ell +m
con l’esclusione dei casi(\ell,m ) = (+∞,−∞) e (\ell,m ) = (−∞, +∞).
In definitiva, sulla retta estesa dei numeri reali vale il seguente risultato.


> [!IMPORTANT] Corollario 2.18.: Supponiamo che limx\to x0f (x) = \ell\in  R e limx\to x0g(x) = m\in  R. Allora,
> lim
x\to x0
f (x) +g(x) = \ell +m,
con l’esclusione dei casi in cui uno traℓ e m sia +∞ e l’altro sia−∞.
Notiamo che se la somma dei limitiℓ +m si presenta in una delle forme
(+∞) + (−∞) o (−∞) + (+∞),
allora non si può dire nulla sulla somma, nel senso che il limite della somma può essere reale,
+∞,−∞ o anche non esistere. Per tale ragione tali forme vengono detteindeterminate.
Consideriamo adesso il caso di moltiplicazione di limiti che possono essere infiniti.


> [!IMPORTANT] Teorema 2.19: (prodotto di limiti infiniti). Sia A⊂ R, x0\in  R punto di accumulazione per
> A, ef :A\to  R e g :A\to  R. Valgono le seguenti.
(i) Se limx\to x0f (x) = +∞ (risp.−∞) e limx\to x0g(x) = m\in  R\{ 0}, allora
lim
x\to x0
f (x)g(x) =
(
+∞ (risp. −∞ ) se m> 0
−∞ (risp. +∞) se m< 0.
(ii) Se lim
x\to x0
f (x) =±∞, allora lim
x\to x0
f (x) = 0.
(iii) Se lim
x\to x0
f (x) = 0 e f (x)> 0 (risp. < 0) in un intorno dix0, allora
lim
x\to x0
f (x) = +∞ (risp. −∞ ).
La (i) si può schematizzare come segue
f (x)|{z}
↓
+∞
g(x)|{z}
↓
±
\to ±∞ e f (x)|{z}
↓
−∞
g(x)|{z}
↓
±
\to ∓∞.
Mentre la (ii) e la (iii) rispettivamente con
f (x)|{z}
↓
±∞
\to  0 e 1
f (x)|{z}
↓
0±
\to ±∞


## Dimostrazioni Trattate nella Lezione

### Dimostrazione .: Per ipotesiℓ,m\in  R eℓ>m . Possiamo sicuramente scegliere due intorniV1
> [!NOTE] Enunciato e Passaggi
> e V2, rispettivamente diℓ e m in modo che
V1∩V2 =∅ e V1\ge V2 (sono separati).
In altre termini si ha
\forall y1\in V1,∀y2\in V2 : y1 >y 2. (1)
Allora, dato che per ipotesif (x)→\ell e g(x)→m per x\to x0, si deve avere
f (x)∈V1 in un intorno dix0 e g(x)∈V2 in un intorno dix0.
Allora risulta che
f (x)∈V1 e g(x)∈V2 simultaneamente in un intorno dix0
e quindi, per la (1), che
f (x)>g (x) in un intorno dix0.
Osservazione 2.2. Il teorema precedente afferma che
\ell>m \implies f (x)>g (x) in un intorno dix0.
Notiamo invece che
\ell\ge m ̸⇒ f (x)≥g(x) in un intorno dix0.
In particolare può accadere cheℓ = m senza che sia necessariamentef (x)≤ g(x) o g(x)≤
f (x) in un intorno dix0. Per example si può prenderef (x) = x e g(x) =−x e x0 = 0.

$$\blacksquare$$

### Dimostrazione .: Consegue dal teorema precedente se si sceglieg≡\lambda.
> [!NOTE] Enunciato e Passaggi
> 

$$\blacksquare$$

### Dimostrazione .: Consegue dal teorema precedente conλ = 0.
> [!NOTE] Enunciato e Passaggi
> 

$$\blacksquare$$

### Dimostrazione .: Supponiamo che f (x)≤ g(x) in un intorno dix0. La dimostrazione procede per assurdo. Se fosse \ell > m, per il teorema della permanenza delle disuguaglianze
> [!NOTE] Enunciato e Passaggi
> (Teorema 2.1) si avrebbe
f (x)>g (x) in un intorno dix0.
Ma stiamo supponendo chef (x)≤ g(x) in un intorno dix0 e quindi (prendendo come al
solito l’intersezione degli intorni) si arriverebbe a
f (x)≤g(x) e f (x)>g (x) simultaneamente in un intorno dix0.
E questo produce una contraddizione, dato che un numero reale non può essere simultaneamente minore o uguale e strettamente maggiore di un altro numero reale.
Osservazione 2.6. Notiamo che
f (x)<g (x) in un intorno dix0 ̸⇒ \ell<m.
Quindi si prolunga la disuguaglianza “≤” ma non la “<”. Per example risulta
\forall x\in  ]− 1, 1[\{0} : x2 <|x|,
ma lim
x\to 0
x2 = 0 = lim
x\to 0
|x|.
Figura 1: In Italia il Teorema 2.7 è comunemente chiamatoTeorema dei carabinieri.

$$\blacksquare$$

### Dimostrazione .: Sia V un intorno diℓ. Si deve provare cheg(x)∈ V in un intorno dix0.
> [!NOTE] Enunciato e Passaggi
> Osserviamo preliminarmente che, essendoV un intervallo diR, vale che
y1,y 2\in V e y1\le y2 \implies  [y1,y 2]⊂V. (2)
Iniziamo ora la dimostrazione. Dall’ipotesi b) si ha
f (x)∈V in un intorno dix0 e h(x)∈V in un intorno dix0.
Inoltre, per l’ipotesi a), si ha anche che
f (x)≤g(x)≤h(x) in un intorno dix0.
Perciò, possiamo affermare che



f (x)∈V
h(x)∈V
f (x)≤g(x)≤h(x)
sono simultaneamente vere in un intorno dix0.
Allora, ricordando la (2), si può concludere cheg(x)∈V in un intorno dix0.
Osservazione 2.8. Nel Teorema 2.7 seℓ = +∞ si può fare a meno della funzioneh (basta
un solo carabiniere!), cioè è sufficiente chiedere che
• f (x)≤g(x) in un intorno dix0.
Infatti seV = ]β, +∞] è un intorno di+∞, allora
f (x)∈ ]β, +∞] in un intorno dix0.
Quindi (
f (x)≤g(x)
f (x)∈ ]β, +∞] simultaneamente in un intorno dix0.
Ma allora si hag(x)∈V in un intorno dix0. Allo stesso modo si vede che se nel Teorema 2.7,
\ell =−∞, si può fare a meno dif e si può chiedere soltanto che
• g(x)≤h(x) in un intorno dix0.

$$\blacksquare$$

### Dimostrazione .: Supponiamo che limx\to x0g(x) = 0. Evidentemente si ha
> [!NOTE] Enunciato e Passaggi
> −g(x)≤f (x)≤g(x) in un intorno dix0.
Perciò, essendo anchelimx\to x0−g(x) = 0, dal Teorema 2.7 seguelimx\to x0f (x) = 0.
Esempio 2.10. Proviamo che
lim
x\to 0
senx = 0, lim
x\to 0
cosx = 1, e lim
x\to 0
senx
x = 1. (3)
A tal fine si nota prima di tutto che vale
\forall x\in  ]0,π/ 2[: sen x<x< tgx = senx
cosx. (4)
Queste disuguaglianze sono giustificate in Figura 16.2 con un ragionamento geometrico.
Adesso dalla prima disuguaglianza di (4), tenendo conto chesenx è una funzione dispari, si
ha
x\in  ]−π/2, 0[⇒ −x\in  ]0,π/ 2[⇒ sen(−x)<−x \implies  −senx|{z}
<0
<− x|{z}
<0
\implies  |senx|<|x|.
Perciò, dato chesenx è positivo perx\in  ]0,π/ 2[, si ha
\forall x\in  ]−π/2,π/ 2[\{0} : | senx|<|x|. (5)
Figura 2: Circonferenza trigonometrica (di raggio 1). Giustificazione della disuguaglianza
sen(x) < x <tg(x), valida per ognix\in  ]0,π/ 2[. Tenendo conto che il segmentoOA ha
lunghezza 1, si riconosce che l’area del triangolo OAB è (senx)/2 (senx è l’altezza del
triangolo), l’area del settore circolareOAB è x/2 e l’area del triangoloOAC è tg(x)/2. La
tesi segue quindi dal fatto che il triangoloOAB è contenuto nel settore circolareOAB che
a sua volta è contenuto nel triangoloOAC.
Allora, essendo limx\to 0|x| = 0, dal corollario 2.9 segue chelimx\to 0 senx = 0 e la prima di (3)
è provata. Per quanto riguarda la seconda, ricordiamo la formula di duplicazione del coseno
cos 2α = 1− 2 sen2α, da cui segue che
cosx = 1− 2 sen2x
2.
Consideriamo quindi il terminesen2(x/2). Dalla (5) si ottiene
\forall x\in  ]−π,π [\{0} : sen 2x
2 =



senx




<



x




= x2
4 .
Perciò, essendolimx\to 0x2/4 = 0, ancoradalcorollario2.9otteniamoche limx\to 0 sen2(x/2) = 0
e quindi per il Teorema sulle operazioni sui limiti
cosx = 1− 2 sen2x
2| {z }
↓ 0
\to  1− 2· 0 = 1 per x\to  0.
Infine proviamo l’ultimo limite (notevole) in (3). Notiamo preliminarmente che per quanto
già provato, si ha
\to  0
z}|{senx
x|{z}
\to  0
per x\to  0.
Si tratta perciò di una forma indeterminata(0/0). Proviamo quindi che il limite del rapporto
esiste e vale1. Dalla (4), segue (dividendo persenx e facendo i reciproci)
\forall x\in  ]0,π/ 2[: 1 < x
senx < 1
cosx \implies  cosx< senx
x < 1.
Adesso, ricordando che il coseno è pari e il seno è dispari si ha
x\in  ]−π/2, 0[⇒ −x\in  ]0,π/ 2[⇒ cos(−x)< sen(−x)
−x =− senx
−x < 1 \implies  cosx< senx
x < 1.
In definitiva risulta
\forall x\in  ]−π/2,π/ 2[\{0} : cos x< senx
x < 1.
Allora, per quanto già provato (cosx\to  1 per x\to  0), dal teorema dei carabinieri segue che
lim
x\to 0
senx
x = 1.
Esercizio 2.11. Verificare mediante la definizione di limite che
lim
x\to +∞
ax +b =
(
+∞ se a> 0
−∞ se a< 0 e lim
x\to −∞
ax +b =
(
−∞ se a> 0
+∞ se a< 0.
Esempio 2.12. Sia n\in  N con n\ge  1. Allora
lim
x\to +∞
xn = +∞ e lim
x\to −∞
xn =
(
+∞ se n è pari
−∞ se n è dispari.
Infatti, dalla disuguaglianza di Bernoulli, segue che
\forall x\in  R+ : xn = (1 + x− 1)n\ge  1 +n(x− 1)
o in altri termini
xn\ge  1 +n(x− 1) in un intorno di+∞.
Dato chelimx\to +∞ 1 +n(x− 1) = +∞ (si veda l’Esercizio 2.11), allora per l’Osservazione 2.8,
si halimx\to +∞xn = +∞. Vediamo il casox\to −∞ . Sen è pari, sempre dalla disuguaglianza
di Bernoulli, si ha
\forall x\in  R− : xn = (−x)n\ge  1 +n(−x− 1) = 1−n(x + 1),
cioè
xn\ge  1−n(x + 1) in un intorno di−∞.
Allora, dato chelimx\to −∞ 1−n(x + 1) = +∞ (vedi Esercizio 2.11), sempre dall’Osservazione 2.8 segue chelimx\to −∞xn = +∞. Sen è dispari, si ha
\forall x\in  R− : −xn = (−x)n\ge  1 +n(−x− 1) = 1−n(x + 1),
cioè
xn\le − 1 +n(x + 1) in un intorno di−∞.
Come prima, dato chelimx\to −∞−1 +n(x + 1) =−∞ (vedi Esercizio 2.11), l’Osservazione 2.8
implica che limx\to −∞xn =−∞.

$$\blacksquare$$

### Dimostrazione .: Per ipotesi, esisteC >0 tale che
> [!NOTE] Enunciato e Passaggi
> |g(x)|≤ C in un intorno dix0
e quindi
|f (x)g(x)|≤ C|f (x)| in un intorno dix0.
Alloradatoche limx\to x0C|f (x)| =C·0 = 0, dalcorollario2.9, siha limx\to x0f (x)g(x) = 0.
Esempio 2.14. Abbiamo visto chelim
x\to 0
x2 = 0. Allora dal corollario 2.13 si ha che
lim
x\to 0
x2 sen 1
x = 0,
perché la funzionesen(1/x) è limitata.
Domande di autovalutazione.
1. Quale delle seguenti corrisponde alla definizione dilimx\to −2f (x) =−4?
1.∀\delta >0\exists \varepsilon> 0 tale che\forall x\in  R : 0 <|x + 2|<\delta \implies |f (x) + 4|<\varepsilon .
2.∀\varepsilon> 0\exists \delta >0 tale che\forall x\in  R : 0 <|x + 2|<\delta \implies |f (x) + 4|<\varepsilon .
3.∀\varepsilon> 0\exists \delta >0 tale che\forall x\in  R : 0 <|x− 2|<\delta \implies |f (x)− 4|<\varepsilon .
4.∀\varepsilon> 0\exists \delta >0 and\exists x\in  R tale che 0<|x + 2|<\delta \implies |f (x) + 4|<\varepsilon .
2. Quale delle seguenti corrisponde alla definizione dilimx\to −∞f (x) = +∞?
1.∀β >0\exists α> 0 tale che\forall x\in  R : x>α \implies f (x)>β .
2.∀β >0\exists α> 0 tale che\forall x\in  R : x< −α\implies f (x)<−β.
3.∀α> 0\exists β >0 tale che\forall x\in  R : x< −α\implies f (x)>β .
4.∀β >0\exists α> 0 tale che\forall x\in  R : x< −α\implies f (x)>β .
3. Se limx\to 2f (x) = 5, quale delle seguenti è vera?
1. f (x)> 2 nell’intervallo ]1, 3[
2. f (x)> 4.99 in un intorno di2
3. f (x) = 5 in un intorno di2
4. nessuna delle precedenti
2.1 Operazioni con i limiti in R

$$\blacksquare$$

### Dimostrazione .: Proviamo solo la prima (la seconda si prova in modo simile). Supponiamo
> [!NOTE] Enunciato e Passaggi
> che \ell >−∞. Allora si può scegliereλ\in  R con \lambda < ℓe, per il primo corollario del teorema
della permanenza delle disuguaglianze, si ha che
\lambda<f (x) in un intorno dix0.

$$\blacksquare$$

### Dimostrazione .: Proviamo la (i) soltanto. Siaβ >0. Dobbiamo provare che
> [!NOTE] Enunciato e Passaggi
> f (x) +g(x)>β in un intorno dix0.
Per ipotesi si ha che esisteλ\in  R tale che
g(x)≥\lambda in un intorno dix0.
Poi, essendof (x)→ +∞ per x\to  +∞, si può soddisfare la seguente
f (x)>β −\lambda in un intorno dix0.
Allora, si ha che
g(x)≥\lambda e f (x)>β −\lambda sono simultaneamente vere in un intorno dix0
e quindi sommandole si ha chef (x) +g(x)>β in un intorno dix0.
Osservazione 2.17. Se limx\to x0f (x) = \ell\in {−∞, +∞} e limx\to x0g(x) = m\in  R, allora dal

$$\blacksquare$$

### Dimostrazione .: (i): Consideriamo solo il casom\in  ]0, +∞] (l’altro si prova allo stesso modo).
> [!NOTE] Enunciato e Passaggi
> Sia β > 0 e siaλ\in  R tale che 0 < \lambda < m. Allora, per il teorema della permanenza delle
disuguaglianze, risulta che
g(x)>\lambda in un intorno dix0.
Poi, dato chelimx\to x0f (x) = +∞, si ha anche che
f (x)> β
\lambda in un intorno dix0.
Allora, entrambe le condizioni sono vere simultaneamente in un intorno di x0 e quindi
moltiplicando si ha chef (x)g(x)>β in un intorno dix0.
(ii): Siaε> 0. Dobbiamo provare che





f (x)




<\varepsilon in un intorno dix0
che chiaramente equivale a
|f (x)|> 1
\varepsilon in un intorno dix0.
Allora
lim
x\to x0
f (x) = +∞⇒ f (x)|{z}
>0
> 1
\varepsilon in un intorno dix0
lim
x\to x0
f (x) =−∞⇒ f (x)|{z}
<0
<− 1
\varepsilon in un intorno dix0
\implies −f (x)> 1
\varepsilon in un intorno dix0.
Perciò, in ogni caso,|f (x)|> 1/\varepsilon in un intorno dix0.
(iii): Siaβ >0. Allora per ipotesi
|f (x)|< 1
β in un intorno dix0 e f (x)> 0 in un intorno dix0.
Allora, le due condizioni valgono simultaneamente in un intorno dix0 e quindi si ha
0<f (x)< 1
β in un intorno dix0\implies  1
f (x) >β in un intorno dix0,
che è quanto si voleva dimostrare.
Osservazione 2.20. Come conseguenza del Teorema 2.19 possiamo estendere ulteriormente
l’algebra di R facendo le seguenti convenzioni
\forall m\in  R\{ 0} : (±∞)m =m(±∞) =
(
±∞ se m> 0
∓∞ se m< 0
e
\forall m\in  R : m
±∞ = 0 e 1
0± =±∞,
dove con 0+ (risp. 0−) intendiamo considerare il caso che il limite vale zero e la funzione è
strettamente positiva (risp. strettamente negativa) in un intorno dix0. In questo modo si
può dire che sef (x)→\ell\in  R eg(x)→m\in  R e (\ell,m )̸= (±∞, 0) e (\ell,m )̸= (0,±∞), allora
lim
x\to x0
f (x)g(x) = ℓm
e che seℓ e m non sono entrambi infiniti o entrambi zero allora
lim
x\to x0
f (x)
g(x) = \ell
m.
Anche le forme
(±∞)· 0 = 0· (±∞), ±∞
±∞, 0
0.
sono dette forme indeterminate.
2 Esempi di operazioni sui limiti in R
Esempio 2.1 (Forme indeterminate +∞−∞ ).
(i) Consideriamo le seguenti coppie di funzioni
(a) f (x) = 1
x2, g (x) = x− 1
x2
(b) f (x) = 1
x2, g (x) = 2x2− 1
x2
(c) f (x) = 1
x4, g (x) =− 1
x2
(d) f (x) = 1
x2, g (x) =− 1
x4.
Si verifica facilmente che in tutti i casi
lim
x\to 0
f (x) = +∞, lim
x\to 0
g(x) =−∞.
Mentre:
• nel caso (a),limx\to 0f (x) +g(x) = lim x\to 0
x non esiste,
• nel caso (b),limx\to 0f (x) +g(x) = 2,
• nel caso (c),
lim
x\to 0
f (x) +g(x) = lim
x\to 0
1−x2
x4 = lim
x\to 0
(1−x2) lim
x\to 0
x4 = 1· (+∞) = +∞
• nel caso (d),
lim
x\to 0
f (x) +g(x) = lim
x\to 0
x2− 1
x4 = lim
x\to 0
(x2− 1) lim
x\to 0
x4 = (−1)· (+∞) =−∞.
Esempio 2.2 (ancora forme indeterminate +∞−∞ ).
(i) lim
x\to +∞
x3− 3x2 = lim
x\to +∞
x3

1− 3
x

= +∞· 1 = +∞.
(ii) Proviamo che
lim
x\to +∞
(
√
x + 1−√x) = 0.
Si può provare direttamente dalla definizioni di limite (oppure del teorema sui limiti
delle funzioni monotone che vedremo in seguito) che
lim
x\to +∞
√
x + 1 = +∞ e lim
x\to +∞
√x = +∞.
Perciò il limite appare come una forma indeterminata(+∞) + (−∞). Questa forma
indeterminata si può risolvere razionalizzando il rapporto nel modo seguente
√
x + 1−√x = (√x + 1−√x)(√x + 1 +√x)√x + 1 +√x
= 1√x + 1 +√x\to  1
+∞ = 0, per x\to  +∞,
dove si è applicata la (ii) del Teorema 2.5 della Lezione precedente.
Limite di una funzione razionale per x\to ±∞
Consideriamo il limite
lim
x\to ±∞
P (x)
Q(x) = lim
x\to ±∞
anxn +an−1xn−1 +··· +a1x +a0
bmxm +bm−1xm−1 +··· +b1x +b0
,
dove m,n \in  N∗ e an e bm sono diversi da zero. Il dominio della funzione è un insieme del
tipo A = R\{x1,...,x p} dove glixi sono gli zeri (distinti) diQ. Allora
\forall x\in A\{ 0} : P (x)
Q(x) = xn
xm
an + an−1
x +··· + a1
xn−1 + a0
xn
bm + bm−1
x +··· + b1
xm−1 + b0
xm
.
Dato chean−k/xk\to  0 e bn−k/xk\to  0 per x\to ±∞ , si ha che
an + an−1
x +··· + a1
xn−1 + a0
xn
bm + bm−1
xm−1 +··· + b1
xm−1 + b0
xm
\to  an
bm
\in  R∗ per x\to ±∞.
Inoltre
xn
xm =



xn−m se n>m
1 se n =m
xm−n se n<m.
e quindi
lim
x\to +∞
xn
xm =



+∞ se n>m
1 se n =m
0 se n<m
e lim
x\to −∞
xn
xm =



+∞ se n>m e n−m è pari
−∞ se n>m e n−m è dispari
1 se n =m
0 se n<m.
In definitiva si ha
lim
x\to +∞
P (x)
Q(x) =



an
bm
· (+∞) se n>m
an
bm
se n =m
0 se n<m.
e lim
x\to −∞
P (x)
Q(x) =



an
bm
· (+∞) se n>m e n−m è pari
an
bm
· (−∞) se n>m e n−m è dispari
an
bm
se n =m
0 se n<m.
Esempio 2.3.
(i) Calcolare il seguente limite
lim
x\to +∞
3x3− 2x + 1
−x4 + 2x2 +x.
Allora
3x3− 2x + 1
−x4 + 2x2 +x = x3
x4· 3− 2
x2 + 1
x3
−1 + 2
x2 + 1
x3
= 1
x· 3− 2
x2 + 1
x3
−1 + 2
x2 + 1
x3
\to  0· (−3) = 0 per x\to  +∞.
(ii) Calcolare il seguente limite
lim
x\to −∞
−x4 + 2x2 +x
3x3− 2x + 1 .
Allora
−x4 + 2x2 +x
3x3− 2x + 1 = x4
x3·−1 + 2
x2 + 1
x3
3− 2
x2 + 1
x3
=x·−1 + 2
x2 + 1
x3
3− 2
x2 + 1
x3
\to −∞·

− 1

= +∞ per x\to  +∞.

$$\blacksquare$$
