with orders as (

    select * from {{source('northwind','orders')}}
),
order_status as (
    select * from {{source('northwind','orders_status')}}
)
select orders.id, employee_id, customer_id, status_name  
from orders inner join order_status on orders.status_id = order_status.id