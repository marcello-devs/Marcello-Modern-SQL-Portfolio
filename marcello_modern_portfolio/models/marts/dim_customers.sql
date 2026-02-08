select
  customer_id,
  customer_name,
  email,
  city
from {{ ref('stg_customers') }}
qualify row_number() over (partition by customer_id order by updated_at desc) = 1
