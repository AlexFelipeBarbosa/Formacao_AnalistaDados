# Lista todos os Pedidos
Select * from cap05.tb_pedidos;

# Soma os valores dos Pedidos
Select sum(valor_pedido) as total
from cap05.tb_pedidos;

# Soma dos Pedidos por Cidade
Select sum(valor_pedido) as total,
	cidade_cliente
from cap05.tb_pedidos p inner join cap05.tb_clientes c on p.id_cliente = c.id_cliente
group by c.cidade_cliente;

# Soma dos Pedidos por Estado
Select sum(valor_pedido) as total,
	estado_cliente
from cap05.tb_pedidos p inner join cap05.tb_clientes c on p.id_cliente = c.id_cliente
group by c.estado_cliente;

# Soma do valor dos Pedidos por Cidade e Estado
Select sum(valor_pedido) as total,
	estado_cliente,
    cidade_cliente
from cap05.tb_pedidos p inner join cap05.tb_clientes c on p.id_cliente = c.id_cliente
group by c.estado_cliente, c.cidade_cliente
order by c.estado_cliente;

# Soma total do valor dos Pedidos por Cidade e Estado com RIGHT JOIN e CASE 
Select 
	case 
		when floor(sum(valor_pedido)) is null then 0
        else floor(sum(valor_pedido)) 
	end as total,
	estado_cliente,
    cidade_cliente
from cap05.tb_pedidos p right join cap05.tb_clientes c on p.id_cliente = c.id_cliente
group by c.estado_cliente, c.cidade_cliente
order by c.estado_cliente;
