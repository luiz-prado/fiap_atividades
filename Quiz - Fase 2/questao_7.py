def increment_dict(my_dict, my_list, index):
    key = my_list[index]
    del my_list[index]
    my_dict[key] = my_list
    
    return my_dict

my_dict = {}
product = ["Catan", "Brinquedos", "Jogos de Tabuleiro", 126.66, 8, ["mais comprados", "preferidos por adultos"]]
my_dict = increment_dict(my_dict, product, 0)

print(my_dict)

 