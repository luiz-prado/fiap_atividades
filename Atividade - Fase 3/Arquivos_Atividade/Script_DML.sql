SELECT * FROM MC_BAIRRO;
SELECT * FROM MC_CATEGORIA_PROD;
SELECT * FROM MC_CIDADE;
SELECT * FROM MC_CLI_FISICA;
SELECT * FROM MC_CLI_JURIDICA;
SELECT * FROM MC_CLIENTE;
SELECT * FROM MC_DEPTO;
SELECT * FROM MC_END_CLI;
SELECT * FROM MC_END_FUNC;
SELECT * FROM MC_ESTADO;
SELECT * FROM MC_FUNCIONARIO;
SELECT * FROM MC_LOGRADOURO;
SELECT * FROM MC_PRODUTO;
SELECT * FROM MC_SGV_OCORRENCIA_SAC;
SELECT * FROM MC_SGV_PRODUTO_VIDEO;
SELECT * FROM MC_SGV_SAC;
SELECT * FROM MC_SGV_VISUALIZACAO_VIDEO;
SELECT * FROM MC_ALIQUOTA_MEDIA_ICMS_ESTADO;

INSERT INTO MC_SGV_SAC(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC,
DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES (SQ_MC_SGV_SAC.NEXTVAL, 2, 13, 6, 'Cliente nao consegue ligar o Notebook, tela preta logo ao iniciar', sysdate-1, 14, 'D', 'E');
INSERT INTO MC_SGV_SAC(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC,
DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES (SQ_MC_SGV_SAC.NEXTVAL, 1, 11, 6, 'Cliente sugeriu a substitui��o de chaves que possuem o mesmo tamanho', sysdate-1, 14, 'S', 'E');
INSERT INTO MC_SGV_SAC(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC,
DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES (SQ_MC_SGV_SAC.NEXTVAL, 7, 10, 2, 'Cliente sugeriu a inclus�o de diferentes brocas para a furadeira', sysdate-1, 14, 'S', 'E');
INSERT INTO MC_SGV_SAC(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC,
DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES (SQ_MC_SGV_SAC.NEXTVAL, 6, 5, 2, 'Cliente afirmou que suas noites de sono est�o muito melhores com o novo colch�o', sysdate-1, 14, 'E', 'E');
INSERT INTO MC_SGV_SAC(NR_SAC, NR_CLIENTE, CD_PRODUTO, CD_FUNCIONARIO, DS_DETALHADA_SAC,
DT_ABERTURA_SAC, HR_ABERTURA_SAC, TP_SAC, ST_SAC)
VALUES (SQ_MC_SGV_SAC.NEXTVAL, 8, 2, 1, 'Cliente atestou que um dos lados do fone de ouvido n�o est� funcionando', sysdate-1, 14, 'D', 'E');

UPDATE MC_SGV_SAC  SET DS_DETALHADA_RETORNO_SAC = 'O cliente carregou o notebook e funcionou!',
DT_ATENDIMENTO = SYSDATE, HR_ATENDIMENTO_SAC = 2, NR_TEMPO_TOTAL_SAC = NR_TEMPO_TOTAL_SAC+2
WHERE NR_SAC = 2;
UPDATE MC_SGV_SAC  SET DS_DETALHADA_RETORNO_SAC = 'A substitui��o ser� feita de acordo com a sugest�o.',
DT_ATENDIMENTO = SYSDATE, HR_ATENDIMENTO_SAC = 2, NR_TEMPO_TOTAL_SAC = NR_TEMPO_TOTAL_SAC+2
WHERE NR_SAC = 3;
UPDATE MC_SGV_SAC  SET DS_DETALHADA_RETORNO_SAC = 'A inclus�o ser� feita de acordo com a sugest�o.',
DT_ATENDIMENTO = SYSDATE, HR_ATENDIMENTO_SAC = 2, NR_TEMPO_TOTAL_SAC = NR_TEMPO_TOTAL_SAC+2
WHERE NR_SAC = 4;
UPDATE MC_SGV_SAC  SET DS_DETALHADA_RETORNO_SAC = 'A Melhores Compras agradece!',
DT_ATENDIMENTO = SYSDATE, HR_ATENDIMENTO_SAC = 2, NR_TEMPO_TOTAL_SAC = NR_TEMPO_TOTAL_SAC+2
WHERE NR_SAC = 5;
UPDATE MC_SGV_SAC  SET DS_DETALHADA_RETORNO_SAC = 'O cliente revisitou os videos mas o problema continua. Solicitamos a troca do produto.',
DT_ATENDIMENTO = SYSDATE, HR_ATENDIMENTO_SAC = 2, NR_TEMPO_TOTAL_SAC = NR_TEMPO_TOTAL_SAC+2
WHERE NR_SAC = 6;

commit;