-- Average customer age based on marital status
select 
	"Marital Status" ,
	round(avg(age)) age_average
from 
	data.customer c 
group by
	"Marital Status" 
;

-- Average customer age based on gender
select 
	gender,
	round(avg(age)) age_average
from 
	data.customer c 
group by
	gender 
;

-- Top store based on the product sold
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

-- Top product based on sales
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