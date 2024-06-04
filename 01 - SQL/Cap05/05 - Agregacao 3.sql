# Número de Clientes que fizeram Pedidos
SELECT count(DISTINCT id_cliente)
	id_cliente
FROM tb_pedidos tp;

# Número de Pedidos de Clientes do CE
SELECT count(tc.id_cliente) AS Total_Pedidos
FROM tb_pedidos tp
INNER JOIN tb_clientes tc ON
tc.id_cliente = tp.id_cliente
WHERE tc.estado_cliente = 'CE';

# Número de Clientes Unicos do CE que fizeram Pedidos com o nome de cada cliente
SELECT 
tc.nome_cliente , tc.cidade_cliente,
count(DISTINCT tc.id_cliente) AS Total_Pedidos
FROM tb_pedidos tp
INNER JOIN tb_clientes tc ON
tc.id_cliente = tp.id_cliente
WHERE tc.estado_cliente = 'CE'
GROUP BY tc.nome_cliente, tc.cidade_cliente ;


# Nome e Cidade do Cliente e Número de Pedidos
SELECT tc.nome_cliente , tc.cidade_cliente, count(tp.id_pedido) AS Numero_Pedidos
FROM tb_pedidos tp
INNER JOIN tb_clientes tc ON
tc.id_cliente = tp.id_cliente
WHERE tc.estado_cliente = 'CE'
GROUP BY tc.nome_cliente, tc.cidade_cliente ;


# Algum Vendedor participou de Vendas cujo valor do Pedido tenha sido superior a 600 no Estado de SP?
SELECT v.nome_vendedor, p.valor_pedido, p.id_pedido, p.data_pedido, c.cidade_cliente, c.estado_cliente
FROM tb_pedidos p
INNER JOIN tb_vendedor v ON
v.id_vendedor = p.id_vendedor
INNER JOIN tb_clientes c ON
c.id_cliente = p.id_cliente
WHERE p.valor_pedido > 600
AND c.estado_cliente = 'SP'
