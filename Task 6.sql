use osd;
select * from online_sales_dataset1;

select 
year(InvoiceDate) as year_os,
month(InvoiceDate) as month_os,
sum(ShippingCost) as revenue,
count(Quantity) as total_orders
from online_sales_dataset1
where InvoiceDate =  "01-01-23" or "01-01-24"
group by year_os, month_os
order by year_os, month_os;

