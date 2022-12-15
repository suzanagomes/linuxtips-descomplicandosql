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

-- COMMAND ----------

select count (*) as nrLinhasNaoNulas, -- conta linhas nao nulas
      count (idcliente) As nrIdClienteNaoNulo, --conta id de clientes nao nulos
      count (distinct idcliente) As nrIdClienteDistintos, --conta id de clientes distintos
      count (distinct idclienteUnico) As nrIdClienteUnico --conta id de clientes distintos
      
from 
silver_olist.cliente

-- COMMAND ----------

select 
count(*)
from silver_olist.cliente
where descCidade = 'presidente prudente'

-- COMMAND ----------

select 
    count(*) as qtLinhas,
    count(distinct idcliente) as qtClientes,
    count(distinct idclienteUnico) as qtClientesUnicos

from silver_olist.cliente
where descCidade in ('presidente prudente','curitiba')
