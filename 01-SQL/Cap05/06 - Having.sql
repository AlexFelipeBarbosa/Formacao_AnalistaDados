# Algum Vendedor participou de Vendas em que a Média do Valor_Pedido por estado do cliente foi superior a 800?
SELECT v.nome_vendedor, estado_cliente, CEILING(avg(p.valor_pedido)) AS Media
FROM tb_pedidos p
INNER JOIN tb_clientes c ON
p.id_cliente = c.id_cliente
INNER JOIN tb_vendedor v ON
p.id_vendedor = v.id_vendedor
GROUP BY c.estado_cliente, v.nome_vendedor
HAVING Media > 800
ORDER BY v.nome_vendedor;


# Qual Estado teve mais que 5 Pedidos
SELECT c.estado_cliente, count(p.id_pedido) Total_Pedidos
FROM tb_pedidos p
INNER JOIN tb_clientes c ON
p.id_cliente = c.id_cliente
GROUP BY c.estado_cliente
HAVING Total_Pedidos > 5
ORDER BY total_pedidos DESC ;
