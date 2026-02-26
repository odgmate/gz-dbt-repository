

select 
    orders_id,
    date_date,
    revenue,
    quantity

from {{ref('int_sales_margin')}} 