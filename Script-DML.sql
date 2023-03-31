-- DML

pragma foreign_keys = on;

-- Endereços

insert into endereco (cep, cidade, UF, bairro, rua, numero) 
values 		('25715-363', 'Petropolis', 'RJ', 'Carangola', 'Estrada Vicenzo Rivetti', '756'),
			('25620-050', 'Petropolis', 'RJ', 'Centro', 'Rua Dr. Alencar Lima', '20'),
	   		('25635-116', 'Petropolis', 'RJ', 'Lopes Trovão', 'Euclydes de Oliveira', '707'),
	  		('25715-434', 'Petropolis', 'RJ', 'Carangola', 'Rua Araucaria 3', '15'),
			('25635-111', 'Petropolis', 'RJ', 'Alto da Serra', 'Lopes Trovão', '1351'),
		    ('25005-363', 'Petropolis', 'RJ', 'Bingem', 'Rua do bingem', '800');
-- Categoria

insert into categoria (nome, descricao)
values ('Automobilismo', 'Produtos para carros variados'),
	   ('Medicamento', 'Medicamentos de uso permitido'),
	   ('Vestuário', 'Roupas e acessórios'),
	   ('Eletronico', 'Computadores e Acessórios'),
	   ('Alimentos', 'Alimentos não perecíveis'),
	   ('Brinquedo', 'Brinquedo infantil');
	  
-- Usuarios
	  
insert into usuario(nome, telefone, username, email, CPF, data_nascimento, id_endereco) 
values  ('William', '99221-7094', 'willtinoco97', 'wt@gmail.com','13536988741', '30/01/1997', 1),
   		('Victor Hugo', '98848-0655', 'Vhsouza', 'vh@gmail.com','177.774.789.97', '16/01/1997', 2),
   		('Isabel', '98122-3724', 'isah', 'isa@gmail.com','088.675.435-28', '26/08/2003', 3),
   		('Yan', '32987443784', 'Yan31', 'Yan@gmail.com', '182.738.293-74', ' 31/01/1997', 4),
   		('Larissa', '98863-5675', 'larissrosa', 'larissa@gmail.com','174.991.377-16', '01/05/1999', 5),
   		('Julian', '99876-7094', 'Julian7', 'J@gmail.com','125.678.906-71', '20/01/1998', 6);
   	
   	
-- Produto
insert into produto (nome, descricao, quantidade, valor_unit, data_fab, id_vendedor, id_categoria) 
values   ('Rodas de liga leve', 'Rodas aro 17', 20, 3500, '20/01/2019', 1, 1),
		 ('SmartPhone', 'Moto One', 7, 1550,'13/01/2022', 6, 4),
		 ('Camiseta', 'Manga curta- Tecido Algodão', 25, 25.99, '22/05/2020', 3, 3),
	     ('Placa de video', 'Galax GeForce 4080', 13, 8699, '03/02/2023', 4, 4),
	     ('Carregador Portátil', 'Carregador Portátil por Indução 5000mah',30, 99.90, '23/08/2022', 5, 4),
	     ('Neosoro', 'Remédio de nariz', 50, 3.85, '15/05/2022', 2, 2);
	   	
-- Usuario_produto_compra (pedido de compra)
insert into usuario_produto_compra (data_pedido, quantidade, id_produto, id_comprador) 
values	 ('03/02/2023', 2, 1, 5),
		 ('01/02/2023', 3, 2, 1),
		 ('02/03/2023', 1, 4, 6),
		 ('02/03/2023', 2, 3, 4),
		 ('02/01/2023', 5, 5, 2),
		 ('09/01/2023', 3, 3, 4),
		 ('20/02/2023', 2, 4, 1),
		 ('02/03/2023', 5, 1, 3),
		 ('29/05/2023', 7, 5, 3);
		
-- Update e delete
		
update produto set descricao  = 'Descongestionante nasal de uso local' where id = 2;	
delete from usuario_produto_compra where quantidade > 15;