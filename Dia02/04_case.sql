-- Databricks notebook source
SELECT *,
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'RJ' THEN 'Fluminense' 
        WHEN descUF = 'PR' THEN 'Paranaense' 
        ELSE 'outros'
      END AS descNacionalidade
      
FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
-- isso aqui é uma coluna nova!
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'RJ' THEN 'Fluminense' 
        WHEN descUF = 'PR' THEN 'Paranaense' 
        ELSE 'outros'
      END AS descNacionalidade,
      
      -- isso aqui é outra coluna nova!
      CASE
        WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
        ELSE 'Não tem são no nome'
      END AS descCidadeSao -- dá o nome a nova coluna
      
FROM silver_olist.cliente

-- COMMAND ----------

select *, 
      case
        WHEN descUF in ( 'SP', 'MG', 'RJ','ES') THEN 'sudeste'
      END AS descRegiao


from silver_olist.vendedor
