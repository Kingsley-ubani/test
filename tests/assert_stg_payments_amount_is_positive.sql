with payments as (
    select * from {{ref('stg_payment')}}
)

select orderid,sum(amount) total_amount
from payments
group by orderid
having sum(amount) < 0
