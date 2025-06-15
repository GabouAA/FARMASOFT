-- 1. Las 4 categorías con menor cantidad de stock de productos
SELECT 
    c.name AS Nombre_Categoria,
    SUM(p.stock) AS Stock,
    c.description AS Descripcion
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.name, c.description
ORDER BY SUM(p.stock) ASC
LIMIT 4;

-- 2. Lista de  de envío con más productos entregados
SELECT 
    s.name AS Nombre_Empresa,
    COUNT(o.order_id) AS Cantidad_Productos_Entregados
FROM shipments s
INNER JOIN orders o ON s.emisor_id = o.emisor_id
WHERE o.state = 'delivered'
GROUP BY s.emisor_id, s.name
ORDER BY COUNT(o.order_id) DESC

-- 3. Productos con precios entre 50 y 200 bolivianos de categorías específicas
-- Muestra nombre del producto, precio y categoría (Actividad Física, Vitaminas, Instrumental Médica)
SELECT 
    p.name AS Nombre_Producto,
    p.price AS Precio,
    c.name AS Categoria
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
WHERE p.price BETWEEN 50 AND 200
    AND c.name IN ('Actividad Fisica', 'Vitaminas', 'Instrumental Medica')
ORDER BY c.name, p.price DESC;

-- 4. Todas las órdenes pendientes
-- Muestra nombre del producto, fecha de envío y empresa de envío
SELECT 
    p.name AS Nombre_Producto,
    TO_CHAR(o.delivery_date, 'DD-MM') AS Fecha_Envio,
    s.name AS Empresa_Envio
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id
INNER JOIN shipments s ON o.emisor_id = s.emisor_id
WHERE o.state = 'pending'
ORDER BY o.delivery_date;

-- 5. Los 4 proveedores que brindan más productos
-- Muestra nombre del proveedor, cantidad de productos, teléfono y email
SELECT 
    s.name AS Nombre_Proveedor,
    COUNT(p.product_id) AS Cantidad_Productos,
    SUM(p.stock) AS Stock_Total,
    s.number_phone AS Telefono,
    s.email AS Email
FROM suppliers s
JOIN products p ON s.id_supplier = p.id_supplier
GROUP BY s.id_supplier, s.name, s.number_phone, s.email
ORDER BY COUNT(p.product_id) DESC
LIMIT 4;

-- 6. Información del cliente 'Juan Perez'
-- Muestra nombre, correo, número y cantidad de pedidos entregados
SELECT 
    u.name || ' ' || u.last_name AS Nombre_Cliente,
    u.email AS Correo,
    u.phone_number AS Numero_Telefono,
    COUNT(o.order_id) AS Cantidad_Pedidos_Entregados
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id AND o.state = 'delivered'
WHERE u.name = 'Juan' AND u.last_name = 'Perez'
GROUP BY u.user_id, u.name, u.last_name, u.email, u.phone_number;