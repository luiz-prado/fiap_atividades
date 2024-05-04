import csv

def cadastrar_produto(): # Função para cadastrar produtos
    produtos = []
    while True:
        try:
            descricao = input("Digite a descrição do produto: ")
        except KeyboardInterrupt:
            print("Operação interrompida pelo usuário.")
            break
        except Exception as erro:
            print("Erro desconhecido:", erro)
            break

        try:
            valor = float(input("Digite o valor do produto: "))
        except ValueError:
            print("Valor inválido. Por favor, insira um valor numérico válido.")
            break
        except KeyboardInterrupt:
            print("Operação interrompida pelo usuário.")
            break
        except Exception as erro:
            print("Erro desconhecido:", erro)   
            break

        try:
            embalagem = input("Digite o tipo de embalagem: ")
        except KeyboardInterrupt:
            print("Operação interrompida pelo usuário.")
            break
        except Exception as erro:
            print("Erro desconhecido:", erro)    
            break

        produtos.append({"Descricao do produto": descricao, "Valor do produto": valor, "Tipo de embalagem": embalagem}) # Adiciona o produto ao dicionário
        
        resposta = input("Deseja cadastrar um novo produto? (sim/não): ") # Pergunta se deseja cadastrar um novo produto
        if resposta.lower() != "sim":
            break 
    
    return produtos

def criar_csv(produtos): # Função para salvar os produtos em um arquivo CSV
    try:
        with open("1_5_arquivo_produto.csv", "w", newline="") as arquivo:
            writer = csv.DictWriter(arquivo, fieldnames=["Descricao do produto", "Valor do produto", "Tipo de embalagem"])
            writer.writeheader()
            writer.writerows(produtos)
        print("Arquivo CSV criado com sucesso!")
    except Exception as e:
        print("Erro ao salvar o arquivo CSV:", str(e))

produtos = cadastrar_produto()
if len(produtos) >= 5:
    criar_csv(produtos)
else:
    print("É necessário cadastrar no mínimo 5 produtos.")