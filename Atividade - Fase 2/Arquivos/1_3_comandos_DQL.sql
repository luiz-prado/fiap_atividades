/* A) Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e respectivos produtos de cada categoria.
Exiba as seguintes informações: código e nome da categoria, código e descrição do produto, valor unitário, tipo de embalagem e percentual do lucro de cada produto.
Caso exista alguma categoria sem produto, favor exibir a categoria e deixar os dados do produto em branco.
Classifique a consulta por ordem de nome de categoria e nome de produto, ambos de forma ascendente. */

SELECT
    cat.CD_CATEGORIA AS "Código da Categoria",
    cat.DS_CATEGORIA AS "Nome da Categoria",
    pro.CD_PRODUTO AS "Código do Produto",
    pro.DS_PRODUTO AS "Descrição do Produto",
    pro.VL_UNITARIO AS "Valor Unitário",
    pro.TP_EMBALAGEM AS "Tipo de Embalagem",
    pro.VL_PERC_LUCRO AS "% do Lucro"
FROM
    MC_CATEGORIA_PROD cat 
LEFT OUTER JOIN 
    MC_PRODUTO pro ON (cat.CD_CATEGORIA = pro.CD_CATEGORIA)
ORDER BY
    cat.DS_CATEGORIA ASC,
    pro.DS_PRODUTO ASC;



/* B) Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas. Exiba as seguintes informações: código e nome do cliente, e-mail,
telefone, login, data de nascimento, dia da semana da data de nascimento, anos de vida, sexo biológico e CPF. */

SELECT cli.NR_CLIENTE AS "Código do Cliente",
cli.NM_CLIENTE AS "Nome do Cliente",
cli.DS_EMAIL AS "E-Mail",
cli.NR_TELEFONE AS "Telefone",
cli.NM_LOGIN AS "Login",
fis.DT_NASCIMENTO AS "Data de Nascimento",
TO_CHAR(DT_NASCIMENTO, 'Day') AS "Dia da Semana - Nascimento",
TRUNC(MONTHS_BETWEEN(SYSDATE, DT_NASCIMENTO)/12) AS "Anos de vida",
fis.FL_SEXO_BIOLOGICO AS "Sexo Biológico",
fis.NR_CPF AS CPF
FROM MC_CLIENTE cli INNER JOIN MC_CLI_FISICA fis
ON (cli.NR_CLIENTE = fis.NR_CLIENTE);



/* C) Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos: código do produto, nome do produto, data e hora de visualização do produto.
Exiba essas informações classificadas pela data e hora mais recente. */


SELECT * FROM MC_SGV_VISUALIZACAO_VIDEO;
SELECT * FROM MC_PRODUTO;


SELECT pro.CD_PRODUTO,
pro.DS_PRODUTO,
TO_TIMESTAMP(vis.DT_VISUALIZACAO || ' ' || vis.NR_HORA_VISUALIZACAO || ':' || vis.NR_MINUTO_VIDEO || ':' || vis.NR_SEGUNDO_VIDEO, 'YYYY-MM-DD HH24:MI:SS') AS DataVisualizacao
FROM MC_PRODUTO pro
JOIN MC_SGV_VISUALIZACAO_VIDEO vis 
ON pro.CD_PRODUTO = vis.CD_PRODUTO
ORDER BY 
TO_TIMESTAMP(vis.DT_VISUALIZACAO || ' ' || vis.NR_HORA_VISUALIZACAO || ':' || vis.NR_MINUTO_VIDEO || ':' || vis.NR_SEGUNDO_VIDEO, 'YYYY-MM-DD HH24:MI:SS') DESC;





