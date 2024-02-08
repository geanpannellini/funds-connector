# About Business Questions

You can utilize the gold area to address business inquiries effectively. 
The primary table, which is [gold__transactions](url), provides the means to answer all the previous questions mentioned.

- `What is the acceptance rate over time?` [Folder: Analyses, Answer 1](url)
[Folder: Analyses, Answer 1](blob/main/analyses/answer_1_acceptance_rate_over_time.sql)

> The results for acceptance rate over time are:

> 1. Monthly: Average around 11.50%
> 2. Quarterly: Average around 34.70%
> 3. Semiannually: 69.55%
  
- `List the countries where the amount of declined transactions went over $25M` [Folder: Analyses, Answer 2](url)

> The results are AE, CA, and US.
> Ps: It is important to highlight that the amount is USD, because this, doesn't need to be transformed.

- `Which transactions are missing chargeback data?` [Folder: Analyses, Answer 3](url)

> We have established certain standards for testing, focusing on two key aspects: (1) country and (2)transaction time.

> (1) - Regarding country, the test encompasses the following countries: CA, MX, AE, US, FR, and UK.

> (2) Concerning transaction time, an important question arises: Why are transactions chargeback during these specific times – "04:48:00, 19:12:00, 14:24:00, 09:36:00, 00:00:00"?

# About the Data Pipeline

# 1. Preliminary data exploration

It is important to check all tables, for this, we used some traditional tests that are possible to check here.

# 2. Summary of your model architecture

- Colocar a imagem do starschema
  
# 3. Lineage graphs
- Colocar o print da linhagem do dbt

# 4. Tips around macros, data validation, and documentation

For all tables, there is a data validation and tests that you can consult here

# 6. Stack

- Colocar a stack utilizada
