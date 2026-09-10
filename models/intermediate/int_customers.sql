{{config(materialized='table')}}

with cust as 
(select * from{{ref('stg_customers')}}),

nation as
(select * from{{ref('stg_nations')}}),

