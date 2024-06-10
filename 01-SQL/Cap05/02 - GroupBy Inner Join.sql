# Lista dos Pedidos
Select * from cap05.tb_pedidos;

# Media do Valor dos Pedidos 
Select avg(valor_pedido) as media 
from cap05.tb_pedidos;

# total de Pedidos 
Select count(valor_pedido) as media 
from cap05.tb_pedidos;

# Media do valor dos Pedidos por Cidade (Inner Join)
Select round(avg(valor_pedido),2) as Media, 
	   cidade_cliente
From cap05.tb_pedidos P Inner join cap05.tb_clientes C on c.id_cliente = p.id_cliente
group by cidade_cliente
order by media desc;

# Media do valor dos Pedidos por Cidade (Right Join)
Select round(avg(valor_pedido),2) as Media, 
	   cidade_cliente
From cap05.tb_pedidos P Right join cap05.tb_clientes C on c.id_cliente = p.id_cliente
group by cidade_cliente
order by media desc;


# Media do valor dos Pedidos por Cidade (Right Join e CASE)
Select 
	case 
		when round(avg(valor_pedido),2) is null then 0
        else round(avg(valor_pedido),2)
	end as Media, 
	   cidade_cliente
From cap05.tb_pedidos P Right join cap05.tb_clientes C on c.id_cliente = p.id_cliente
group by cidade_cliente
order by media desc;
