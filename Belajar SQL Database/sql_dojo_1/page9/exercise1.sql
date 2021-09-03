/*
dapatkan nama dan jumlah barang untuk pengguna
yang sudah membeli lebih dari 10 barang
*/
select users.id, users.name, count(*) as "jumlah"
from sales_records
join users
on sales_records.user_id = users.id
group by users.id, users.name
having count(*) >= 10;