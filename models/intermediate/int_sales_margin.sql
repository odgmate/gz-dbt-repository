
        SELECT sal.orders_id,
                sal.date_date,
                sal.revenue,
                sal.quantity,
                (sal.revenue-(pro.purchase_price*sal.quantity)) as margin,
                (pro.purchase_price*sal.quantity) as purchase_cost
        from {{ref('stg_raw__sales')}} as sal 
        left join {{ref('stg_raw__product')}} as pro on sal.products_id=pro.products_id
