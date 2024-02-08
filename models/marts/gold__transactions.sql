{{
  config(
    alias='gold__transactions'
    )
}}

SELECT  
        a.external_ref,
        a.state,
        a.cvv_provided,
        a.amount, -- Funds are settled to you in USD.
        b.name AS status_name,
        c.name AS source_name,
        d.date_time AS date_time,
        d.hour AS date_hour,
        f.name AS country_name,
        e.name AS currency_name,
        g.status_chargeback AS chargeback_status,
        CASE
            WHEN e.name = 'CAD' THEN j.rate_CAD
            WHEN e.name = 'EUR' THEN j.rate_EUR
            WHEN e.name = 'MXN' THEN j.rate_CAD
            WHEN e.name = 'USD' THEN j.rate_USD
            WHEN e.name = 'SGD' THEN j.rate_SGD
            WHEN e.name = 'AUD' THEN j.rate_AUD
            WHEN e.name = 'GBP' THEN j.rate_GBP
        ELSE null
        END AS tax_rate

FROM {{ ref('silver__acceptance_transactions') }} AS a
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
LEFT JOIN
{{ ref('silver__chargeback_transactions') }} AS g
ON a.external_ref = g.external_ref
LEFT JOIN
{{ ref('silver__chargeback_status') }} AS h
ON g.status_id = h.id
LEFT JOIN
{{ ref('silver__chargeback_source') }} AS i
ON g.source_id = i.id
LEFT JOIN
{{ ref('silver__acceptance_rates') }} AS j
ON a.external_ref = j.id