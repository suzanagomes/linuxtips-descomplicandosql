-- Databricks notebook source
-- 01 Seleicione todos os paulistanos

Select *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'


-- COMMAND ----------

-- 01 Selecione todos os clientes paulistas

Select *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- Selecione todos vendedores cariocas e paulistas

Select *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro' 
OR descUF = 'SP'


-- COMMAND ----------

-- Selecione produtos de perfumaria e bebes com altura maior que 5cm


Select *
FROM silver_olist.produto
WHERE descCategoria in ('perfumaria', 'bebes') and vlAlturaCm > 5

-- COMMAND ----------

-- DBTITLE 1,1. Lista de pedidos com mais de um item.


-- COMMAND ----------

-- DBTITLE 1,2. Lista de pedidos que o frete é mais caro que o item


-- COMMAND ----------

-- DBTITLE 1,3. Lista de pedidos que ainda não foram enviados.


-- COMMAND ----------

-- DBTITLE 1,4. Lista de pedidos que foram entreques com atraso.


-- COMMAND ----------

-- DBTITLE 1,5. Lista de pedidos que foram entregues com 2 dias de antecedência.


-- COMMAND ----------

-- DBTITLE 1,6. Lista de pedidos feitos em dezembro de 2017 e entregues com atraso


-- COMMAND ----------

-- DBTITLE 1,7. Lista de pedidos com avaliação maior ou igual que 4


-- COMMAND ----------

-- DBTITLE 1,8. Lista de pedidos com 2 ou mais parcelas menores que R$20,00


-- COMMAND ----------

Tempo de foco (case)
1. Selecione todos os pedidos e marque se houve atraso ou nas

2. Selecione os pedidos e defina os grupos em uma nova coluna:
• para frete inferior à 10%: '10%'
• para frete entre 10% e 25%: '10% a 25%
• para frete entre 25% e 50%: 25% a 50%*
• para frete maior que 50%: '+50%

-- COMMAND ----------

1. Selecione a tabela olist. produto :
o Crie uma coluna nova chamada 'descNovaCategoria' segu
i. agrupe 'alimentos' e 'alimentos bebidas' em 'alimento
A LINUXTIP
ii. agrupe 'artes' e 'artes e artesanato' em 'artes'
ill. agrupe todas categorias de construção em uma única categoria
chamada 'construção'
o Cria uma coluna nova chamada 'desPeso'
i. para peso menor que 2kg: 'leve ii. para peso entre 2kg e 5kg: 'médio'
ii. para peso entre 5kg e 10kg: 'pesado
iv. para peso maior que 10kg: 'muito pesado'
