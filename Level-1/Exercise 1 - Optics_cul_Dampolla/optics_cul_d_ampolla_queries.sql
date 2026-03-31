-- Para ejecutar las consultas por separado (seleccionar con el raton la que se quiere ejecutar y luego pulsar Cntrl + Enter).
  
  SELECT COUNT(*) AS total_invoices
  FROM sales
  WHERE client_id = 1
  AND sale_date BETWEEN '2024-01-01' AND '2024-12-31';
  
  SELECT BRAND
  FROM GLASSES 
  JOIN SALES ON sales.glasses_id = glasses.id
  WHERE employee_id = 1
  AND YEAR(sale_date) = 2024;
  
  SELECT DISTINCT supplier_name
  FROM SUPPLIERS
  JOIN GLASSES ON glasses.supplier_id = suppliers.id
  JOIN SALES ON sales.glasses_id = glasses.id