#Zadanie 1
a = int(input("Podaj a: "))

if a % 2 == 0:
    print("Liczba jest parzysta")
else:
    print("liczba jest nieparzysta")

#Zadanie 2
wiek = int(input("podaj swój wiek: "))

if wiek <= 18:
    print("jesteś nastolatkiem")
else:
    print("Jesteś dorosłym")

#zadanie 3
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
for o in lista:
    if o > 10:
        print(F"{o} Ta liczba jest większa od 10")

#zadanie 5
slowo = input("Podaj słowo: ")

slowo2 = slowo[::-1]
if slowo == slowo2:
    print("słowo jest palindromem")
else:
    print("słowo nie jest palindromem")

#zadanie 4
x = 1 
while(True):
    for i in range(1, 12):
        if x == 11:
            break
        if i == 11:
            x = x + 1
            i = 1
        else:
            m = x * i
            print(m)


