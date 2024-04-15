select e.first_name,e.last_name,count(o.order_id) as num_orders,
(case
when o.shipped_date<=o.required_date then 'On Time'
 else 'Late'
end) as Shipped
from  orders as o join employees as e 
on e.employee_id=o.employee_id
group by  e.first_name,e.last_name,Shipped
order by e.last_name,e.first_name,num_orders DESC;




--Total discount amount per year
SELECT EXTRACT(YEAR FROM order_date), ROUND(CAST(SUM(products.unit_price*quantity*discount) AS numeric),2) AS num_round FROM orders
join order_details ON orders.order_id=order_details.order_id
JOIN products ON order_details.product_id=products.product_id
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY  EXTRACT(YEAR FROM order_date) DESC;



--Suppliers and customers united
WITH my_cte AS(
select  c.city,c.company_name,c.contact_name,True AS type FROM customers AS c
UNION 
select  s.city,s.company_name,s.contact_name, False AS type FROM suppliers AS s
  )
  SELECT city,company_name,contact_name,
  CASE 
  WHEN type then 'Customers'
  ELSE  'Suppliers'
  END 
  FROM my_cte;



--Average product unit price per category
select  c.category_name,round(cast(avg(p.unit_price) AS numeric),2)
from categories as c join products as p on p.category_id=c.category_id
group by c.category_name;



select p.product_name,s.company_name,c.category_name
from products as p 
join suppliers as s on p.supplier_id=s.supplier_id
join categories as c on p.category_id=c.category_id;


select round(CAST(avg(unit_price) AS numeric),2),sum(units_in_stock) ,sum(discontinued) from products;


select first_name,last_name,hire_date from employees
order by hire_date DESC limit 1;

select company_name,contact_name,fax from customers
where fax IS NOT NULL;

select city,company_name,contact_name from customers
where city like '%L%'
order by contact_name;

select order_id from orders
where  order_id%2=0;

select o.employee_id,o.order_id,o.customer_id,o.required_date,o.shipped_date from orders as o 
where shipped_date>required_date;

select order_date,shipped_date,customer_id,freight from orders
where order_date='08/16/1996';

select contact_name,address,city from customers
where country not in ('Germany','Mexico','Spain');

select category_name,description from  categories
order by category_name;