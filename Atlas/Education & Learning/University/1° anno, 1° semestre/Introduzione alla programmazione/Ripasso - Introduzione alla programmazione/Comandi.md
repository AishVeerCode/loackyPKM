---
status: permanent
type: reference
area: education
related: ["[[Lezione 1 - Introduzione a Python ed Espressioni Numeriche]]", "[[Lezione 2 - Variabili Assegnazione Input e Output]]", "[[Lezione 3 - Stringhe Metodi e Slicing]]", "[[Lezione 4 - Ciclo For Sequenze e Variabili Accumulatore]]", "[[Lezione 5 - Condizioni e Istruzione If]]", "[[Lezione 6 - Funzioni Parametri Scope ed Esercizi Algoritmici]]", "[[Lezione 7 - Ciclo While Iterazioni Indefinite e Sentinella]]", "[[Lezione 8.1 - Istruzioni Break e Continue nei Cicli]]", "[[Lezione 8.2 - Tipologie ed Individuazione degli Errori]]", "[[Lezione 9 - Liste Sequenze Mutabili e Operazioni]]", "[[Lezione 10 - Modello di Memoria Stack Heap e Oggetti Mutabili]]", "[[Teoria di programmazione]]", "[[University]]"]
aliases: ["Comandi", "Comandi Python", "Prontuario Sintassi Lezioni 1-10"]
source: ["Lezione 1 - Introduzione.ipynb", "Lezione 2 - Variabili.ipynb", "Lezione 3 - Stringhe.ipynb", "Lezione 4 - Ciclo 'for'.ipynb", "Lezione 5 - Commandi if.ipynb", "Lezione 6 - Funzioni.ipynb", "Lezione 7 - Ciclo 'while'.ipynb", "Lezione 8.1 - Break and Continue.ipynb", "Lezione 8.2 - Error Correction.ipynb", "Lezione 9 - Liste.ipynb", "Lezione 10 - Memoria Notebook.ipynb"]
title: "Comandi"
date: '2026-10-15'
updated: '2026-11-09T19:30'
tags: [education/university, education/programmazione, education/comandi]
summary: "Prontuario del codice, della sintassi e dei comandi Python utilizzati nelle lezioni da 1 a 10 senza commenti esplicativi."
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
---

## Lezione 8.1

```python
n = int(input("Inserire un numero naturale maggiore di 1: "))
i = 2
limite = n // 2
while i <= limite:
    if n % i == 0:
        print('numero non primo')
        break
    i += 1
if i > limite:
    print('numero primo')
```

```python
n = int(input("Inserire un numero naturale maggiore di 1: "))
primo = True
i = 2
limite = n // 2
while i <= limite and primo:
    if n % i == 0:
        primo = False
    i += 1
if primo:
    print('numero primo')
else:
    print('numero non primo')
```

```python
var = 10
while var > 0:
    var = var - 1
    if var == 5:
        continue
    print("valore variabile corrente:", var)
print("fine!")
```

```python
var = 0
while var < 51:
    var = var + 1
    if var % 3 != 0:
        continue
    print("valore variabile corrente:", var)
print("fine!")
```

```python
var = 0
while var < 51:
    var = var + 1
    if var % 3 == 0:
        print("valore variabile corrente:", var)
print("fine!")
```

```python
n = int(input('Inserire un numero naturale maggiore di 1: '))
primo = True
for i in range(2, (n // 2) + 1):
    if n % i == 0:
        primo = False
        break
if primo:
    print('numero primo')
else:
    print('numero non primo')
```

```python
k = 1000
divisioni = 0
primi = 0
for n in range(2, k + 1):
    primo = True
    limite = n // 2
    for i in range(2, limite + 1):
        divisioni += 1
        if n % i == 0:
            primo = False
    if primo:
        print(n, end=' ')
        primi += 1
print('\ndivisioni=', divisioni)
print('numeri primi=', primi)
```

```python
k = 1000
divisioni = 0
primi = 1
print(2, '', end='')
for n in range(3, k + 1, 2):
    primo = True
    limite = n // 2
    for i in range(2, limite + 1):
        divisioni += 1
        if n % i == 0:
            primo = False
            break
    if primo:
        print(n, '', end='')
        primi += 1
print('\ndivisioni=', divisioni)
print('numeri primi=', primi)
```

```python
finito = False
while not finito:
    base = input("inserisci la base (2..16): ")
    if not (base.isdecimal() and (2 <= int(base) <= 16)):
        print('inserito un input errato per la base')
        continue
    base = int(base)
    s = input("numerale in base " + str(base) + ": ")
    valore = 0
    potenza = len(s) - 1
    errore = False
    for c in s:
        if not (c.isdecimal() or c in "ABCDEF"):
            print('inserito un numerale errato per le basi')
            errore = True
            break
        if c in "ABCDEF":
            c = ord(c) - ord("A") + 10
        else:
            c = int(c)
        if not (0 <= c < base):
            print('inserito un numerale errato per la base')
            errore = True
            break
        valore = valore + c * base ** potenza
        potenza = potenza - 1
    if not errore:
        print(s, "vale", valore)
    s1 = input("----Finisco (si/no)? ")
    finito = s1.lower() == "si"
```

```python
s = input("Inserisci una stringa: ")
n = int(input("Inserisci un intero positivo n: "))
trovato = False
for c in s:
    if ord(c) % n == 0:
        print(c)
        trovato = True
        break
```

```python
a = int(input("Inserisci a: "))
b = int(input("Inserisci b: "))
mcd = 1
for d in range(min(a, b), 0, -1):
    if a % d == 0 and b % d == 0:
        mcd = d
        break
print(mcd)
```

```python
s = input("Inserisci una stringa: ")
ha_doppia = False
for i in range(len(s) - 1):
    if s[i].isalpha() and s[i] == s[i + 1]:
        ha_doppia = True
        break
if ha_doppia:
    print("SI")
else:
    print("NO")
```

---

## Lezione 8.2

```python
s = int(input("Inserisci un intero"))
print("hai inserito l'intero", s)
```

```python
n = int(input("Inserisci un intero"))
if n > 0:
    print("positivo")
```

```python
n = int(input("Inserisci un intero: "))
if n > 0:
    print("intero positivo")
    print("radice quadrata di n=", n ** 0.5)
else:
    print("radice immaginaria")
```

```python
sommaMultipliDin = 0
n = 4
x = -100
y = 100
i = x
while i < y:
    if i % n == 0:
        sommaMultipliDin += i
    i = i + 1
print('somma=', sommaMultipliDin)
```

```python
s = input("Inserisci un intero  (* per terminare) ")
m = 1
while s != "*":
    if len(s) > 0 and (s.isdecimal() or (s[0] in "+-" and s[1:].isdecimal())):
        s_val = int(s)
        m = m * s_val
    s = input("Inserisci un intero  (* per terminare) ")
print("totale = ", m)
```

```python
c = input("Inserisci un carattere: ")
conteggio = 0
s = input("Inserisci una stringa: ")
while s != "":
    if c.lower() in s and c.upper() in s:
        conteggio += 1
    s = input("Inserisci una stringa: ")
print(conteggio)
```

```python
def maxdivisore(n):
    for d in range(n // 2, 0, -1):
        if n % d == 0:
            return d
    return 1
```

```python
def maxfreq(s):
    if len(s) == 0:
        return ""
    max_c = s[0]
    max_cnt = 0
    for c in s:
        cnt = s.count(c)
        if cnt > max_cnt:
            max_cnt = cnt
            max_c = c
    return max_c
```

```python
def collegaNoRipetizioni(s1, s2):
    ris = ""
    for c in s1 + s2:
        if c not in ris:
            ris += c
    return ris
```

```python
def maxlung(s):
    if len(s) == 0:
        return 0
    max_len = 0
    cur_len = 0
    for c in s:
        if c != " ":
            cur_len += 1
            if cur_len > max_len:
                max_len = cur_len
        else:
            cur_len = 0
    return max_len
```

```python
def sostituisci(s, c1, c2, count=None):
    if c1 == "":
        return s
    ris = ""
    i = 0
    sost = 0
    while i < len(s):
        if s[i:i + len(c1)] == c1 and (count is None or sost < count):
            ris += c2
            i += len(c1)
            sost += 1
        else:
            ris += s[i]
            i += 1
    return ris
```

---

## Lezione 9

```python
L1 = [2, 4, 6, 7]
L2 = ['casa', 'palla', 'strada']
L3 = ['casa', -7.5, 'a', 33]
```

```python
print(len(L3))
```

```python
for elem in L3:
    print(elem)
```

```python
for i in range(len(L3)):
    print(i, L3[i])
```

```python
x = 2
y = -5
L = [x, y ** 2 + 1, x == 3]
print(L)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = [1, 2, 'pippo']
print(LL1 == LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = [1, 1 + 1, 'pippo']
print(LL1 == LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = [1.0, 2, 'pippo']
print(LL1 == LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = ['1', 2, 'pippo']
print(LL1 == LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = [1.0, 2, 'pippo']
print(LL1 + LL2)
```

```python
lista = ['casa', -7.5, 'a', 33]
lista[1] = 99
print(lista)
```

```python
print(lista[1:3])
```

```python
LL1 = [1, 2, 'pippo']
LL2 = LL1
LL2[0] = 'ciao'
print(LL1)
print(LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = LL1.copy()
LL2[0] = 'ciao'
print(LL1)
print(LL2)
```

```python
LL1 = [1, 2, 'pippo']
LL2 = LL1[:]
LL2[0] = 'ciao'
print(LL1)
print(LL2)
```

```python
import copy
LL1 = [1, 2, ['a', 'b']]
LL2 = copy.deepcopy(LL1)
LL2[2][0] = 'z'
print(LL1)
print(LL2)
```

```python
l = [1, 2, 3]
min(l)
max(l)
sum(l)
```

```python
l = [1, 2, 3]
l.append(4)
print(l)
```

```python
l = [1, 2, 3]
l.insert(1, 'pippo')
print(l)
```

```python
l = [1, 2, 3]
l.extend([4, 5, 6])
print(l)
```

```python
l = [1, 2, 3, 4]
elem = l.pop(2)
print(elem)
print(l)
```

```python
l = ['a', 'b', 'c', 'b']
l.remove('b')
print(l)
```

```python
l = ['a', 'b', 'c']
print(l.index('b'))
```

```python
l = ['a', 'b', 'a', 'a']
print(l.count('a'))
```

```python
l = [3, 1, 4, 1, 5, 9]
l.sort()
print(l)
```

```python
l = [3, 1, 4, 1, 5, 9]
l.reverse()
print(l)
```

```python
LL1 = [1, 2, 3]
print(2 in LL1)
print(4 in LL1)
```

```python
n = 10
l = [0] * n
print(l)
```

```python
s = "buonasera a tutti"
distinti = []
for c in s:
    if c not in distinti:
        distinti.append(c)
print(distinti)
```

```python
s = 'mamma'
l = list(s)
print(l)
```

```python
def ordinaStringa(s):
    l = list(s)
    l.sort()
    ris = ''
    for i in l:
        ris += i
    return ris

print(ordinaStringa('mamma'))
```

```python
def maxfrequenza(l):
    ris = l[0]
    maxfreq = l.count(l[0])
    for el in l:
        if l.count(el) > maxfreq:
            ris = el
            maxfreq = l.count(el)
    return ris
```

```python
def listaContiene(l, s):
    ris = []
    for el in l:
        if s in el:
            ris.append(el)
    ris.sort()
    return ris
```

```python
def listaSelezioni(ls, ln):
    ris = []
    for el in ln:
        if -len(ls) <= el < len(ls):
            ris.append(ls[el])
    return ris
```

```python
def contaIniziali(l1, l2):
    ris = 0
    for i in range(min(len(l1), len(l2))):
        if l1[i] != "" and l2[i] != "" and l1[i][0] == l2[i][0]:
            ris += 1
    return ris
```

---

## Lezione 10

```python
def aggiungi1(l, n):
    l.append(n)

def aggiungi2(l, n):
    l2 = l.copy()
    l2.append(n)
    return l2

lista = [2, 4, 5]
n = 7
aggiungi1(lista, n)
print(lista)
lista2 = aggiungi2(lista, 99)
print(lista)
print(lista2)
```

```python
def raddoppiaValore(a):
    a = a * 2

n = 5
raddoppiaValore(n)
print(n)
```

```python
def raddoppiaElementi(l):
    for i in range(len(l)):
        l[i] = l[i] * 2

lista = [1, 2, 3]
raddoppiaElementi(lista)
print(lista)
```

```python
def svuotaLista(l):
    while len(l) > 0:
        l.pop()

lista = [1, 2, 3]
svuotaLista(lista)
print(lista)
```

```python
def rimuovi(l, el):
    if el in l:
        l.remove(el)
        return True
    return False

k = ['nel', 'mezzo', 'cammino', 'mezzo']
print(rimuovi(k, 'mezzo'))
print(k)
```

```python
def rimuoviTutti(l, el):
    rimosso = el in l
    while el in l:
        l.remove(el)
    return rimosso

k = ['nel', 'mezzo', 'cammino', 'mezzo', 'giorno']
print(rimuoviTutti(k, 'mezzo'))
print(k)
```

```python
l = [1, 2, 3]
l.append(4)
print(l)
print(id(l))

l = [1, 2, 3]
l = l + [4]
print(l)
print(id(l))
```

```python
def raddoppiaUltimo(ls):
    if len(ls) > 0:
        ls = ls + [ls[-1]]

l = [2, 4, 5]
raddoppiaUltimo(l)
print(l)
```

```python
l = [2, 4, 5]
l[len(l):] = [6]
print(l)
```

```python
l = [3, 2, 4, 5, 1]
l.sort()
print(l)
```

```python
l = [3, 2, 4, 5, 1]
print(sorted(l))
print(l)
```

```python
def sommaVettori(v1, v2):
    length = len(v1)
    l = [0 for _ in range(length)]
    for j in range(length):
        l[j] = v1[j] + v2[j]
    return l
```

```python
def stringaMax(l):
    if len(l) == 0:
        return 0
    max_len = 0
    for s in l:
        if len(s) > max_len:
            max_len = len(s)
    return max_len
```

```python
def ultimoPos(l):
    for i in range(len(l) - 1, -1, -1):
        if l[i] >= 0:
            return i
    return -1
```

```python
def inserisciStringa(l, s):
    len_s = len(s)
    inserito = False
    for i in range(len(l)):
        if len_s <= len(l[i]):
            l.insert(i, s)
            inserito = True
            break
    if not inserito:
        l.append(s)
    return l
```

```python
def somma(l):
    totale = 0
    for elem in l:
        if type(elem) == int:
            totale += elem
    return totale
```

```python
def eliminaStringhe(l, i):
    idx = 0
    while idx < len(l):
        if len(l[idx]) > i:
            l.pop(idx)
        else:
            idx += 1
    return l
```

```python
def merge(l1, l2):
    ris = []
    i = 0
    j = 0
    n1 = len(l1)
    n2 = len(l2)
    while i < n1 and j < n2:
        if len(l2[j]) <= len(l1[i]):
            ris.append(l2[j])
            j += 1
        else:
            ris.append(l1[i])
            i += 1
    while i < n1:
        ris.append(l1[i])
        i += 1
    while j < n2:
        ris.append(l2[j])
        j += 1
    return ris
```
