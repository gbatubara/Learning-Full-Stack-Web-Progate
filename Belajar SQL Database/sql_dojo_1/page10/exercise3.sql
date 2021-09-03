-- dapatkan semua barang dengan total penjualan yang lebih besar dari "hoodie abu-abu"
select items.id, items.name, items.price * count(*) as "total penjualan"
from sales_records
join items
on sales_records.item_id = items.id
GROUP BY items.id, items.name, items.price
HAVING (COUNT(*) * items.price) > (
  SELECT COUNT(*) * items.price
  FROM sales_records
  JOIN items
  ON sales_records.item_id = items.id
  WHERE items.name = "hoodie abu-abu"
);