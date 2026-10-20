---
status: permanent
type: reference
area: education
related: ["[[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]]", "[[Lezione 2 - Variabili Assegnazione Input e Output]]", "[[Lezione 3 - Stringhe Metodi e Slicing]]", "[[Lezione 4 - Ciclo For Sequenze e Variabili Accumulatore]]", "[[Lezione 5 - Condizioni e Istruzione If]]", "[[Lezione 6 - Funzioni Parametri Scope ed Esercizi Algoritmici]]", "[[Lezione 7 - Ciclo While Iterazioni Indefinite e Sentinella]]", "[[Teoria di programmazione]]", "[[University]]"]
aliases: ["Comandi", "Comandi Python", "Prontuario Sintassi Lezioni 1-7"]
source: ["Lezione 1 - Introduzione.ipynb", "Lezione 2 - Variabili.ipynb", "Lezione 3 - Stringhe.ipynb", "Lezione 4 - Ciclo 'for'.ipynb", "Lezione 5 - Commandi if.ipynb", "Lezione 6 - Funzioni.ipynb", "Lezione 7 - Ciclo 'while'.ipynb"]
title: "Comandi"
date: '2026-10-15'
updated: '2026-10-21T00:34'
tags: [education/university, education/programmazione, education/comandi]
summary: "Prontuario del codice, della sintassi e dei comandi Python utilizzati nelle lezioni da 1 a 7 senza commenti esplicativi."
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

---

## Lezione 7

```python
while condizione:
    istruzione
```

```python
somma = 0
n = int(input('Inserisci un numero intero (0 per terminare): '))

while n != 0:
    somma = somma + n
    n = int(input('Inserisci un numero intero (0 per terminare): '))
print(somma)
```

```python
import random

c = 333
while chr(c) != "o":
    c = random.randint(ord("a"), ord("z"))
    print(chr(c), end='')
```

```python
corretto = False
while not corretto:
    s = input("Inserisci un intero tra 1 e 10: ")
    n = int(s)
    if n >= 1 and n <= 10:
        print("Il valore inserito è corretto:")
        corretto = True
    else:
        print("Il valore inserito NON è corretto:")
print(n)
```

```python
i = "0"
while i != "*":
    i = input("inserisci un intero (* per terminare): ")
    if i != '*':
        print("Hai inserito:", int(i))
```

```python
i = input("inserisci un intero (* per terminare): ")
while i != "*":
    print("Hai inserito:", int(i))
    i = input("inserisci un intero (* per terminare): ")
```

```python
finito = False
while not finito:
    i = input("inserisci un intero (* per terminare): ")
    if i == "*":
        finito = True
    else:
        print("Hai inserito:", int(i))
```

```python
n = int(input("inserisci il numero di volte che vuoi stampare la parola 'CIAO': "))
i = 1
while i <= n:
    print(i, 'CIAO')
    i += 1
```

```python
i = 1
while i <= 127:
    print(i, chr(i))
    i += 1
```

```python
n = int(input("inserisci il numero di interi di cui vuoi i quadrati: "))
i = 1
while i <= n:
    print(i, i**2)
    i += 1
```

```python
n = int(input("Inserire un numero intero non negativo: "))
while n >= 0:
    print(n)
    n = n - 1
```

```python
i = 0
while i < n:
    i = i + 1
```

```python
i = 0
while i < len(sequenzaElementi):
    e = sequenzaElementi[i]
    i = i + 1
```

```python
def fattoriale(n):
    ris = 1
    for i in range(2, n + 1):
        ris = ris * i
    return ris

finito = False
while not finito:
    n = int(input("inserisci un intero positivo: "))
    print("il fattoriale di", n, "è", fattoriale(n))
    s1 = input("----Finisco (si/no)? ")
    if s1.lower() == "si":
        finito = True
```

```python
def conta_vocali(s):
    conta = 0
    for c in s:
        if c in 'aeiou':
            conta = conta + 1
    return conta

max_vocali = 0
s = input('Inserisci la prima stringa (stringa vuota per terminare): ')

while s != '':
    conta = conta_vocali(s)
    if conta > max_vocali:
        max_vocali = conta
    s = input('Inserisci un\'altra stringa (stringa vuota per terminare): ')

print(max_vocali)
```

```python
import random

totale = 0
c = 333
n = 100000
for i in range(n):
    s = ''
    while chr(c) != "o":
        c = random.randint(ord("a"), ord("z"))
        s += chr(c)
    c = 333
    totale += len(s)
print(totale / n)
```

```python
def is_primo(n):
    if n < 2:
        return False
    d = 2
    while d * d <= n:
        if n % d == 0:
            return False
        d += 1
    return True

def filtra_unicode_primi(s):
    ris = ""
    for c in s:
        if is_primo(ord(c)):
            ris += c
    return ris
```

```python
def int2bin(n):
    if n == 0:
        return "0"
    binario = ""
    while n > 0:
        resto = n % 2
        binario = str(resto) + binario
        n = n // 2
    return binario

def bin2int(s):
    valore = 0
    for c in s:
        valore = valore * 2 + int(c)
    return valore
```
