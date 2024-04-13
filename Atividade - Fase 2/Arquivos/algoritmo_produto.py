import csv

def cadastrar_produto():
    produtos = {'descricao_produto': '', 'valor_produto': '', 'tipo_embalagem': ''}

    try:
        while True:
            descricao = input("Digite a descrição do produto: ")
            valor = float(input("Digite o valor do produto: "))
            embalagem = input("Digite o tipo de embalagem: ")
            
            produtos['descricao_produto'] = descricao
            produtos['valor_produto'] = valor
            produtos['tipo_embalagem'] = embalagem
            
            resposta = input("Deseja cadastrar um novo produto? (sim/não): ")
            if resposta.lower() != "sim":
                break
    except ValueError:
        print("Valor inválido. Por favor, insira um valor numérico válido.")
    except KeyboardInterrupt:
        print("Operação interrompida pelo usuário.")
    except Exception as erro:
        print("Erro desconhecido:", erro)
    finally:
        print("Cadastro finalizado.")
    
    return produtos


def criar_arquivo_csv(produtos):
    try:
        if len(produtos) < 5:
            raise Exception("É necessário cadastrar no mínimo 5 produtos.")
        else:
            with open("Arquivo 1_5_arquivo_produto.csv", "a", newline="") as arquivo:
                writer = csv.writer(arquivo)
                writer.writerow(produtos.keys())
                
                for produto in produtos:
                    writer.writerow([val[produto] for val in produto.values()])
            print("Arquivo CSV criado com sucesso!")
    except Exception as erro:
        print("Não foi possivel carregar as informações:", erro)

produtos = cadastrar_produto()
criar_arquivo_csv(produtos)