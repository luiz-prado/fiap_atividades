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
    nome_arquivo = "1_5_arquivo_produto.csv"
    with open(nome_arquivo, "a", newline="") as arquivo:
        writer = csv.writer(arquivo)
        writer.writerow(["Descricao", "Valor", "Embalagem"])
        writer.writerows(produtos)
    
    print(f"Arquivo {nome_arquivo} criado com sucesso!")

try:
    produtos = cadastrar_produto()
    if len(produtos) >= 5:
        criar_arquivo_csv(produtos)
    else:
        print("É necessário cadastrar no mínimo 5 produtos.")
        produtos = cadastrar_produto()
except Exception as e:
    print(f"Ocorreu um erro: {str(e)}")