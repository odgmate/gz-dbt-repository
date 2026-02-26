

select
        date_date,
        count(orders_id) as total_orders,
        round(sum(revenue),2) as sum_revenue,
        round(avg(quantity),2) as avg_shopping,
        round(sum(operational_margin),2) as avg_margin,
        round(sum(purchase_cost),2) as total_purchase_cost,
        round(sum(logcost),2) as total_logistic_cost,
        round(sum(ship_cost),2) as total_ship_cost,
        sum(quantity) as total_quantity

from {{ref('int_orders_operational')}}

group by date_date 
order by date_date desc