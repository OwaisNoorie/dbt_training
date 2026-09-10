WITH customer AS (

    SELECT
        customer_id,
        nation_id,
        name,
        address,
        phone_number,
        account_balance,
        market_segment,
        comment
    FROM {{ ref('stg_customers') }}

),

nation AS (

    SELECT
        nationid,
        name AS nation_name,
        region_id
    FROM {{ ref('stg_nations') }}

),

region AS (

    SELECT
        regionkey,
        name AS region_name
    FROM {{ ref('stg_regions') }}

)

SELECT
    c.*,
    n.nation_name,
    r.region_name

FROM customer c

LEFT JOIN nation n
    ON c.nation_id = n.nationid

LEFT JOIN region r
    ON n.region_id = r.regionkey