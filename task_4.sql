SELECT
    c.name AS customer_name,
    (
        SELECT SUM(oi.quantity * oi.unit_price)
        FROM Orders o
        JOIN Order_Items oi ON o.order_id = oi.order_id
        WHERE o.customer_id = c.customer_id
    ) AS total_purchase_amount
FROM
    Customers c
ORDER BY
    total_purchase_amount DESC
LIMIT 5;
