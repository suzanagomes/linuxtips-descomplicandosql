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

-- COMMAND ----------

select 
    round (AVG(vlPreco),2) as avgPreco, -- media da coluna vlPreco (preco medio dos produtos)
    
    round (percentile (vlPreco, 0.5), 2) as medianPreco, --preço mediano dos produtos  --percentil 0.5 = mediana
    --INT (percentile (vlPreco, 0.5), 2) as medianPreco - pra converter em int, colocar INt pra inteiro
    
    MAX(vlPreco) as maxPreco, -- maximo da coluna vlPreco 
    MIN(vlPreco) as minPreco, -- maximo da coluna vlPreco 
    round (AVG(vlFrete),2) as avgFrete, -- media da coluna vlFrete
    MAX(vlFrete) as maxFrete,
    MIN(vlFrete) as minFrete
   

from silver_olist.item_pedido

-- COMMAND ----------

select count(*)
from silver_olist.cliente
Where descUF = 'SP'


