SELECT
    c.customer_id,
    c.name AS customer_name,
    c.email,
    c.location,
    (SELECT COUNT(*) FROM Orders o WHERE o.customer_id = c.customer_id) AS total_orders
FROM
    Customers c
ORDER BY
    total_orders DESC;

