-- Databricks notebook source
select * from silver_olist.pedido
limit 100

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao = 'delivered'

--limit 100
-- leia-se : seleciona todas as colunas da tabela silver_olist.pedido onde a sitiacao seja entregue 'delivered'

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao = 'canceled'

--limit 100
-- leia-se : seleciona todas as colunas da tabela silver_olist.pedido onde a sitiacao seja entregue 'canceled'

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao = 'shipped' and year(dtPedido) = '2018'

--limit 100
-- leia-se : seleciona todas as colunas da tabela silver_olist.pedido onde a sitiacao seja entregue 'canceled'

-- COMMAND ----------

select * 
from silver_olist.pedido
where (descSituacao = 'shipped' or descSituacao ='canceled')
and year(dtPedido) = '2018'

-- leia-se: existe uma ordem, primeiro pega o E e depois o or:  descSituacao ='canceled' e and year(dtPedido) = '2018', e depois soma o shipped
-- Se colocar where (descSituacao = 'shipped' or descSituacao ='canceled')and year(dtPedido) = '2018'
-- pedidos enviados ou cancelados em 2018

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao in ('shipped','canceled')
and year(dtPedido) = '2018'

-- De forma mais simples

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao in ('shipped','canceled')
and year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado)> 30


-- De forma mais simples: todas as colunas a partir da tabela pedido, com status de shipped ou cancelado em 2018 e a diferenca entre a estimativa e aprovacao seja maior que 30 dias

-- COMMAND ----------

select * 
from silver_olist.pedido
where descSituacao in ('shipped','canceled')
and year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado)> 30
