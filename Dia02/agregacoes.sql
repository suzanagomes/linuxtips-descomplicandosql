-- Databricks notebook source
select count (*) as nrLinhasNaoNulas
from 
silver_olist.cliente

-- COMMAND ----------

select count (*) as nrLinhasNaoNulas,
      count (idclientes) As nrIdClienteNaoNulo --id de clientes nao nulos
from 
silver_olist.cliente

-- COMMAND ----------

select count (*) as nrLinhasNaoNulas,
      count (idcliente) As nrIdClienteNaoNulo, --id de clientes nao nulos
      count (distinct idcliente) As nrIdClienteDistintos, --id de clientes distintos
      count (distinct idclienteUnico) As nrIdClienteUnico --id de clientes nao nulos
      
from 
silver_olist.cliente
