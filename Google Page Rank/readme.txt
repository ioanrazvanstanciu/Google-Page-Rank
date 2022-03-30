Stanciu Ioan-Razvan, 315CC

Numele proiectului: Tema 2 - Metode Numerice
Durata proiectului: 10 ore

In cadrul acestui proiect am rezolvat toate cerintele, realizand astfel
cele trei functii: 'Iterative.m', 'Algebraic.m' si 'PageRank.m'.

In cadrul functiei 'Iterative.m' am implementat o functie auxiliara
numita 'creare_matrice.m', aceste functii avand rolul de a calcula
vectorul de PageRank-uri acordat pentru fiecare pagina utilizand
algoritmul iterativ. Detalii mai multe despre implementare se gasesc
in cadrul functiilor sub forma de comentarii.

In cadrul functiei 'Algebraic.m' am utilizat, pe langa functia
'creare_matrice.m', o alta functie numita 'PR_Inv.m', aceasta
avand rolul de a calcula inversa unei matrice, in cadrul ei
utilizand si algoritmul 'SST.m'. Aceste functii au rolul de a
calcula vectorul de PageRank-uri acordat pentru fiecare pagina
utilizand varianta algebrica de calcul. Detalii mai multe despre
implementare se gasesc in cadrul functiilor sub forma de comentarii.

In cadrul functiei 'PageRank.m' am apelat functiile create anterior:
'Iterative.m' si 'Algebraic.m'. Pe langa acestea, am apelat iarasi
functia 'creare_matrice.m', dar si urmatoarele functii:
'extragere_valori.m', pentru a obtine valorile 'val1' si 'val2',
'sortare_vector.m', pentru a sorta descrescator vectorul dat si
pentru a retine intr-un vector de indici pozitia initiala, iar ultima
functie este 'Apartenenta.m', aceasta avand rol in a indica gradul de
apartenenta. Astfel, functia 'PageRank.m' are rolul de a intoarce
valorile celor doi vectori, vectorul de PageRank-uri acordat pentru
fiecare pagina utilizand algoritmul iterativ si vectorul de
PageRank-uri acordat pentru fiecare pagina utilizand varianta algebrica
de calcul, dar si de a afisa multiple informatii intr-un fisier de iesire.
Detalii mai multe despre implementare se gasesc in cadrul functiilor sub
forma de comentarii.

Observatii!

Valorile pe care le obtin in 'graf1.out' sunt identice cu cele din cerinta,
insa imi inverseaza la final indicii din vectorul 'P_R1' si nodurile a
caror PageRank-uri sunt 'P_R1(i)': '(6,6) si (7,7)' in loc de
'(6,7) si (7,6)'. In schimb, valorile obtinute in 'graf2.out' sunt identice
cu cele din cerinta.
