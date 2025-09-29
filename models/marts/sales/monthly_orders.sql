with sales as (
    select
        order_date
    from {{ source('RAW', 'SALES_DATA') }}
)

select
    date_trunc('month', order_date) as month,
    count(*) as num_orders
from sales
group by month
order by month
