product = ["Catan", "War", "Combate","Bandido", "Eureka"]
prices = [2.01, 203.14, 43.55, 12.3, 45.9, 48.6, 90.1]
prices = list(map(lambda x: int(x), prices)) # essa linha faz com que os valores sejam convertidos para inteiros, arredondando os valores decimais para baixo
x = sum(map(lambda x: len(x), product)) # essa linha faz com que a quantidade de caracteres de cada item da lista seja somada

print(prices)
print(x)

# Resposta: A linha 3 atualiza a lista prices, arredondando para baixo todos os valores; a linha 4 calcula a soma dos tamanhos de todos os nomes da lista product.