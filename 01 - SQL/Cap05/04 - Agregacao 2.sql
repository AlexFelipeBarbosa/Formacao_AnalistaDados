# Supondo que a comissão de cada vendedor seja de 10%, quanto cada vendedor ganhou de comissão nas vendas do estado do Ceara?
# Retorne 0 se não houve ganho de comissão

SELECT 	SUM(valor_pedido * 0.10) AS comissao,
		nome_vendedor,
        estado_cliente
FROM cap05.tb_pedidos p inner join cap05.tb_clientes c on p.id_cliente  = c.id_cliente 
inner join cap05.tb_vendedor v on v.id_vendedor = p.id_vendedor
and estado_cliente = 'CE'
group by nome_vendedor, estado_cliente 
order by estado_cliente;