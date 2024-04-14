SELECT c.nm_cliente, l.nm_logradouro, e.nr_end
FROM mc_cliente c
LEFT JOIN mc_end_cli e ON c.nr_cliente = e.nr_cliente
LEFT JOIN mc_logradouro l ON e.cd_logradouro_cli = l.cd_logradouro;
