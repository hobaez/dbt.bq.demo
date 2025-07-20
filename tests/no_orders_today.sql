-- test to check if there are no orders from today

SELECT COUNT(*) AS num_orders_today
FROM {{ ref('stg_orders')}}
WHERE DATE(Order_Date) = CURRENT_DATE()
HAVING COUNT(*) > 0