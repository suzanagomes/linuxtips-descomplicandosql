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

Tempo de foco (where)
1. Lista de pedidos com mais de um item.

2. Lista de pedidos que o frete é mais caro que o item.
3. Lista de pedidos que ainda não foram enviados.
4. Lista de pedidos que foram entreques com atraso.
5. Lista de pedidos que foram entregues com 2 dias de antecedência.
6. Lista de pedidos feitos em dezembro de 2017 e entregues com atraso
7. Lista de pedidos com avaliação maior ou igual que 4
8. Lista de pedidos com 2 ou mais parcelas menores que R$20,00

-- COMMAND ----------


