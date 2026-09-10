WITH source AS (

    SELECT *
    FROM {{ source('src', 'orders') }}

),

changed AS (

    SELECT
        -- IDs
        o_orderkey AS order_id,
        o_custkey AS customer_id,

        -- Descriptions
        o_comment AS comment,
        o_clerk AS clerk_name,

        -- Numbers
        o_totalprice AS total_price,

        -- Status
        o_orderstatus AS status_code,
        o_orderpriority AS priority_code,
        o_shippriority AS ship_priority,

        -- Dates
        o_orderdate AS order_date

    FROM source

)

SELECT *
FROM changed