SELECT
  product_name,
  price
FROM products
WHERE in_stock = 1 and lower(category) = 'electronics'
ORDER BY price DESC
limit 5
