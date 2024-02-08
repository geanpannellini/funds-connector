# About Business Questions

You can utilize the gold area to address business inquiries effectively. 

The primary model, which is [gold__transactions](models/gold/gold__transactions.sql), provides the means to answer all the previous questions mentioned.

 `What is the acceptance rate over time?` [Analyses, Answer 1](analyses/answer_1_acceptance_rate_over_time.sql)

> The results for acceptance rate over time are:

> 1. Monthly: Average around 11.50%
> 2. Quarterly: Average around 34.70%
> 3. Semiannually: `69.55%`
  
 `List the countries where the amount of declined transactions went over $25M` [Analyses, Answer 2](analyses/answer_2_country_amount_declined_transac_over_25M.sql)

> The results are `AE, CA, and US.`

> [!IMPORTANT]
> It is important to highlight that the amount is USD, because this, doesn't need to be transformed.

 `Which transactions are missing chargeback data?` [Analyses, Answer 3](analyses/answer_3_transac_missing_chargeback.sql)

> There isn't information about chargeback transactions in `95,90% of them.`

# About the Data Pipeline

### 1. Preliminary data exploration

It is important to check all tables, for this, we used some traditional tests that are possible [to check here](analyses/preliminary_data_exploration.sql).

> We have established certain exploration standards for testing, focusing on three key aspects: (1) unique tests, (2) country, and (3)transaction time.

> (1) In All tables there is unique text using the main key: `external_ref`

> (2) Regarding the country, the test to identify the countries with chargeback, using the union for the staging tables, results from the following countries: `CA, MX, AE, US, FR, and UK.`

> (3) Concerning transaction time, an important question arises: Why are transactions chargeback during `these specific times` – "04:48:00, 19:12:00, 14:24:00, 09:36:00, 00:00:00"?

### 2. Summary of your model architecture

<img width="800" alt="image" src="https://github.com/geanpannellini/funds-connector/assets/70926945/4fcc5ff4-131f-41bd-8ef9-de25c1879296">
 
### 3. Lineage graphs

<img width="800" alt="image" src="https://github.com/geanpannellini/funds-connector/assets/70926945/21b35853-b502-4d30-ae4d-4f18c36de32b">

### 4. Tips around macros, data validation, and documentation

> :point_right: [Macros] I created the dates macro to help with monthly, quarterly, semiannually. To check a case, [click here.](macros/dates.sql)

> :point_right: [Data Validation] In All tables are implemented tests in the primary key and important columns. To check a case, [click here.](models/staging/schema.yml)

> :point_right: [Documentation] In All tables are implemented tables and columns describe. To check a case, [click here.](models/marts/schema.yml)

### 6. Stack

- Colocar a stack utilizada
