with source as (
    select * from {{ref('stg_raw__sales')}} 
),
    source2 as (
        SELECT sal.date_date,
                (sal.revenue-(pro.purchase_price*sal.quantity)) as margin,
                (pro.purchase_price*sal.quantity) as purchase_cost
        from source as sal 
        left join {{ref('stg_raw__product')}} as pro on sal.products_id=pro.products_id
    )
select * from source2