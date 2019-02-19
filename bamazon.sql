DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT default 0,
  stock_quantity INT default 0,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shovel", "home & garden", 25, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("lawn chair", "home & garden", 40, 2);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("fertilizer", "home & garden", 30, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tylenol", "health", 10, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cough syrup", "health", 15, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("bandage", "health", 7, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("t-shirt", "clothing", 27, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("men's pants", "clothing", 35, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("socks", "clothing", 7, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("women's shirt", "clothing", 20, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("backpack", "clothing", 35, 17);
