-- Sample data for Small Business Sales Database

insert into customers (name, city, email) values
('Aarav Mehta', 'Chennai', 'aarav.m@email.com'),
('Diya Iyer', 'Puducherry', 'diya.i@email.com'),
('Rohan Kumar', 'Bangalore', 'rohan.k@email.com'),
('Ananya Rao', 'Chennai', 'ananya.r@email.com'),
('Vikram Singh', 'Puducherry', 'vikram.s@email.com'),
('Meera Nair', 'Coimbatore', 'meera.n@email.com'),
('Karthik Raj', 'Chennai', 'karthik.r@email.com'),
('Sneha Pillai', 'Madurai', 'sneha.p@email.com');

insert into products (product_name, category, price) values
('Wireless Mouse', 'Electronics', 499.00),
('Bluetooth Speaker', 'Electronics', 1299.00),
('Notebook Set', 'Stationery', 199.00),
('Desk Lamp', 'Home', 899.00),
('Coffee Mug', 'Home', 249.00),
('Backpack', 'Accessories', 1499.00),
('Water Bottle', 'Accessories', 349.00),
('Pen Set', 'Stationery', 149.00);

insert into orders (customer_id, order_date, status) values
(1, '2026-06-02', 'Completed'),
(2, '2026-06-05', 'Completed'),
(3, '2026-06-07', 'Completed'),
(1, '2026-06-15', 'Completed'),
(4, '2026-06-20', 'Cancelled'),
(5, '2026-07-01', 'Completed'),
(6, '2026-07-03', 'Completed'),
(2, '2026-07-10', 'Completed'),
(7, '2026-07-15', 'Completed'),
(8, '2026-07-18', 'Completed'),
(3, '2026-08-02', 'Completed'),
(5, '2026-08-10', 'Completed');

insert into order_items (order_id, product_id, quantity) values
(1, 1, 2), (1, 3, 1),
(2, 2, 1), (2, 5, 2),
(3, 6, 1),
(4, 4, 1), (4, 8, 3),
(5, 1, 1),
(6, 7, 2), (6, 6, 1),
(7, 2, 1), (7, 3, 4),
(8, 5, 1), (8, 8, 2),
(9, 4, 1),
(10, 1, 1), (10, 7, 1),
(11, 6, 2),
(12, 2, 1), (12, 5, 3);
