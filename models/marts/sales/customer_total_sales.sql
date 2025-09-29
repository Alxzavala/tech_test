with sales as (
    select
        customer_id,
        amount
    from {{ source('RAW', 'SALES_DATA') }}
)

select
    customer_id,
    sum(amount) as total_sales
from sales
group by customer_id
order by customer_id
