SELECT product_id, product_name, category_id, list_price
FROM oes.products o
WHERE list_price = (
    SELECT MIN(list_price)
    FROM oes.products i
    WHERE i.category_id = o.category_id
);
