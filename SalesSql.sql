create database company1;
use company1;
select * from sales;

-- Q1: find all the order shipped via 'Economy' mode with a total amount is grater than 25000
select *
from sales
where Ship_Mode='Economy' AND TOtal_Amount > 25000;

select * 
from sales
where Category = 'Technology'AND Country='Ireland' AND Order_Date>'2020-01-01';

select *
from sales
order by Unit_profit DESC
Limit 10;

select Order_ID,Customer_name
from sales 
where  Customer_name LIKE 'J%N';

select *
from sales
where Product_Name LIKE '%Acco%';

select City, Sum(Total_Amount) as S
from sales
group by city
order by S desc
Limit 5;

select Customer_Name as C
from sales
order by C desc
Limit 10,10;

select sum(Total_Amount) as 'Amount' ,avg(Unit_Cost) as 'Cost',count(Order_ID) as 'Total no.of orders'
from sales;

-- Q:Count unquie no.of regions
select count(distinct(Region)) 
From sales;

select Customer_Name,count(Order_ID) as Order_Count
from sales
group by Customer_Name
order by Order_Count desc
Limit 10;

--Q: Rank 5 product based on toatl sales using RANK()

select Produt_Name,sum(Total_Amount) AS Toatl_sales,RANK() over (order by sum(Toatl_A







