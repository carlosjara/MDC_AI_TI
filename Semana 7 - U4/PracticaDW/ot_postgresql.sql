CREATE TABLE regions (
  region_id SERIAL PRIMARY KEY,
  region_name VARCHAR(50) NOT NULL
);

CREATE TABLE countries (
  country_id CHAR(2) PRIMARY KEY,
  country_name VARCHAR(40) NOT NULL,
  region_id INTEGER REFERENCES regions(region_id) ON DELETE CASCADE
);

CREATE TABLE locations (
  location_id SERIAL PRIMARY KEY,
  address VARCHAR(255) NOT NULL,
  postal_code VARCHAR(20),
  city VARCHAR(50),
  state VARCHAR(50),
  country_id CHAR(2) REFERENCES countries(country_id) ON DELETE CASCADE
);

CREATE TABLE warehouses (
  warehouse_id SERIAL PRIMARY KEY,
  warehouse_name VARCHAR(255),
  location_id INTEGER REFERENCES locations(location_id) ON DELETE CASCADE
);

CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  hire_date DATE NOT NULL,
  manager_id INTEGER ,
  job_title VARCHAR(255) NOT NULL
);

CREATE TABLE product_categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  description VARCHAR(2000),
  standard_cost NUMERIC(9, 2),
  list_price NUMERIC(9, 2),
  category_id INTEGER NOT NULL REFERENCES product_categories(category_id) ON DELETE CASCADE
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  website VARCHAR(255),
  credit_limit NUMERIC(8, 2)
);

CREATE TABLE contacts (
  contact_id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  customer_id INTEGER REFERENCES customers(customer_id) ON DELETE CASCADE
);
--drop table orders
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  status VARCHAR(20) NOT NULL,
  salesman_id INTEGER,
  order_date DATE NOT NULL
);

--drop table order_items
CREATE TABLE order_items (
  order_id INTEGER NOT NULL ,
  item_id SERIAL NOT NULL,
  product_id INTEGER NOT NULL,
  quantity NUMERIC(8, 2) NOT NULL,
  unit_price NUMERIC(8, 2) NOT NULL,
  PRIMARY KEY (order_id, item_id)
);

CREATE TABLE inventories (
  product_id INTEGER NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
  warehouse_id INTEGER NOT NULL REFERENCES warehouses(warehouse_id) ON DELETE CASCADE,
  quantity INTEGER NOT NULL,
  PRIMARY KEY (product_id, warehouse_id)
);