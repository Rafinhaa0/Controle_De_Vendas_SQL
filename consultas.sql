/*Total de vendas por cliente*/
SELECT c.nome, SUM(i.quantidade * i.preco_unitario) AS total
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN itens_pedido i ON p.id = i.pedido_id
GROUP BY c.nome;

/*Produto mais vendido*/
SELECT c.nome, SUM(i.quantidade * i.preco_unitario) AS total
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN itens_pedido i ON p.id = i.pedido_id
GROUP BY c.nome;

/*Total faturado */
SELECT SUM(quantidade * preco_unitario) AS faturamento_total
FROM itens_pedido;

/*Clientes que mais compraram */
SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
ORDER BY total_pedidos DESC;
