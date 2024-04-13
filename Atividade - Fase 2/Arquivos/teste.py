import csv

produtos = {'Descricao': '', 'Valor': '', 'Tipo de embalagem': ''}

try:
    while True:
        descricao = input('Digite a descrição do produto:')
        valor = float(input('Digite o valor do produto:'))
        tipo_embalagem = input('Digite o tipo de embalagem do produto:')
except ValueError:
    print('Valor inválido. Por favor, insira um valor numérico válido.')
except KeyboardInterrupt:
    print('Operação interrompida pelo usuário.')
except Exception as erro:
    print('Erro desconhecido:', erro)
finally:
    print('Cadastro finalizado.')