INSERT INTO clients (client_name, address, phone_number, email)
  VALUES 
  ('Manuel', 'Carrer de la parra, 10', '600123123', 'manuel@gmail.com'),
  ('Anna', 'Gran Via 25', '600222222', 'anna@email.com');
  
  INSERT INTO employees (employee_name)
  VALUES 
  ('Victor'),
  ('Alba');

  INSERT INTO suppliers (NIF, supplier_name, street_name, city, postal_code, country, telephone)
  VALUES 
  ('B12345678', 'VisionSupplier', 'Diagonal', 'Barcelona', '08001', 'Spain', '933111111'),
  ('B87654321', 'OpticWorld', 'Arago', 'Barcelona', '08002', 'Spain', '933222222'),
  ('B88720943', 'ChinChinAflellou', 'Gorileu', 'Barcelona', '08030', 'Spain', '936784309');
  
  INSERT INTO glasses 
  (brand, frame_type, frame_color, price, supplier_id)
  VALUES
  ('Rayban Classic', 'metal', 'black', 120.00, 1),
  ('Oakley Sport', 'plastic', 'blue', 150.00, 2),
  ('Vogue Style', 'floating', 'gold', 95.00, 1);
  
  INSERT INTO sales (client_id, employee_id, glasses_id, sale_date)
  VALUES
  (1, 1, 1, '2024-03-10'),
  (1, 2, 2, '2024-06-15'),
  (2, 1, 3, '2024-07-20'),
  (1, 1, 3, '2025-01-10');