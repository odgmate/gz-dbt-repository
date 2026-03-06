select 
        extract(MONTH FROM date_date) as datemonth,
        ads_margin,
        operational_margin,
        ads_cost,
        impression as ads_impression,
        click as ads_clicks,
        quantity,
        revenue,
        purchase_cost,
        margin,
        shipping_fee,
        logcost as log_cost,
        ship_cost

from {{ref('finance_campaigns_day')}}