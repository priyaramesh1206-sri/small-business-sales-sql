-- Small Business Sales Database Schema

create table customers (
  customer_id serial primary key,
  name text not null,
  city text,
  email text
);

create table products (
  product_id serial primary key,
  product_name text not null,
  category text,
  price numeric(10,2)
);

create table orders (
  order_id serial primary key,
  customer_id int references customers(customer_id),
  order_date date,
  status text
);

create table order_items (
  order_item_id serial primary key,
  order_id int references orders(order_id),
  product_id int references products(product_id),
  quantity int
);
