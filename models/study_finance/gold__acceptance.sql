{{
  config(
    alias='gold_acceptance.sql'
    )
}}

SELECT  
        a.external_ref,
    	a.ref,
        a.state,
        a.cvv_provided,
        a.amount,
        a.rates,
        b.status,
        c.source,
        d.date_time,
        f.country,
        e.currency

FROM {{ ref('silver__acceptance_transaction') }} AS a
LEFT JOIN
{{ ref('silver__acceptance_status') }} AS b
ON a.status_id = b.id
LEFT JOIN
{{ ref('silver__acceptance_source') }} AS c
ON a.source_id = c.id
LEFT JOIN
{{ ref('silver__acceptance_dates_types') }} AS d
ON a.date_id = d.id
LEFT JOIN
{{ ref('silver__acceptance_currency') }} AS e
ON a.currency_id = e.id
LEFT JOIN
{{ ref('silver__acceptance_country') }} AS f
ON a.country_id = f.id