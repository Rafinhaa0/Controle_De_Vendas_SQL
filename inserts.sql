INSERT INTO clientes (nome, email) VALUES
('João Silva', 'joao@email.com'),
('Maria Souza', 'maria@email.com');

INSERT INTO produtos (nome, preco, estoque) VALUES
('Arroz', 25.90, 50),
('Feijão', 8.50, 100);

INSERT INTO pedidos (cliente_id, data) VALUES
(1, NOW()),
(2, NOW());

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 25.90),
(2, 2, 3, 8.50);
