# Faturamento total por ano
SELECT ano, 
SUM(faturamento) AS faturamento
FROM tb_vendas v
GROUP BY v.ano WITH ROLLUP 
ORDER BY ano;


# Faturamento total por ano e pais e total geral
SELECT ano, pais, sum(faturamento) AS faturamento
FROM tb_vendas v
GROUP BY ano, pais WITH ROLLUP;
 

# Faturamento total por ano e Produto e total geral
SELECT ano, Produto, sum(faturamento) AS faturamento
FROM tb_vendas v
GROUP BY ano, Produto WITH ROLLUP
ORDER BY GROUPING(produto) DESC;

# Faturamento total por ano e pais e total geral com agrupamento do resultado
SELECT 
if(GROUPING(v.ano), 'Total de Todos os Anos', v.ano) AS Ano,
if(GROUPING(v.pais), 'Total de Todos os Paises', v.pais) AS Pais,
If(GROUPING(v.produto), 'Total de Todos os Produtos', v.produto) AS Produto,
sum(faturamento) AS faturamento 
FROM tb_vendas v 
GROUP BY v.ano, v.pais, v.produto WITH ROLLUP;



# Faturamento total por ano
SELECT ano, 
SUM(faturamento) AS faturamento
FROM tb_vendas v
GROUP BY v.ano WITH ROLLUP 
ORDER BY ano;
 

