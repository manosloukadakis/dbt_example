with source as (

    select distinct id, company 
    from {{source('northwind','employees')}}
)

select * 
from source