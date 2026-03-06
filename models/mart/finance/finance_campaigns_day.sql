select * 
        , round((operational_margin - ads_cost),2) as ads_margin

from {{ref('int_campaigns_day')}} as ca 
join {{ref('int_orders_operational')}} as fi using (date_date)