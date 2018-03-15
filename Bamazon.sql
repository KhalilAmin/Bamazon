DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL (10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0001, "Chair", "Furniture", 49.99, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0002, "Table", "Furniture", 249.99, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0003, "Desk", "Furniture", 199.99, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0004, "Laptop", "Electronics", 1199.99, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0005, "Television", "Electronics", 499.99, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0006, "Lawnmower", "Garden", 149.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0007, "Headphones", "Electronics", 19.99, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0008, "Printer", "Electronics", 99.99, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0009, "Gas Mask", "Outdoor", 49.99, 15);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUE (0010, "Walkie-Talkie", "Electronics", 19.99, 25);

SELECT item_id, product_name, department_name, price, stock_quantity FROM products;