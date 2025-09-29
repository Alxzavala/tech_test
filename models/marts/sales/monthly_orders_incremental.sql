{{ config(
    materialized='incremental',
    unique_key='month'
) }}

with sales as (
    select
        order_date
    from {{ source('RAW', 'SALES_DATA') }}
    {% if is_incremental() %}
        where order_date > (select max(month) from {{ this }})
    {% endif %}
)

select
    date_trunc('month', order_date) as month,
    count(*) as num_orders
from sales
group by month
order by month