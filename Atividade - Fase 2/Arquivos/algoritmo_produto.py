import csv

def cadastrar_produto():
    produtos = []
    while True:
        descricao = input("Digite a descrição do produto: ")
        valor = input("Digite o valor do produto: ")
        embalagem = input("Digite o tipo de embalagem: ")
        
        produtos.append([descricao, valor, embalagem])
        
        resposta = input("Deseja cadastrar um novo produto? (sim/não): ")
        if resposta.lower() != "sim":
            break
    
    return produtos

def criar_arquivo_csv(produtos):
    try:
        with open("Arquivo 1_5_arquivo_produto.csv", "a", newline="") as arquivo:
            writer = csv.writer(arquivo)
            writer.writerows(produtos)
        print("Arquivo CSV criado com sucesso!")
    except Exception as e:
        print("Erro ao criar o arquivo CSV:", str(e))

produtos = cadastrar_produto()
criar_arquivo_csv(produtos)