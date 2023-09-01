-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select 
	"Marital Status" ,
	round(avg(age)) age_average
from 
	data.customer c 
group by
	"Marital Status" 
;

-- Berapa rata-rata umur customer jika dilihat dari gender nya ?
select 
	gender,
	round(avg(age)) age_average
from 
	data.customer c 
group by
	gender 
;

-- Tentukan nama store dengan total quantity terbanyak!
select 
	s.storename,
	sum(t.qty) total_qty
from
	"data".store s 
	join "data"."transaction" t 
		on s.storeid = t.storeid 
group by 
	s.storename 
order by
	sum(t.qty) desc 
limit 
	1
;

-- Tentukan nama produk terlaris dengan total amount terbanyak!
select 
	p."Product Name",
	sum(t.totalamount) total_amount
from
	"data".product p 
	join "data"."transaction" t 
		on p.productid = t.productid  
group by 
	p."Product Name"  
order by
	sum(t.totalamount) desc 
limit 
	1
;