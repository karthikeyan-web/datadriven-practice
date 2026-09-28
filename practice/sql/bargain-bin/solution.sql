select category,
min(price) as floor_price,
max(price) as ceiling_price,
max(price) - min(price) as price_spread
from products 
where price is not null
group by category;
