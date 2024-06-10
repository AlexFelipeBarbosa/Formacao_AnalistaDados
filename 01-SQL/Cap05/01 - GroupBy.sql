# Lista de Clientes 
Select * FROM cap05.tb_clientes;

# Contagem de Clientes por Cidade
Select count(id_cliente) AS CONTAGEM, 
cidade_cliente 
from cap05.tb_clientes
group by cidade_cliente
order by contagem desc;