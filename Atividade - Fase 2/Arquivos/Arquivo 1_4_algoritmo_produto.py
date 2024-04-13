import pandas as pd

def cadastro_produto():
    produtos = {'descricao_produto': '', 'valor_produto': '', 'tipo_embalagem': ''}
    
    # Validação da descrição do produto
    while True:
        descricao_produto = input('Insira a descrição do produto: ')
        if descricao_produto.strip():  # Verifica se a descrição não está vazia
            produtos['descricao_produto'] = descricao_produto
            break
        else:
            print("Descrição inválida. Por favor, insira uma descrição válida.")

    # Validação do valor do produto
    while True:
        try:
            valor_produto = float(input('Digite o valor do produto: '))
            produtos['valor_produto'] = valor_produto
            break
        except ValueError:
            print("Valor inválido. Por favor, insira um valor numérico válido.")

    # Validação do tipo de embalagem
    while True:
        tipo_embalagem = input('Digite o tipo de embalagem do produto: ')
        if tipo_embalagem.strip():  # Verifica se o tipo de embalagem não está vazio
            produtos['tipo_embalagem'] = tipo_embalagem
            break
        else:
            print("Tipo de embalagem inválido. Por favor, insira um tipo de embalagem válido.")

    return produtos

produtos_cadastrados = []

while True:
    novo_produto = cadastro_produto() 
    produtos_cadastrados.append(novo_produto)  

    continuar = input("Deseja cadastrar outro produto? (s/n): ")
    if continuar.lower() != 's':
        break




df = pd.DataFrame(produtos_cadastrados)
df.to_csv('1_5_arquivo_produto.csv')
