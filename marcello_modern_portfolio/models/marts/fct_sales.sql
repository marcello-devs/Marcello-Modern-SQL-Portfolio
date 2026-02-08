select
    order_id,
    order_date,
    customer_id,
    amount
from {{ ref('stg_orders') }}
