-- Question 1
"""
Sales performance(*) of each Store in Jan 2021 ( Revenue, Order, Item Sold, AOV (Average Order Value), ASP (Average Selling Price))
"""
SELECT
    platform,
    SUM(
        unit_price * quantity
    ) AS total_revenue,
    COUNT(
        DISTINCT order_number
    ) AS total_orders,
    SUM(quantity) AS total_items_sold,
    SUM(
        unit_price * quantity
    ) / COUNT(
        DISTINCT order_number
    ) AS average_order_value,
    SUM(
        unit_price * quantity
    ) / SUM(quantity) AS average_selling_price
FROM
    dataset
WHERE
    "Order_status" NOT IN (
        'cancelled',
        'returned',
        'failed'
    )
    AND order_created_date BETWEEN '2024-05-01'
    AND '2024-06-01'
    AND delivery_date BETWEEN '2024-05-01'
    AND '2024-06-01'
GROUP BY
    platform;
-- Question 2
"""
Top 5 revenue contributed Product in Jan 2021
"""
SELECT
    "Product SKU",
    SUM(
        unit_price * quantity
    ) AS total_revenue
FROM
    dataset
WHERE
    "Order_status" NOT IN (
        'cancelled',
        'returned',
        'failed'
    )
    AND order_created_date BETWEEN '2024-05-01'
    AND '2024-06-01'
    AND delivery_date BETWEEN '2024-05-01'
    AND '2024-06-01'
GROUP BY
    "Product SKU"
ORDER BY
    total_revenue DESC
LIMIT
    5;
-- Question 3
"""
The first date that each Product has been sold
"""
SELECT
    "Product SKU",
    MIN(delivery_date) AS first_sold_date
FROM
    dataset
WHERE
    "Order_status" NOT IN (
        'cancelled',
        'returned',
        'failed'
    )
GROUP BY
    "Product SKU"
ORDER BY
    first_sold_date;
-- Question 4
"""
Seller Promotion Ratio (Seller Promotion/ Revenue) of each Product category.
"""
SELECT
    "Category" AS product_category,
    SUM(seller_promo) / SUM(
        unit_price * quantity
    ) AS seller_promotion_ratio
FROM
    dataset d
    LEFT JOIN category C
    ON d."Product SKU" = C."Product SKU"
WHERE
    "Order_status" NOT IN (
        'cancelled',
        'returned',
        'failed'
    )
GROUP BY
    product_category
ORDER BY
    seller_promotion_ratio DESC;
-- Question 5
"""
Which Product SKU has the highest cancellation ratio in May 2021? And what is the main reason for cancellation of that product?
ct?
"""
    WITH cancellation_ratio AS (
        SELECT
            "Product SKU",
            COUNT(*) FILTER (
                WHERE
                    "Order_status" = 'cancelled'
            ) :: FLOAT / COUNT(*) AS cancellation_ratio
        FROM
            dataset
        WHERE
            order_created_date BETWEEN '2024-06-01'
            AND '2024-07-01'
        GROUP BY
            "Product SKU"
        ORDER BY
            cancellation_ratio DESC
        LIMIT
            1
    )
SELECT
    d."Product SKU",
    to_char(
        cr.cancellation_ratio,
        'FM999999999.00'
    ) AS cancellation_ratio,
    cancelled_reason,
    COUNT(*) AS reason_count
FROM
    dataset d
    LEFT JOIN cancellation_ratio cr
    ON d."Product SKU" = cr."Product SKU"
WHERE
    cancellation_ratio IS NOT NULL
GROUP BY
    d."Product SKU",
    cancellation_ratio,
    cancelled_reason
ORDER BY
    reason_count DESC
LIMIT
    1;
-- Question 6
"""
Percentage of late delivery orders of Shopee and Lazada( order has delivery lead time > = 3 days is considered as late order) 
"""
SELECT
    platform,
    COUNT(*) FILTER (WHERE cast(delivery_date as DATE) - cast(order_created_date as DATE) >= 3)::float / COUNT(*) * 100
        AS late_delivery_percentage
FROM
    dataset
WHERE
    platform IN ('shopee', 'lazada')
    AND "Order_status" NOT IN ('cancelled', 'returned', 'failed')
GROUP BY
    platform
	;
