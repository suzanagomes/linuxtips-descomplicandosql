-- Databricks notebook source
select * from silver_olist.pedido

-- leia-se: selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido 
from silver_olist.pedido

-- leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido, 
       descSituacao 
from silver_olist.pedido

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido, 
       descSituacao 
       
from silver_olist.pedido

limit 5
-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

select  *,
        datediff(dtEstimativaEntrega, dtEntregue) as qtDiasPromessaEntrega
 
from silver_olist.pedido

-- COMMAND ----------


