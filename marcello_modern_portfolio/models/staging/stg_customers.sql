select
    cast(customer_id as integer) as customer_id,
    cast(updated_at as date) as updated_at,
    trim(customer_name) as customer_name,
    lower(trim(email)) as email,
    trim(city) as city
from {{ ref('raw_customers') }}
