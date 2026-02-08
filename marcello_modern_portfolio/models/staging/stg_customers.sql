select
  cast(customer_id as integer) as customer_id,
  trim(customer_name) as customer_name,
  lower(trim(email)) as email,
  trim(city) as city,
  cast(updated_at as date) as updated_at
from {{ ref('raw_customers') }}
