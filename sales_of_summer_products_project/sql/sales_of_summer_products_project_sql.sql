create database sales_project


Select * from sales_of_summer_products


create or alter view new_sales_of_summer_products as
Select * ,
iif(totalunitssold>=20000,'platinum',iif(totalunitssold>=5000,'gold',iif(totalunitssold>=100,'silver','bronze'))) as merchant_tiers,
iif(rating>=4.5,'Excellent',iif(rating>=4,'good',iif(rating>=3.5,'average','poor'))) as rating_catagory,
iif(meandiscount>50,'high',iif(meandiscount>25,'medium',iif(meandiscount>0,'low','no_discount'))) as Discount_stratorgy,
iif(totalurgencycount>0,'has_banners','no_banners') as Urgency_status
from sales_of_summer_products


select * from new_sales_of_summer_products

create or alter view Sales_Volume_by_Merchant_Tier as
Select Top 100 merchant_tiers, sum(totalunitssold) as sum_of_total_units_sold, COUNT(merchantid) as count_merchantid
from new_sales_of_summer_products
group by merchant_tiers 
order by sum_of_total_units_sold desc

select * from Sales_Volume_by_Merchant_Tier

create or alter view Discount_Impact_on_Sales_Perfor as
Select top 100 Discount_stratorgy , AVG(meanunitssoldperproduct) as average_meanunitssoldperproduct
From new_sales_of_summer_products
group by Discount_stratorgy
order by average_meanunitssoldperproduct desc


select* from Discount_Impact_on_Sales_Perfor

create or alter view Urgency_Banner_Effectiveness as
Select top 100 Urgency_status, avg(totalunitssold) as average_totalunitssold, avg(rating) as average_ratings
from new_sales_of_summer_products
group by Urgency_status
order by average_totalunitssold desc

select* from Urgency_Banner_Effectiveness
