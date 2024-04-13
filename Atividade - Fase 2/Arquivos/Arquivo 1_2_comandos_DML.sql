-- A) Popular a tabela DEPARTAMENTO, inserindo no mínimo 3 departamentos

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES
('COMERCIAL', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES
('FINANCEIRO', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES
('SAC', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES
('TECNOLOGIA DA INFORMAÇÃO', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES
('RECURSOS HUMANOS', 'A');

SELECT * FROM MC_DEPTO;

-- B) Escolha 2 departamentos e popule a tabela FUNCIONARIO, inserindo no mínimo 3 (três) funcionários para os departamentos escolhidos.

-- Populando tabela FUNCIONARIO com funcionarios do COMERCIAL

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(1, 'Joice Benedita da Silva', TO_DATE('21/10/1990', 'DD/MM/YYYY'), 'F', 'Mulher Cisgênero', 'Gerente Comercial', 7500.50, 'joice.silva@mc.com.br', 'A', TO_DATE('15/05/2020', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(1, 'Carlos Miguel Rodrigues', 1, TO_DATE('11/12/1994', 'DD/MM/YYYY'), 'M', 'Homem Cisgênero', 'Analista Comercial Sr.', 4540.59, 'carlos.rodrigues@mc.com.br', 'A', TO_DATE('11/10/2022', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(1, 'Pedro Maciel Junior', 1, TO_DATE('24/12/1999', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Analista Comercial Pl.', 3520.72, 'pedro.junior@mc.com.br', 'A', TO_DATE('12/07/2023', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(1, 'Maria Eduarda Souza', 1, TO_DATE('26/02/2002', 'DD/MM/YYYY'), 'F', 'Mulher Cisgênero', 'Analista Comercial Jr.', 3022.52, 'maria.souza@mc.com.br', 'A', TO_DATE('05/10/2023', 'DD/MM/YYYY'));

-- Populando tabela FUNCIONARIO com funcionarios do FINANCEIRO

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(2, 'André Ribeiro Cavalcanti', TO_DATE('24/11/1982', 'DD/MM/YYYY'), 'M', 'Homem Cisgênero', 'Gerente de Finanças', 7892.51, 'andre.cavalcanti@mc.com.br', 'A', TO_DATE('12/02/2018', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(2, 'Rebeca Oliveira Rodrigues', 5, TO_DATE('15/12/1999', 'DD/MM/YYYY'), 'F', 'Mulher Cisgênero', 'Analista de Finanças Sr.', 4740.59, 'rebeca.rodrigues@mc.com.br', 'A', TO_DATE('11/11/2020', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(2, 'Bianca Lima Carvalho', 5, TO_DATE('22/11/1999', 'DD/MM/YYYY'), 'F', 'Mulher Cisgênero', 'Analista de Finanças Sr.', 4520.72, 'bianca.carvalho@mc.com.br', 'A', TO_DATE('12/07/2021', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(2, 'Nicolas Carvalho Barbosa', 5, TO_DATE('21/01/2004', 'DD/MM/YYYY'), 'M', 'Homem Cisgênero', 'Estagiário', 2022.52, 'nicolas.barbosa@mc.com.br', 'A', TO_DATE('01/12/2023', 'DD/MM/YYYY'));

-- Populando tabela FUNCIONARIO com funcionarios do SAC

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(3, 'Carla Cardoso Ribeiro', TO_DATE('25/02/1989', 'DD/MM/YYYY'), 'M', 'Mulher Cisgênero', 'Gerente de Atendimento', 6500.50, 'carla.ribeiro@mc.com.br', 'A', TO_DATE('12/07/2021', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(3, 'Rafaela Pinto Araujo', 9, TO_DATE('10/10/1997', 'DD/MM/YYYY'), 'M', 'Mulher Cisgênero', 'Analista de Atendimento Sr.', 4640.59, 'rafaela.araujo@mc.com.br', 'A', TO_DATE('11/11/2021', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(3, 'Sofia Rodrigues Ribeiro', 9, TO_DATE('24/12/1999', 'DD/MM/YYYY'), 'M', 'Mulher Cisgênero', 'Analista de Atendimento Sr.', 4520.72, 'sofia.ribeiro@mc.com.br', 'A', TO_DATE('17/12/2021', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(3, 'Júlio Rocha Almeida', 9, TO_DATE('26/02/2002', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Assistente de Atendimento', 2422.52, 'julio.almeida@mc.com.br', 'A', TO_DATE('25/01/2024', 'DD/MM/YYYY'));

-- Populando tabela FUNCIONARIO com funcionarios do TI

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(4, 'Enzo Souza Ribeiro', TO_DATE('25/10/1990', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Gerente de Tecnologia da Informação', 9500.50, 'enzo.souza@mc.com.br', 'A', TO_DATE('15/05/2020', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(4, 'Diogo Almeida Carvalho', 13, TO_DATE('12/12/1994', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Desenvolvedor de Software Sr.', 7540.59, 'diogo.carvalho@mc.com.br', 'A', TO_DATE('11/10/2022', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(4, 'Tiago Costa Alves', 13, TO_DATE('26/12/2003', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Estagiario', 3520.72, 'tiago.alves@mc.com.br', 'A', TO_DATE('12/07/2023', 'DD/MM/YYYY'));

-- Populando tabela FUNCIONARIO com funcionarios do RH

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(5, 'Lara Fernandes Melo', TO_DATE('25/10/1993', 'DD/MM/YYYY'), 'M', 'Não-binário', 'Gerente de Recursos Humanos', 8500.50, 'lara.melo@mc.com.br', 'A', TO_DATE('12/05/2022', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(5, 'João Araujo Pereira', 16, TO_DATE('14/12/1997', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', 'Analista de Recursos Humanos Sr.', 6540.59, 'joao.pereira@mc.com.br', 'A', TO_DATE('11/10/2021', 'DD/MM/YYYY'));
INSERT INTO MC_FUNCIONARIO (CD_DEPTO, NM_FUNCIONARIO, CD_GERENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, DS_CARGO, VL_SALARIO, DS_EMAIL, ST_FUNC, DT_CADASTRAMENTO) VALUES
(5, 'Anna Castro Pereira', 16, TO_DATE('21/10/2000', 'DD/MM/YYYY'), 'M', 'Mulher Cisgênero', 'Estagiario', 2520.72, 'anna.pereira@mc.com.br', 'A', TO_DATE('12/02/2024', 'DD/MM/YYYY'));

SELECT * FROM MC_FUNCIONARIO;



-- C) Popular 2 ESTADOS do Brasil. Associe no mínimo 2 cidades para cada Estado. Para cada cidade, associe no mínimo 1 bairro e para cada bairro associe 2 endereços, totalizando no mínimo 8 endereços diferentes. 



-- Populando dois estados do Brasil

INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES
('SP', 'São Paulo');
INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES
('RJ', 'Rio de Janeiro');

SELECT * FROM MC_ESTADO;


-- Populando três cidade para cada estado

INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('SP', 'São Paulo', 011);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('SP', 'Santo André', 011);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('SP', 'Campinas', 019);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('RJ', 'Rio de Janeiro', 021);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('RJ', 'Nova Iguaçu', 021);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, NR_DDD) VALUES
('RJ', 'Petrópolis', 021);

SELECT * FROM MC_CIDADE;


-- Populando dois bairros para cada cidade

INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(1, 'Morumbi', 'Zona Sul');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(1, 'Interlagos', 'Zona Sul');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(2, 'Bangu', 'ABC Paulista');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(2, 'Vila São Pedro', 'ABC Paulista');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(3, 'Cambuí', 'Interior Paulista');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(3, 'Nova Campinas', 'Interior Paulista');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(4, 'Botafogo', 'Zona Sul');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(4, 'Copacabana', 'Zona Sul');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(5, 'Nova América', 'Centro');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(5, 'Nova Luz', 'Centro');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(6, 'Caxambu', 'Centro');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES
(6, 'Valparaíso', 'Centro');

SELECT * FROM MC_BAIRRO;

-- Populando dois logradouros para cada bairro

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(1, 'Rua Cordisburgo', 05614090);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(1, 'Rua Gil Roseiro', 05654020);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(2, 'Praça Havana', 04788220);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(2, 'Avenida José Carlos Pace', 04786040);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(3, 'Rua Porto Rico', 09280720);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(3, 'Rua Rhodia', 09280690);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(4, 'Rua Abolição', 09210180);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(4, 'Rua Acre', 09210380);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(5, 'Avenida João Mendes Júnior', 13024030);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(5, 'Rua Alferes Domingos', 13025100);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(6, 'Rua Teodoro Oliva', 13092103);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(6, 'Rua Pedro Estevão de Siqueira', 13092113);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(7, 'Praça Juliano Moreira', 22290150);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(7, 'Praça Canoinhas', 22250000);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(8, 'Rua Aires Saldanha', 22060030);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(8, 'Rua Assis Brasil', 22030010);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(9, 'Rua Aguauna', 26022100);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(9, 'Rua Ipameri', 26021530);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(10, 'Estrada Iguaçu', 26065610);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(10, 'Rua Indios', 26063620);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(11, 'Rua Luiz Imbroisi', 25610041);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(11, 'Servidão João Pereira', 25615056);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(12, 'Rua André Tesch', 25655260);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES
(12, 'Rua Abreu Lima', 25655030);

SELECT * FROM MC_LOGRADOURO;



-- D) Cadastre na tabela de ENDERECO FUNCIONARIO os endereços de 2 funcionários à sua escolha



INSERT INTO MC_END_FUNC (CD_FUNCIONARIO, CD_LOGRADOURO, NR_END, DT_INICIO, ST_END) VALUES
(5, 16, 118, TO_DATE('12/05/2022', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_FUNC (CD_FUNCIONARIO, CD_LOGRADOURO, NR_END, DT_INICIO, ST_END) VALUES
(10, 6, 21, TO_DATE('14/05/2023', 'DD/MM/YYYY'), 'A');

SELECT * FROM MC_END_FUNC;



-- E) Cadastre no mínimo 2 CLIENTES PESSOAS FÍSICAS e 1 CLIENTES PESSOA JÚRIDICA e associe no mínimo 1 endereço para cada cliente


-- Inserindo clientes na tabela CLIENTE

INSERT INTO MC_CLIENTE (NM_CLIENTE, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Boa Vista Tecnologia LTDA', 450.00, 'A', 'contato@boavista.com.br', '(011)989210928', 'boavista', 'boavista123');
INSERT INTO MC_CLIENTE (NM_CLIENTE, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Advocacia Junior Souza', 550.25, 'A', 'contato@advocaciajunior.com.br', '(011)989236125', 'advocaciajunior', 'advocacia123');
INSERT INTO MC_CLIENTE (NM_CLIENTE, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Multimidia Eletronica LTDA', 724.20, 'A', 'contato@multimidia.com.br', '(019)902912928', 'multimidia', 'multimidia123');
INSERT INTO MC_CLIENTE (NM_CLIENTE, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Jorge Henrique de Souza', 152.35, 'A', 'jorginho.souza@gmail.com.br', '(021)902812521', 'jorge.souza', 'flamengo81');
INSERT INTO MC_CLIENTE (NM_CLIENTE, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Maria Joaquina Spliner', 312.20, 'A', 'maria.spliner@gmail.com.br', '(021)982125217', 'maria.spliner', 'spliner9025');

SELECT * FROM MC_CLIENTE;

-- Inserindo os clientes PJ cadastrados anteriormente na tabela CLIENTE PESSOA JURIDICA

INSERT INTO MC_CLI_JURIDICA (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ) VALUES
(1, TO_DATE('15/02/2022', 'DD/MM/YYYY'), '53.809.201/0001-22');
INSERT INTO MC_CLI_JURIDICA (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ) VALUES
(2, TO_DATE('16/01/2020', 'DD/MM/YYYY'), '23.252.261/0001-21');
INSERT INTO MC_CLI_JURIDICA (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ) VALUES
(3, TO_DATE('21/06/2023', 'DD/MM/YYYY'), '73.021.921/0001-92');

SELECT * FROM MC_CLI_JURIDICA;

-- Inserindo os clientes PF cadastrados anteriormente na tabela CLIENTE PESSOA FISICA

INSERT INTO MC_CLI_FISICA (NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF) VALUES
(4, TO_DATE('12/05/1999', 'DD/MM/YYYY'), 'H', 'Homem Cisgênero', '912.025.089-10');
INSERT INTO MC_CLI_FISICA (NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF) VALUES
(5, TO_DATE('11/06/1998', 'DD/MM/YYYY'), 'M', 'Mulher Cisgênero', '119.675.921-40');


SELECT * FROM MC_CLI_FISICA;

-- Associando endereços para os clientes cadastrados

SELECT * FROM MC_END_CLI;

INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DS_COMPLEMENTO_END, DT_INICIO, ST_END) VALUES
(1, 4, 9212, 'Andar 9, Sala 3', TO_DATE('01/02/2024', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END) VALUES
(2, 1, 232, TO_DATE('02/01/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DS_COMPLEMENTO_END, DT_INICIO, ST_END) VALUES
(3, 5, 92, 'Andar 21, Sala 32', TO_DATE('06/03/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END) VALUES
(4, 20, 921, TO_DATE('02/05/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END) VALUES
(5, 23, 12, TO_DATE('07/06/2023', 'DD/MM/YYYY'), 'A');


-- F)  Cadastre um novo cliente que já tenha um mesmo login já criado.

INSERT INTO MC_CLIENTE (NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) VALUES
('Multimia Automotiva LTDA', 5, 722.30, 'A', 'automultimidia@automult.com.br', '(011)921205221', 'multimidia', 'multimidiaauto212');

/* Não foi possivel incluir esse novo cliente. A coluna "NM_LOGIN", existente na tabela MC_CLIENTE possui uma restrição UNIQUE, no qual garante a exclusividade dos valores cadastrados na mesma
ou seja, não permite a duplicidade de valores. Assim, no momento da tentativa de realizar o cadastro de um cliente com um valor de Login já existente na tabela (assim, tentando violar a restrição UNIQUE)
, o cliente não é cadastrado e é exibido o erro de "restrição exclusiva". Para que o cadastro do cliente seja realizado será necessário alterar o valor de Login para um não existente na tabela */


COMMIT;


-- G) Cadastre as seguintes categorias para os produtos: Eletrônicos, Esporte e Lazer;  Pet Shop.

INSERT INTO MC_CATEGORIA_PROD (TP_CATEGORIA, DS_CATEGORIA, DT_INICIO, ST_CATEGORIA) VALUES
('P', 'Eletrônicos', TO_DATE('01/02/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_CATEGORIA_PROD (TP_CATEGORIA, DS_CATEGORIA, DT_INICIO, ST_CATEGORIA) VALUES
('P', 'Esporte e Lazer', TO_DATE('04/03/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_CATEGORIA_PROD (TP_CATEGORIA, DS_CATEGORIA, DT_INICIO, ST_CATEGORIA) VALUES
('P', 'Pet Shop', TO_DATE('05/03/2023', 'DD/MM/YYYY'), 'A');

SELECT * FROM MC_CATEGORIA_PROD;


-- H) Cadastre 5 produtos e associe as categorias adequadas ao produto.

INSERT INTO MC_PRODUTO (CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD) VALUES
(1, 'A2249127102841', 'Notebook Inspiron 15', 2799.00, 'Média', 'A', 0.70, 'Notebook para o seu dia a dia. Desfrute
de um desempenho ágil, porém silencioso, com processadores Intel Core de até 12 geração combinados com SSD PCIe. Conte também com configurações disponíveis com placa de vídeo integrada Intel Iris Xe');
INSERT INTO MC_PRODUTO (CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD) VALUES
(1, 'A2328401725402', 'Iphone XR', 1699.99, 'Pequena', 'A', 0.50, 'A tela do iPhone XR tem bordas arredondadas que se ajustam ao design curvo do telefone
dentro da sua forma retangular. Quando medida como um retângulo, a tela tem 6,06 polegadas na diagonal. A área real de visualização é menor.');
INSERT INTO MC_PRODUTO (CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD) VALUES
(2, 'A2249127102841', 'Raquete de tenis Wilson Aggressor', 279.00, 'Média', 'A', 0.30, 'Wilson Raquete de tênis Aggressor 112 para jogadores com um estilo de jogo agressivo, raquete extra longa para mais alcance');
INSERT INTO MC_PRODUTO (CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD) VALUES
(3, 'A2249127102841', 'Whiskas Sache para gatos adultos', 29.00, 'Pequena', 'A', 0.30, 'Ração úmida para gatos adultos, sabor frango');
INSERT INTO MC_PRODUTO (CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD) VALUES
(3, 'A2249127102841', 'Rasqueadeira Autolimpante', 59.00, 'Pequena', 'A', 0.25, 'SAÚDE E BEM-ESTAR DO ANIMAL: Auxilia na prevenção de bolas de pelos em gatos e promove a transpiração saudável em cães, adaptando-se a mudanças climáticas.');

SELECT * FROM MC_PRODUTO;


-- I) Cadastre duas categorias para os vídeos: Instalação do produto e Uso no cotidiano. Você é livre para cadastrar outras categorias, caso deseje.


INSERT INTO MC_CATEGORIA_PROD (TP_CATEGORIA, DS_CATEGORIA, DT_INICIO, ST_CATEGORIA) VALUES
('V', 'Instalação do produto', TO_DATE('12/03/2023', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_CATEGORIA_PROD (TP_CATEGORIA, DS_CATEGORIA, DT_INICIO, ST_CATEGORIA) VALUES
('V', 'Uso no cotidiano', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 'A');

SELECT * FROM MC_CATEGORIA_PROD;


-- J) Cadastre 2 vídeos de produtos na tabela MC_SGV_PRODUTO_VIDEO e associe esses 2 vídeos em um único produto já cadastrado. Associe também as categorias adequadas ao vídeo.


SELECT * FROM MC_SGV_PRODUTO_VIDEO;

INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, ST_VIDEO_PROD) VALUES
(1, 1, 4, 'A');
INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, ST_VIDEO_PROD) VALUES
(2, 1, 5, 'A');


-- K) Por fim, cadastre 2 visualizações de vídeos de produtos na tabela MC_SGV_VISUALIZACAO_VIDEO e associe a um cliente a seu critério.

SELECT * FROM MC_SGV_VISUALIZACAO_VIDEO;

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (CD_VISUALIZACAO_VIDEO, NR_CLIENTE, CD_PRODUTO, NR_SEQUENCIA, DT_VISUALIZACAO, NR_HORA_VISUALIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO) VALUES
(1, 4, 1, 1, TO_DATE('12/03/2023', 'DD/MM/YYYY'), 11, 23, 41);
INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (CD_VISUALIZACAO_VIDEO, NR_CLIENTE, CD_PRODUTO, NR_SEQUENCIA, DT_VISUALIZACAO, NR_HORA_VISUALIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO) VALUES
(2, 5, 2, 1, TO_DATE('13/03/2023', 'DD/MM/YYYY'), 09, 21, 51);


-- L) Confirme todas as transações pendentes (muito importante).

COMMIT;


-- M) Selecione um específico funcionário e atualize o Cargo e aplique 12% de aumento de salário.

UPDATE MC_FUNCIONARIO
SET VL_SALARIO = VL_SALARIO*1.12
WHERE CD_FUNCIONARIO = 11; -- Atualizando o salário do funcionário com código 11

SELECT * FROM MC_FUNCIONARIO;


-- N) Atualize o nome de um departamento a sua escolha, utilizando como filtro o nome do departamento antes de ser atualizado.


UPDATE MC_DEPTO
SET NM_DEPTO = 'TECNOLOGIA DA INFORMAÇÃO E DADOS'
WHERE NM_DEPTO = 'TECNOLOGIA DA INFORMAÇÃO';

SELECT * FROM MC_DEPTO;



-- O)  Atualize a data de nascimento de um cliente pessoa física. Defina a nova data como sendo 18/05/2002.


SELECT * FROM MC_CLI_FISICA;

UPDATE MC_CLI_FISICA
SET DT_NASCIMENTO = TO_DATE('18/05/2002', 'DD/MM/YYYY')
WHERE NR_CLIENTE = 4;


-- P)  Desative um funcionário colocando o status como I(nativo) e também a data de desligamento como sendo a data de hoje (sysdate).

SELECT * FROM MC_FUNCIONARIO;

UPDATE MC_FUNCIONARIO
SET ST_FUNC = 'I',
DT_DESLIGAMENTO = TO_DATE(SYSDATE, 'DD/MM/YYYY')
WHERE CD_FUNCIONARIO = 14;


/* Q) Selecione um endereço de cliente e coloque o status como I(nativo) e preencha a data de término como sendo a data limite de entrega do trabalho.
Utilize a função to_date para registrar esse novo valor da data. */

SELECT * FROM MC_END_CLI;

UPDATE MC_END_CLI
SET ST_END = 'I',
DT_TERMINO = TO_DATE('16/04/2024', 'DD/MM/YYYY')
WHERE NR_CLIENTE = 2;


-- R) Tente eliminar um estado que tenha uma cidade cadastrada. Isso foi possível? Justifique o motivo.

SELECT * FROM MC_ESTADO;

DELETE FROM MC_ESTADO
WHERE SG_ESTADO = 'SP';

-- Não foi possível executar o comando. Isso ocorreu pois a restrição de integridade FK foi violada. A tabela cidade possui uma relação/dependência com a tabela estado e, assim, o banco de dados evita a
-- exclusão dos dados, evitando inconsistências.


-- S) Selecione um produto e tente atualizar o status do produto com o status X. Isso foi possível? Justifique o motivo.

SELECT * FROM MC_PRODUTO;

UPDATE MC_PRODUTO
SET ST_PRODUTO = 'X'
WHERE CD_PRODUTO = 1;

-- Não foi possível executar o comando. Isso ocorreu pois a restrição de verificação (CHECK) foi violada. No momento da criação da tabela de produtos definimos uma Constraint CHECK, onde a coluna
-- ST_PRODUTO aceitaria apenas os valores I (Inativo) e A (Ativo). Assim, qualquer outro valor diferente dos definidos não serão aceitos, evitando cadastros.


-- T) Confirme todas as transações pendentes.

COMMIT;



