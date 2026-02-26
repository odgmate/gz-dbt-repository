select 
        ma.orders_id
        ,ma.date_date
        ,round((ma.margin+sh.shipping_fee-sh.logcost-sh.ship_cost),2) as operational_margin
        ,ma.quantity
	    ,ma.revenue
	    ,ma.purchase_cost
	    ,ma.margin
	    ,sh.shipping_fee
	    ,sh.logcost
	    ,sh.ship_cost
        
        

from {{ref('int_orders_margin')}} as ma
join {{ref('stg_raw__ship')}} as sh on ma.orders_id=sh.orders_id

order by operational_margin desc
