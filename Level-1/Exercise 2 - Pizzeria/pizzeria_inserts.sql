INSERT INTO provinces (province)
VALUES ('Barcelona');

INSERT INTO cities (city, province_id)
VALUES 
('Barcelona', 1),
('Terrassa', 1);

INSERT INTO clients (name, surnames, address, postal_code, city_id, phone)
VALUES
('Eric', 'Tarres', 'Carrer Major 10', '08001', 1, '600111111'),
('Anna', 'Lopez', 'Gran Via 20', '08221', 2, '600222222');

INSERT INTO stores (address, postal_code, city_id)
VALUES
('Diagonal 100', '08001', 1),
('Centre 50', '08221', 2);

INSERT INTO employees (name, surnames, NIF, phone, role, store_id)
VALUES
('Laura', 'Martinez', '12345678A', '600333333', 'chef', 1),
('David', 'Garcia', '87654321B', '600444444', 'delivery', 1);

INSERT INTO products (name, description, image, price, product_type)
VALUES
('Coca Cola', 'Soft drink', 'cola.jpg', 2.50, 'drink'),
('Water', 'Mineral water', 'water.jpg', 1.50, 'drink'),
('Burger Classic', 'Beef burger', 'burger.jpg', 8.50, 'burger');

INSERT INTO categories (name)
VALUES
('Classic'),
('Special');

INSERT INTO pizzas (product_id, category_id)
VALUES
(1,1);

INSERT INTO orders (type_order, total_price, client_id, store_id)
VALUES
('local', 12.00, 1, 1),
('local', 9.00, 2, 2);

INSERT INTO orders 
(type_order, total_price, client_id, store_id, delivery_employee_id, delivery_datetime)
VALUES ('delivery', 18.50, 1, 1, 2, NOW());

INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 2),   -- 2 cocacolas Barcelona
(1, 2, 1),   -- 1 agua Barcelona
(2, 1, 1),   -- 1 cocacola Barcelona
(3, 1, 3);   -- 3 cocacolas Terrassa