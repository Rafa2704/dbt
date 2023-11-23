with prod as (
select  pd.product_name,
        s.company_name,
        c.category_name,
        pd.unit_price,
        pd.product_id


from

{{source('sources', 'products')}} pd
left join {{source('sources', 'suppliers')}} s on pd.supplier_id = s.supplier_id
left join {{source('sources', 'categories')}} c on pd.category_id = c.category_id
), orddetai as (

    select pd.*, od.order_id, od.quantity, od.desconto
    from {{ref('orderdetails')}} od
    left join prod pd on od.product_id =  pd.product_id
), ordrs as (
        select ord.order_date, ord.order_id, cs.company_name customer, em.nome_completo employee, em.idade, em.tempo_servico
        from {{source('sources','orders')}} ord
        left join {{ref('customers')}} cs on ord.customer_id = cs.customer_id
        left join {{ref('employees')}} em on ord.employee_id = em.employee_id
        left join {{source('sources', 'shippers')}} sh on ord.ship_via = sh.shipper_id


), final_joins as (
    select od.*, ord.order_date, ord.customer, ord.employee, ord.idade, ord.tempo_servico
    from orddetai od
    inner join ordrs ord on od.order_id = ord.order_id
)

select * from final_joins
