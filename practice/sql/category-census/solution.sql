SELECT
  category,
  COUNT(product_name) AS product_count
FROM products

group by category
having count(product_name) > 8;
