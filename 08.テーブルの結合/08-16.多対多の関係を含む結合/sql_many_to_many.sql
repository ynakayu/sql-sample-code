select 
    p.id product_id,
    p.name product_name,
    c.name  category_name
from products p
inner join products_categories pc
    on p.id = pc.product_id
inner join categories c
    on c.id = pc.category_id
where p.id = 3;
