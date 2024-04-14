def fatorial(n):
    if n < 1 or n > 100:
        raise Exception("Valor informado nao e valido")
    
    fatorial = n
    
    while n > 0:
        fatorial = fatorial * (n - 1)
        n = n - 1
    
    return fatorial


valor = int(input("Digite um valor inteiro entre 1 e 100: "))

print(fatorial(valor))

# Resposta: A condição existente no laço da linha 5 está incorreta pois permite que o resultado seja multiplicado por zero, o que faz com que todas as respostas geradas pela função estejam erradas.