SELECT
    c.name AS category_name,
    (
        SELECT SUM(oi.quantity * oi.unit_price)
        FROM Products p
        JOIN Order_Items oi ON p.product_id = oi.product_id
        WHERE p.category_id = c.category_id
    ) AS total_revenue
FROM
    Categories c
ORDER BY
    total_revenue DESC;
