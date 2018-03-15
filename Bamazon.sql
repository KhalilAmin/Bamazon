DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL (10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Chair", "Furniture", 49.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Table", "Furniture", 249.99, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Desk", "Furniture", 199.99, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Laptop", "Electronics", 1199.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Television", "Electronics", 499.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Lawnmower", "Garden", 149.99, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Headphones", "Electronics", 19.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Printer", "Electronics", 99.99, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Gas Mask", "Outdoor", 49.99, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUE ("Walkie-Talkie", "Electronics", 19.99, 25);

SELECT product_name, department_name, price, stock_quantity FROM products;