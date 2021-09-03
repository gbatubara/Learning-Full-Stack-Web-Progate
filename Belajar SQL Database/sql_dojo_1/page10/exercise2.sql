-- dapatkan data untuk 5 produk dengan penjualan tertinggi 
select items.id, items.name, items.price * count(*) as "total penjualan"
from sales_records
join items
on sales_records.item_id = items.id
group by items.id, items.name
order by count(*) * items.price desc
limit 5;