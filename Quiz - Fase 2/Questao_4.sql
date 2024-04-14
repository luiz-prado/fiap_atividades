INSERT INTO MC_CLIENTE (NM_CLIENTE, NM_LOGIN, DS_SENHA) VALUES
('Carlos Santos', 'carlos', 'carlihos');

select * from mc_cliente;

insert into mc_end_cli (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END) VALUES
(7, 1, 127);
insert into mc_end_cli (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END) VALUES
(7, 2, 130);
insert into mc_end_cli (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END) VALUES
(7, 3, 140);

SELECT c.nm_cliente, l.nm_logradouro, e.nr_end
FROM mc_cliente c
JOIN mc_end_cli e ON c.nr_cliente = e.nr_cliente
JOIN mc_logradouro l ON e.cd_logradouro_cli = l.cd_logradouro
WHERE c.nm_cliente = 'Carlos Santos';

