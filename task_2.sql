SELECT
    o.order_id,
    p.name AS product_name,
    oi.quantity,
    (oi.quantity * oi.unit_price) AS total_amount
FROM
    Orders o
JOIN
    Order_Items oi ON o.order_id = oi.order_id
JOIN
    Products p ON oi.product_id = p.product_id
ORDER BY
    o.order_id ASC;
