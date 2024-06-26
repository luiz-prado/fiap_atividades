-- CRIANDO TABELA PRODUTO

CREATE TABLE T_SGV_CAT_PRODUTO(
COD_CAT_PRODUTO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
DES_CAT_PRODUTO VARCHAR(30) NOT NULL,
STA_CAT_PRODUTO CHAR(1) NOT NULL,
DAT_INI_CAT_PRODUTO DATE NOT NULL,
DAT_TERM_CAT_PRODUTO DATE);

-- COMENT�RIO SOBRE TABELA E CAMPOS - CAT_PRODUTO
COMMENT ON COLUMN T_SGV_CAT_PRODUTO.COD_CAT_PRODUTO IS 'Deve ser um numero sequencial';
COMMENT ON COLUMN T_SGV_CAT_PRODUTO.DES_CAT_PRODUTO IS 'Deve ser unica - UNIQUE';

-- ALTERANDO A TABELA CAT_PRODUTO, INCLUINDO AS CONSTRAINTS PK E UN

ALTER TABLE T_SGV_CAT_PRODUTO
ADD CONSTRAINT PK_SGV_CAT_PRODUTO
PRIMARY KEY (COD_CAT_PRODUTO);

ALTER TABLE T_SGV_CAT_PRODUTO
ADD CONSTRAINT UN_SGV_CAT_PROD_DES
UNIQUE (DES_CAT_PRODUTO);

-- CRIANDO TABELA PRODUTO 

CREATE TABLE T_SGV_PRODUTO(
COD_PRODUTO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
COD_CAT_PRODUTO NUMBER NOT NULL,
DES_PRODUTO VARCHAR2(50) NOT NULL,
DES_COMPLETA_PRODUTO VARCHAR2(100) NOT NULL,
COD_BARRAS_PRODUTO NUMBER(13),
PRC_PRODUTO NUMBER(5,2) NOT NULL,
STA_PRODUTO CHAR(1) NOT NULL);

-- COMENT�RIO SOBRE TABELA E CAMPOS - PRODUTO
COMMENT ON COLUMN T_SGV_PRODUTO.STA_PRODUTO IS 'Recebe apenas A (ativo), P (prospec��o) ou I (inativo)';
COMMENT ON COLUMN T_SGV_PRODUTO.COD_PRODUTO IS 'Deve ser um numero sequencial';
COMMENT ON COLUMN T_SGV_PRODUTO.DES_PRODUTO IS 'Descri��o deve ser unica - UNIQUE';

-- ALTERANDO A TABELA PRODUTO, INCLUINDO AS CONSTRAINTS PK, UN E CK

ALTER TABLE T_SGV_PRODUTO
ADD CONSTRAINT PK_SGV_PRODUTO
PRIMARY KEY (COD_PRODUTO);

ALTER TABLE T_SGV_PRODUTO
ADD CONSTRAINT UN_SGV_PROD_DES
UNIQUE (DES_PRODUTO);

ALTER TABLE T_SGV_PRODUTO
ADD CONSTRAINT CK_SGV_PRODUTO_STA
CHECK (STA_PRODUTO IN ('A', 'I', 'P'))

-- CRIANDO TABELA CLIENTE

CREATE TABLE T_SGV_CLIENTE( 
COD_CLIENTE NUMBER(10) GENERATED ALWAYS AS IDENTITY,
NOM_CLIENTE VARCHAR2(50) NOT NULL,
QTD_ESTRELAS_CLIENTE NUMBER(2),
STA_CLIENTE CHAR(1) NOT NULL,
TEL_CLIENTE VARCHAR2(14),
LOG_CLIENTE VARCHAR2(20) NOT NULL,
SEN_CLIENTE VARCHAR2(20) NOT NULL);

-- COMENT�RIO SOBRE TABELA E CAMPOS - CLIENTE
COMMENT ON COLUMN T_SGV_CLIENTE.STA_CLIENTE IS 'Recebe apenas A (ativo) ou I (inativo)';

-- ALTERANDO A TABELA CLIENTE, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_CLIENTE
ADD CONSTRAINT PK_SGV_CLIENTE
PRIMARY KEY (COD_CLIENTE);

-- CRIANDO TABELA CLIENTE PJ

CREATE TABLE T_SGV_CLIENTE_PJ(
COD_CLIENTE NUMBER(10) NOT NULL,
DAT_FUND_CLIENTE DATE,
CNPJ_CLIENTE VARCHAR2(14),
NUM_INSCRICAO_CLIENTE VARCHAR(9));

-- ALTERANDO A TABELA CLIENTE PJ, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_CLIENTE_PJ
ADD CONSTRAINT PK_SGV_CLIENTE_PJ
PRIMARY KEY (COD_CLIENTE);

-- CRIANDO TABELA CLIENTE PF

CREATE TABLE T_SGV_CLIENTE_PF(
COD_CLIENTE NUMBER(10) NOT NULL,
CPF_CLIENTE VARCHAR2(11) NOT NULL,
DAT_NASC_CLIENTE DATE NOT NULL,
SEX_BIO_CLIENTE VARCHAR2(10) NOT NULL,
GEN_CLIENTE VARCHAR2(20));

-- ALTERANDO A TABELA CLIENTE PF, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_CLIENTE_PF
ADD CONSTRAINT PK_SGV_CLIENTE_PF
PRIMARY KEY (COD_CLIENTE);

-- CIRANDO TABELA CLASSIFICACAO DO VIDEO

CREATE TABLE T_SGV_CLASS_VIDEO(
COD_CLASS_VIDEO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
DES_CLASS_VIDEO VARCHAR2(50) NOT NULL);

-- ALTERANDO A TABELA CLASSIFICACAO DO VIDEO, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_CLASS_VIDEO
ADD CONSTRAINT PK_SGV_CLASS_VIDEO
PRIMARY KEY (COD_CLASS_VIDEO);

-- CRIANDO A TABELA VIDEO DO PRODUTO

CREATE TABLE T_SGV_VIDEO_PRODUTO(
COD_VIDEO_PRODUTO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
COD_PRODUTO NUMBER NOT NULL,
COD_CLASS_VIDEO NUMBER NOT NULL,
DAT_VIDEO_PRODUTO DATE NOT NULL,
STA_VIDEO_PRODUTO CHAR(1) NOT NULL);

-- ALTERANDO A TABELA VIDEO DO PRODUTO, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_VIDEO_PRODUTO
ADD CONSTRAINT PK_SGV_VIDEO_PRODUTO
PRIMARY KEY (COD_VIDEO_PRODUTO);

ALTER TABLE T_SGV_VIDEO_PRODUTO
ADD CONSTRAINT CK_SGV_VIDEO_PROD_STA
CHECK (STA_VIDEO_PRODUTO IN ('A', 'I'))

-- CRIANDO A TABELA VISUALIZACAO DO VIDEO

CREATE TABLE T_SGV_VISUALIZACAO_VIDEO(
COD_VISUALIZACAO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
COD_VIDEO_PRODUTO NUMBER NOT NULL,
COD_CLIENTE NUMBER,
DAT_VISUALIZACAO TIMESTAMP NOT NULL);

-- ALTERANDO A TABELA VISUALIZACAO DO VIDEO, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT PK_SGV_VISUALIZACAO_VIDEO
PRIMARY KEY (COD_VISUALIZACAO);

-- CRIANDO A TABELA FUNCIONARIO

CREATE TABLE T_SGV_FUNCIONARIO(
COD_FUNCIONARIO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
NOM_FUNCIONARIO VARCHAR2(50) NOT NULL,
CPF_FUNCIONARIO VARCHAR2(11) NOT NULL,
TEL_FUNCIONARIO VARCHAR2(14) NOT NULL,
EMAIL_FUNCIONARIO VARCHAR2(50) NOT NULL,
NOM_DEPT_FUNCIONARIO VARCHAR2(50) NOT NULL);

-- ALTERANDO A TABELA FUNCIONARIO, INCLUINDO AS CONSTRAINTS PK E UN

ALTER TABLE T_SGV_FUNCIONARIO
ADD CONSTRAINT PK_SGV_FUNCIONARIO
PRIMARY KEY (COD_FUNCIONARIO);

ALTER TABLE T_SGV_FUNCIONARIO
ADD CONSTRAINT UN_SGV_FUNC_CPF
UNIQUE (CPF_FUNCIONARIO);

-- CRIANDO A TABELA CHAMADO

CREATE TABLE T_SGV_CHAMADO(
COD_CHAMADO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
COD_CLIENTE NUMBER NOT NULL,
COD_PRODUTO NUMBER NOT NULL,
COD_FUNCIONARIO NUMBER NOT NULL,
DAT_ABERTURA_CHAMADO TIMESTAMP NOT NULL,
DAT_ATENDIMENTO_CHAMADO TIMESTAMP,
STA_CHAMADO CHAR(1) NOT NULL,
TMP_ATENDIMENTO_CHAMADO AS (DAT_ATENDIMENTO_CHAMADO - DAT_ABERTURA_CHAMADO),
IND_SATISFACAO_CLIENTE NUMBER(2) NOT NULL,
CLS_CHAMADO VARCHAR2(10) NOT NULL,
TXT_CHAMADO VARCHAR2(4000) NOT NULL);

-- COMENT�RIO SOBRE TABELA E CAMPOS - CHAMADO
COMMENT ON COLUMN T_SGV_CHAMADO.COD_CHAMADO IS 'Maximo de 10 numeros e deve ser sequencial';
COMMENT ON COLUMN T_SGV_CHAMADO.STA_CHAMADO IS 'Recebe: �A� (aberto), o primeiro status criado no in�cio; �E� (em atendimento); �C� (cancelado)�; �F� (fechado com sucesso); �X� (fechado com insatisfa��o do cliente)';
COMMENT ON COLUMN T_SGV_CHAMADO.TMP_ATENDIMENTO_CHAMADO IS 'Deve retornar a diferen�a em horas entre data de abertura e data de atendimento';
COMMENT ON COLUMN T_SGV_CHAMADO.IND_SATISFACAO_CLIENTE IS 'Valor de 1 a 10';
COMMENT ON COLUMN T_SGV_CHAMADO.CLS_CHAMADO IS 'Recebe apenas dois tipos: 1 - Sugestao e 2 - Reclama��o';

-- ALTERANDO A TABELA CHAMADO, INCLUINDO A CONSTRAINT PK e CK

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT PK_SGV_CHAMADO
PRIMARY KEY (COD_CHAMADO);

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT CK_SGV_CHAMADO_STA_CHAMADO
CHECK (STA_CHAMADO IN ('A', 'E', 'C', 'F', 'X'));

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT CK_SGV_CHAMADO_CLS_CHAMADO
CHECK (CLS_CHAMADO IN ('Sugestao', 'Reclamacao'));

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT CK_SGV_CHAMADO_IND_SATISFACAO
CHECK (IND_SATISFACAO_CLIENTE >= 0 AND IND_SATISFACAO_CLIENTE <= 10);

-- CRIANDO A TABELA AVALIACAO DO VIDEO, CONFORME REGRA RN24

CREATE TABLE T_SGV_AVALIACAO_VIDEO(
COD_AVALIACAO NUMBER(10) GENERATED ALWAYS AS IDENTITY,
COD_CLIENTE NUMBER NOT NULL,
COD_VIDEO_PRODUTO NUMBER NOT NULL,
VLR_AVALIACAO NUMBER(2) NOT NULL,
TXT_AVALIACAO VARCHAR2(300));

-- COMENT�RIO SOBRE TABELA E CAMPOS - AVALIACAO_VIDEO
COMMENT ON COLUMN T_SGV_AVALIACAO_VIDEO.VLR_AVALIACAO IS 'Valor da avaliacao - Recebe valores de 1 a 10';

-- ALTERANDO A TABELA AVALIACAO DO VIDEO, INCLUINDO A CONSTRAINT PK

ALTER TABLE T_SGV_AVALIACAO_VIDEO
ADD CONSTRAINT PK_SGV_AVALIACAO_VIDEO
PRIMARY KEY (COD_AVALIACAO);

-- ALTERANDO AS TABELAS, ADICIONANDO AS CHAVES ESTRANGEIRAS (FK)

ALTER TABLE T_SGV_PRODUTO
ADD CONSTRAINT FK_SGV_PROD_COD_CAT_PROD
FOREIGN KEY (COD_CAT_PRODUTO)
REFERENCES T_SGV_CAT_PRODUTO (COD_CAT_PRODUTO);

ALTER TABLE T_SGV_CLIENTE_PJ
ADD CONSTRAINT FK_SGV_CLI_PJ_COD_CLIENTE
FOREIGN KEY (COD_CLIENTE)
REFERENCES T_SGV_CLIENTE (COD_CLIENTE);

ALTER TABLE T_SGV_CLIENTE_PF
ADD CONSTRAINT FK_SGV_CLI_PF_COD_CLIENTE
FOREIGN KEY (COD_CLIENTE)
REFERENCES T_SGV_CLIENTE (COD_CLIENTE);

ALTER TABLE T_SGV_VIDEO_PRODUTO
ADD CONSTRAINT FK_SGV_VID_PROD_COD_CLASS_VID
FOREIGN KEY (COD_CLASS_VIDEO)
REFERENCES T_SGV_CLASS_VIDEO (COD_CLASS_VIDEO);

ALTER TABLE T_SGV_VIDEO_PRODUTO
ADD CONSTRAINT FK_SGV_VID_PROD_COD_PROD
FOREIGN KEY (COD_PRODUTO)
REFERENCES T_SGV_PRODUTO (COD_PRODUTO);

ALTER TABLE T_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT FK_SGV_VISUAL_COD_CLIENTE
FOREIGN KEY (COD_CLIENTE)
REFERENCES T_SGV_CLIENTE (COD_CLIENTE);

ALTER TABLE T_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT FK_SGV_VISUAL_COD_VID_PROD
FOREIGN KEY (COD_VIDEO_PRODUTO)
REFERENCES T_SGV_VIDEO_PRODUTO (COD_VIDEO_PRODUTO);

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT FK_SGV_CHAMADO_COD_CLIENTE
FOREIGN KEY (COD_CLIENTE)
REFERENCES T_SGV_CLIENTE (COD_CLIENTE);

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT FK_SGV_CHAMADO_COD_PROD
FOREIGN KEY (COD_PRODUTO)
REFERENCES T_SGV_PRODUTO (COD_PRODUTO);

ALTER TABLE T_SGV_CHAMADO
ADD CONSTRAINT FK_SGV_CHAMADO_COD_FUNC
FOREIGN KEY (COD_FUNCIONARIO)
REFERENCES T_SGV_FUNCIONARIO (COD_FUNCIONARIO);

ALTER TABLE T_SGV_AVALIACAO_VIDEO
ADD CONSTRAINT FK_SGV_AVA_VIDEO_COD_CLIENTE
FOREIGN KEY (COD_CLIENTE)
REFERENCES T_SGV_CLIENTE (COD_CLIENTE);

ALTER TABLE T_SGV_AVALIACAO_VIDEO
ADD CONSTRAINT FK_SGV_AVA_VIDEO_COD_VID_PROD
FOREIGN KEY (COD_VIDEO_PRODUTO)
REFERENCES T_SGV_VIDEO_PRODUTO (COD_VIDEO_PRODUTO);

-- DELETANDO AS TABELAS CRIADAS

DROP TABLE T_SGV_CAT_PRODUTO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_PRODUTO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_CLIENTE CASCADE CONSTRAINTS;
DROP TABLE T_SGV_CLIENTE_PJ CASCADE CONSTRAINTS;
DROP TABLE T_SGV_CLIENTE_PF CASCADE CONSTRAINTS;
DROP TABLE T_SGV_CLASS_VIDEO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_VIDEO_PRODUTO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_VISUALIZACAO_VIDEO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_FUNCIONARIO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_CHAMADO CASCADE CONSTRAINTS;
DROP TABLE T_SGV_AVALIACAO_VIDEO CASCADE CONSTRAINTS;