select
    *
from
    products
where
    price > 
        (
            select
                avg(price)
            from
                products
        )
order by
    price desc, id;
