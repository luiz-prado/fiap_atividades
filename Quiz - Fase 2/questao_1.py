# A variável numbers é uma lista que contém 70.000 elementos numéricos de 20.001 até 90.000.

# Para cada elemento da lista, realize os seguintes cálculos cumulativamente:

# 1. Se o elemento da lista for divisível por 273, incremente-o (some-o) à variável S.
# 2. Se o elemento da lista for divisível por 4970, subtraia-o da variável S
# 3. Se o elemento da lista for divisível por 5120, divida o valor da variável S por 2. 

# Para determinar se um número é divisível por outro, basta utilizar o operador de módulo (%), como no exemplo abaixo:

# Indique a alternativa que possui o valor final de S após a realização de todos os cálculos.

S = 0
numbers = range(20000, 90000)

for i in numbers:
    if i % 273 == 0:
        S += i
    elif i % 4970 == 0:
        S -= i
    elif i % 5120 == 0:
        S = S / 2

print(S)

# S = 2268010