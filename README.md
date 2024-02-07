# 1. Preliminary data exploration

For all tables, there is a column mapping, click here to discover more.

# 2. Summary of your model architecture

- Colocar a imagem do starschema
  
# 3. Lineage graphs
- Colocar o print da linhagem do dbt

# 4. Tips around macros, data validation, and documentation

For all tables, there is a data validation and tests that you can consult here

# 5. Answering Business Questions

For answer business questions, you can use the gold area (Linkar aqui o modelo)

Using the gold__transactions you can answer some questions like: 

- What is the acceptance rate over time?

  SELECT date_time,
        state,
        count(state) as contagem
  FROM {{ref('gold__acceptance')}}
  group by 1,2
  ORDER BY 1
  
- List the countries where the amount of declined transactions went over $25M

  SELECT country_name,
        sum(amount) as somatoria
  FROM {{ref('gold__acceptance')}}
  WHERE state = 'DECLINED'
  group by 1
  ORDER BY 1

- Which transactions are missing chargeback data?

  SELECT
  external_ref
  FROM {{ref('gold__acceptance')}}
  WHERE chargeback_status = 'false'
