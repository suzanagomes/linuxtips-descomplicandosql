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

