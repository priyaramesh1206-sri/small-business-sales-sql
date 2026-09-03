-- Analysis Queries for Small Business Sales Database

-- Total revenue per product
select p.product_name,
       sum(oi.quantity * p.price) as revenue
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.status = 'Completed'
group by p.product_name
order by revenue desc;

-- Top 5 customers by total spend
select c.name,
       sum(oi.quantity * p.price) as total_spent
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed'
group by c.name
order by total_spent desc
limit 5;

-- Monthly sales trend
select date_trunc('month', o.order_date) as month,
       sum(oi.quantity * p.price) as monthly_revenue
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where o.status = 'Completed'
group by month
order by month;

-- Best-selling category
select p.category,
       sum(oi.quantity) as units_sold
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.status = 'Completed'
group by p.category
order by units_sold desc;
