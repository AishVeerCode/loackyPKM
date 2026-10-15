---
status: permanent
type: reference
area: education
related: ["[[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]]", "[[Lezione 2 - Variabili Assegnazione Input e Output]]", "[[Lezione 3 - Stringhe Metodi e Slicing]]", "[[Lezione 4 - Ciclo For Sequenze e Variabili Accumulatore]]", "[[Lezione 5 - Condizioni e Istruzione If]]", "[[Lezione 6 - Funzioni Parametri Scope ed Esercizi Algoritmici]]", "[[Teoria di programmazione]]", "[[University]]"]
aliases: ["Comandi", "Comandi Python", "Prontuario Sintassi Lezioni 1-6"]
source: ["Intro_Lezione1.ipynb", "Variabili_input_output_corretto_Lezione2.ipynb", "Stringhe_Lezione3.ipynb", "For_Lezione4.ipynb", "If.ipynb", "Funzioni_base.ipynb"]
title: "Comandi"
date: '2026-10-15'
updated: '2026-10-15T19:00'
tags: [education/university, education/programmazione, education/comandi]
summary: "Prontuario del codice, della sintassi e dei comandi Python utilizzati nelle lezioni da 1 a 6 senza commenti esplicativi."
---
[[Home MOC|Home]] / [[Education & Learning]] / [[University]] / [[Comandi]]

# Comandi

## Lezione 1

```python
+
-
*
/
//
%
**
```

```python
1 + 5
1.0 + 5
7 * (5 + 2)
21 ** 31
2 / 5
6 / 2
6 // 3
6 // 4
-2 // 3
5 % 2
15 % 12
```

```python
'stringa con apici singoli'
"stringa con doppi apici"
'Il mio amico ha detto "Salve a tutti!" con voce sicura'
'prova' + ' ' + 'del nove'
'ciao ' * 5
```

```python
secondi = 137
minuti = secondi // 60
resto = secondi % 60
print(secondi, 'secondi =', minuti, 'minuti e', resto, 'secondi')
```

---

## Lezione 2

```python
raggio = 2.0
area = raggio * raggio * 3.14
print(area)
```

```python
print(-3.2)
print('-3.2')
print(4 * 3)
print("moltiplicando 4.5 con 3.7 ottengo:", 4.5 * 3.7)
```

```python
var1 = 'ciao'
print(var1)
var2 = var1 * 4
print(var2)
```

```python
area = 5
print("ora area vale:", area)
area = 99
print("dopo l'assegnazione area vale :", area)
```

```python
input()
input('Inserisci un dato: ')
```

```python
n = int(input('Inserisci un intero: '))
r = float(input('Inserisci un reale: '))
s = str(123)
```

```python
float('3.55')
int('45')
str(45.6)
```

```python
raggio = input('Inserisci il valore del raggio: ')
raggio = float(raggio)
area = raggio * raggio * 3.14
print('raggio =', raggio, 'area =', area)
```

```python
giorno = 12
mese = 10
anno = 2010
print(giorno, '/', mese, '/', anno, sep='')
print(str(giorno) + '/' + str(mese) + '/' + str(anno))
```

---

## Lezione 3

```python
\
\n
\t
\b
\'
\"
\\
```

```python
print(5, \
      6)

x = 'prima \
prova\b \n\ndi una \t riga nuova con tabulazione e caratteri speciali \', \" e \\'
print(x)
```

```python
len(s)
```

```python
s[0]
s[1]
s[-1]
s[-2]
```

```python
s[i:j]
s[:j]
s[i:]
s[:]
s[i:j:k]
s[::-1]
s[-1:-len(s)-1:-1]
```

```python
range(stop)
range(start, stop)
range(start, stop, step)
list(range(i, j, n))
```

```python
s.lower()
s.upper()
```

```python
s.count('a')
s.count('lo')
s.count('')
```

```python
s.find('o')
s.find('olo')
s.find('o', start)
s.find('o', start, end)
s.rfind('o')
```

```python
s.replace('l', 'r')
s.replace('l', 'r', 2)
s.replace('Pa', 'Colla')
s.replace('a', '')
```

```python
s.strip()
```

```python
ord(c)
chr(n)
chr(ord(c) + 1)
```

---

## Lezione 4

```python
for c in s:
    print(c)
```

```python
for c in 'pippo':
    print(c, ord(c))
```

```python
for elem in [7, 'pippo', 5.7, 'casa']:
    print(elem)
```

```python
for i in range(n):
    print(i)
```

```python
for i in range(1, 11):
    print(i)
```

```python
for i in range(0, 10, 2):
    print(i)
```

```python
for i in range(len(s)):
    print(s[i])
```

```python
for i in range(len(s) - 1, -1, -1):
    print(s[i])
```

```python
somma = 0
for num in range(n1, n2 + 1):
    somma = somma + num
```

```python
s1 = ''
for c in s:
    prox = chr(ord(c) + 1)
    s1 += prox
```

```python
for i in range(l):
    print("*" * l)
```

```python
for i in range(ct):
    print("*" * (i + 1))
```

```python
from random import randint

num = randint(0, n)
```

```python
from random import randint

somma = 0
for i in range(rip):
    num = randint(0, n)
    somma += num
media = somma / rip
```

---

## Lezione 5

```python
True
False
```

```python
==
!=
<
<=
>
>=
```

```python
and
or
not
```

```python
in
not in
```

```python
s.isalpha()
s.isdecimal()
s.islower()
s.isupper()
```

```python
if condizione:
    istruzione
```

```python
if condizione:
    istruzione_1
else:
    istruzione_2
```

```python
if condizione_1:
    istruzione_1
elif condizione_2:
    istruzione_2
else:
    istruzione_3
```

```python
if voto > 17:
    print("promosso")
    print("bravo!")
```

```python
if s.isdecimal():
    n = int(s)
else:
    print("Non intero")
```

```python
if n > 27:
    print("A")
elif n > 24:
    print("B")
elif n > 20:
    print("C")
elif n > 17:
    print("C-")
else:
    print("D")
```

```python
min(n1, n2)
max(n1, n2)
abs(x)
```

```python
from math import *

x = sqrt(2)
if abs(x**2 - 2) < 10e-6:
    print(True)
```

```python
if (s.count(c) >= 2):
    primaOcc = s.find(c)
    secondaOcc = s.find(c, primaOcc + 1)
    print(s[primaOcc:secondaOcc + 1])
```

```python
if '.' not in s:
    convertibile = s.isdecimal()
else:
    iP = s.find('.')
    pi = s[0:iP]
    pf = s[iP+1:]
    if len(pi) == 0:
        convertibile = pf.isdecimal()
    elif len(pf) == 0:
        convertibile = pi.isdecimal()
    else:
        convertibile = pi.isdecimal() and pf.isdecimal()
```

---

## Lezione 6

```python
def nome_funzione(parametro):
    return valore
```

```python
def raddoppia(n):
    k = 2 * n
    return k

ris = raddoppia(7)
print(ris)
```

```python
def isPari(n):
    if n % 2 == 0:
        return True
    else:
        return False

def isPari1(n):
    return n % 2 == 0
```

```python
def stampaIlDoppio(n):
    print(2 * n)
    return None

v = 5
stampaIlDoppio(v)
```

```python
def aggiunginum(m):
    global num
    m = m + num
    return m
```

```python
def modifica_g(n):
    global g
    g = n
    return g + n
```

```python
def incrementa2(n, passo=1, lunghezza=1):
    return n + passo * lunghezza

x = 4
incrementa2(x)
incrementa2(x, 3)
incrementa2(x, 3, 2)
incrementa2(x, lunghezza=5)
```

```python
def rimuovoNonAlpha(s):
    ris = ''
    for c in s:
        if c.isalpha():
            ris += c
    return ris
```

```python
def contaCarattere(s, c):
    somma = 0
    for car in s:
        if car == c:
            somma += 1
    return somma
```

```python
def conta(s, c, start=0, end=None):
    s1 = s[start:end]
    num = 0
    if c == '':
        return len(s1) + 1
    offset = len(c) - 1
    for i in range(len(s1) + 1 - len(c)):
        if s1[i+num*offset:i+len(c)+num*offset] == c:
            num = num + 1
    return num
```

```python
def fattoriale(n):
    ris = 1
    for i in range(1, n + 1):
        ris *= i
    return ris
```

```python
def maxdivisore(n):
    for i in range(n // 2, 0, -1):
        if n % i == 0:
            return i
```

```python
def collegaNoRipetizioni(s1, s2):
    ris = ''
    for c in s1 + s2:
        if c not in ris:
            ris += c
    return ris
```

```python
def sostituisci(s, c1, c2, count=None):
    return s.replace(c1, c2) if count is None else s.replace(c1, c2, count)
```

```python
from mieFunzioni import isPari
from tester import tester_fun

tester_fun(raddoppia, [2], 4)
tester_fun(isPari, [4], True)
```
