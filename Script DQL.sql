--comandos DQL

-- JOIN
-- Usuários que moram em determinado bairro
select u.id, u.nome, u.username, u.email
from usuario u
inner join endereco e on e.id = u.id_endereco
where e.bairro like '%Trovão'
-- Contagem de compra por usuario 
select u.nome, count(uc.id) as total_compras
from usuario u
left join usuario_produto_compra uc on u.id = uc.id_comprador 
group by u.nome 
order by total_compras desc


--COUNT / GROUP BY
-- Quantidade de usuários com o nome iniciando em 
select count(*)
from usuario_produto_compra 
where id_comprador = (select id
					from usuario
					where nome like 'Vic%'
)


--CONSULTA LIVRE
-- Mostra usuários
select * from usuario
-- listagem quantidade de pedido por data
select data_pedido, quantidade 
from usuario_produto_compra

-- NOTA FISCAL
select 
    u.nome as remetente,
    e.rua,
    e.numero,
    e.bairro,
    e.cep,
    e.cidade,
    p.nome as nome_produto,
    p.valor_unit as valor_unitario,
    upc.quantidade as quantidade_produto,
    sum(upc.quantidade * p.valor_unit) as valor_total,
    upc.data_pedido as data_emissao
from usuario_produto_compra upc 
inner join produto p on upc.id_produto = p.id
inner join usuario u on upc.id_comprador = u.id 
inner join endereco e on e.id = u.id_endereco
group by u.nome, e.rua, e.numero, e.bairro, e.cep, e.cidade, nome_produto, valor_unitario, quantidade_produto, data_emissao
