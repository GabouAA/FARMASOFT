
-- Inserción de roles
INSERT INTO rol (rol_id, name, description) VALUES
(1, 'admin', 'Administrador del sistema con acceso completo'),
(2, 'Cliente', 'Usuario cliente con acceso limitado a funcionalidades');

-- Inserción de categorías
INSERT INTO categories (category_id, name, description) VALUES
(1, 'Actividad Fisica', 'Productos relacionados con el ejercicio y rendimiento deportivo'),
(2, 'Belleza', 'Productos cosméticos y de cuidado personal'),
(3, 'Medicamentos', 'Productos farmacéuticos y medicinas'),
(4, 'Vitaminas', 'Suplementos vitamínicos y nutricionales'),
(5, 'Instrumental Medica', 'Equipos e instrumentos médicos especializados'),
(6, 'Higiene Personal', 'Productos de aseo y cuidado personal'),
(7, 'Primeros Auxilios', 'Productos para atención médica básica'),
(8, 'Suplementos Deportivos', 'Complementos nutricionales para atletas y deportistas'),
(9, 'Cuidado Infantil', 'Productos especializados para el cuidado de bebés y niños'),
(10, 'Ortopedia', 'Equipos y dispositivos ortopédicos para rehabilitación'),
(11, 'Dermocosmetica', 'Productos especializados para tratamientos dermatológicos');

-- Inserción de proveedores
INSERT INTO suppliers (id_supplier, name, address, number_phone, email) VALUES
(1, 'Farmacop', 'Av. 6 de Agosto 2345, La Paz', '591-2-2345678', 'ventas@farmacop.bo'),
(2, 'INTI', 'Calle Comercio 1234, Santa Cruz', '591-3-3456789', 'contacto@inti.bo'),
(3, 'BAGO', 'Zona Sur, Calacoto 567, La Paz', '591-2-2567890', 'info@bago.bo'),
(4, 'ASOFAR', 'Av. América 890, Cochabamba', '591-4-4567891', 'pedidos@asofar.bo'),
(5, 'MedEquip', 'Zona Norte 345, El Alto', '591-2-2678901', 'ventas@medequip.bo'),
(6, 'HealthSupply', 'Calle Potosí 123, La Paz', '591-2-2789012', 'info@healthsupply.bo'),
(7, 'BioPharma', 'Av. Arce 456, La Paz', '591-2-2890123', 'contacto@biopharma.bo'),
(8, 'Droguería Central', 'Plaza San Francisco 789, La Paz', '591-2-2901234', 'ventas@drogueriacentral.bo'),
(9, 'Laboratorios Unidos', 'Zona Calacoto 321, La Paz', '591-2-3012345', 'info@labuinidos.bo'),
(10, 'Pharma Import', 'Av. Ballivián 654, La Paz', '591-2-3123456', 'importaciones@pharmaimport.bo'),
(11, 'Medical Supplies SA', 'Calle México 987, La Paz', '591-2-3234567', 'ventas@medicalsupplies.bo');

-- Inserción de usuarios
INSERT INTO users (user_id, rol_id, name, last_name, phone_number, email) VALUES
(1, 1, 'Carlos', 'Mendoza', '591-70123456', 'admin@farmacia.bo'),
(2, 2, 'Juan', 'Perez', '591-12345678', 'juancitoperez@gmail.com'),
(3, 2, 'María', 'García', '591-71234567', 'maria.garcia@email.com'),
(4, 2, 'Pedro', 'Rodriguez', '591-72345678', 'pedro.rodriguez@email.com'),
(5, 2, 'Ana', 'López', '591-73456789', 'ana.lopez@email.com'),
(6, 2, 'Luis', 'Martínez', '591-74567890', 'luis.martinez@email.com'),
(7, 2, 'Carmen', 'Flores', '591-75678901', 'carmen.flores@email.com'),
(8, 2, 'Roberto', 'Silva', '591-76789012', 'roberto.silva@email.com'),
(9, 2, 'Sofía', 'Vargas', '591-77890123', 'sofia.vargas@email.com'),
(10, 2, 'Diego', 'Morales', '591-78901234', 'diego.morales@email.com'),
(11, 2, 'Valeria', 'Herrera', '591-79012345', 'valeria.herrera@email.com');

-- Inserción de productos
INSERT INTO products (product_id, category_id, id_supplier, name, description, production_date, expiration_date, stock, price) VALUES
(1, 1, 1, 'High protein', 'Proteína en polvo para desarrollo muscular', '2024-01-15', '2025-01-15', 10, 190.00),
(2, 2, 2, 'Crema facial', 'Crema hidratante para rostro', '2024-02-01', '2025-02-01', 15, 85.00),
(3, 2, 2, 'Shampoo premium', 'Shampoo para cabello graso', '2024-02-15', '2025-02-15', 5, 65.00),
(4, 3, 3, 'Paracetamol 500mg', 'Analgésico y antipirético', '2024-03-01', '2025-03-01', 25, 25.00),
(5, 3, 3, 'Ibuprofeno 400mg', 'Antiinflamatorio no esteroideo', '2024-03-15', '2025-03-15', 12, 35.00),
(6, 4, 4, 'Suero vitamínico', 'Complejo vitamínico intravenoso', '2024-04-01', '2025-04-01', 30, 140.00),
(7, 4, 4, 'Vitamina C', 'Ácido ascórbico 1000mg', '2024-04-15', '2025-04-15', 20, 45.00),
(8, 5, 1, 'Microscopio', 'Microscopio óptico profesional', '2024-05-01', '2026-05-01', 80, 199.00),
(9, 5, 1, 'Oximetro', 'Oxímetro de pulso digital', '2024-05-15', '2026-05-15', 60, 118.00),
(10, 5, 1, 'Tensiómetro', 'Tensiómetro digital automático', '2024-06-01', '2026-06-01', 70, 250.00),
(11, 5, 2, 'Estetoscopio médico', 'Estetoscopio de alta calidad', '2024-06-15', '2026-06-15', 55, 280.00),
(12, 6, 4, 'Gel antibacterial', 'Gel desinfectante 500ml', '2024-07-01', '2025-07-01', 100, 30.00),
(13, 6, 6, 'Jabón líquido', 'Jabón antibacterial 1L', '2024-07-15', '2025-07-15', 85, 40.00),
(14, 7, 7, 'Guantes de látex', 'Guantes desechables caja x100', '2024-08-01', '2025-08-01', 150, 75.00),
(15, 7, 8, 'Vendas elásticas', 'Vendas para primeros auxilios', '2024-08-15', '2025-08-15', 160, 20.00),
(16, 8, 9, 'Proteína Whey', 'Proteína aislada sabor chocolate', '2024-09-01', '2025-09-01', 170, 220.00),
(17, 9, 10, 'Pañales talla M', 'Pañales desechables para bebés', '2024-09-15', '2025-09-15', 200, 85.00),
(18, 10, 11, 'Bastón ortopédico', 'Bastón ajustable para rehabilitación', '2024-10-01', '2026-10-01', 180, 280.00),
(19, 11, 5, 'Crema dermatológica', 'Tratamiento para piel sensible', '2024-10-15', '2025-10-15', 190, 120.00),
(20, 1, 6, 'Aminoácidos BCAA', 'Suplemento para recuperación muscular', '2024-11-01', '2025-11-01', 130, 260.00),
(21, 2, 7, 'Mascarilla facial', 'Mascarilla hidratante de colágeno', '2024-11-15', '2025-11-15', 145, 95.00),
(22, 3, 8, 'Amoxicilina 875mg', 'Antibiótico de amplio espectro', '2024-12-01', '2025-12-01', 80, 55.00),
(23, 4, 9, 'Complejo B', 'Vitaminas del complejo B en tabletas', '2024-12-15', '2025-12-15', 10, 38.00),
(24, 5, 10, 'Termómetro digital', 'Termómetro infrarrojo sin contacto', '2024-12-20', '2026-12-20', 88, 245.00),
(25, 6, 11, 'Desinfectante multiuso', 'Desinfectante en spray 750ml', '2024-12-25', '2025-12-25', 125, 25.00);

-- Inserción de empresas de envío 
INSERT INTO shipments (emisor_id, name, number_phone, transport) VALUES
(1, 'Trans Copacabana', '591-2-2111111', 'Transporte terrestre'),
(2, 'Envíos Seguros', '591-2-2222222', 'Courier especializado'),
(3, 'Logistica Andina', '591-2-2333333', 'Logística integral'),
(4, 'BOA', '591-2-2444444', 'Boliviana de Aviación Cargo'),
(5, 'Express Delivery', '591-2-2555555', 'Entrega express'),
(6, 'Rápido Express', '591-2-2666666', 'Mensajería urbana'),
(7, 'Cargo Norte', '591-2-2777777', 'Transporte de carga'),
(8, 'Envíos del Sur', '591-2-2888888', 'Distribución regional'),
(9, 'Logística Boliviana', '591-2-2999999', 'Servicios logísticos integrales'),
(10, 'Transportes Illimani', '591-2-3000000', 'Transporte especializado');

-- Inserción de órdenes 
INSERT INTO orders (order_id, user_id, product_id, emisor_id, address, order_date, delivery_date, state) VALUES
(1, 3, 10, 1, 'Zona Sur, Calle 21 #123', '2024-08-15 10:30:00', '2024-08-30 14:00:00', 'pending'),
(2, 4, 11, 1, 'Zona Norte, Av. Buenos Aires #456', '2024-05-15 09:15:00', '2024-05-22 16:30:00', 'pending'),
(3, 5, 1, 2, 'El Alto, Calle 16 de Julio #789', '2024-07-10 11:45:00', '2024-07-18 10:00:00', 'pending'),
(4, 6, 14, 3, 'Zona Centro, Plaza Murillo #321', '2024-07-18 08:20:00', '2024-07-22 15:45:00', 'pending'),
(5, 2, 12, 1, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-09-15 14:10:00', '2024-09-21 09:30:00', 'pending'),
(6, 3, 8, 4, 'Miraflores, Av. Hugo Chávez #987', '2024-11-10 16:25:00', '2024-11-18 11:15:00', 'pending'),
(7, 2, 1, 2, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-03-01 10:00:00', '2024-03-05 14:00:00', 'delivered'),
(8, 2, 6, 1, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-03-15 11:30:00', '2024-03-18 16:20:00', 'delivered'),
(9, 2, 4, 3, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-04-10 09:45:00', '2024-04-12 10:15:00', 'delivered'),
(10, 2, 7, 2, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-05-20 15:10:00', '2024-05-23 12:30:00', 'delivered'),
(11, 2, 9, 4, 'Sopocachi, Calle Rosendo Gutiérrez #654', '2024-06-05 13:25:00', '2024-06-08 17:45:00', 'delivered'),
(12, 3, 2, 1, 'Zona Sur, Calle 21 #123', '2024-02-10 12:15:00', '2024-02-13 14:30:00', 'delivered'),
(13, 4, 3, 1, 'Zona Norte, Av. Buenos Aires #456', '2024-02-25 10:40:00', '2024-02-28 11:20:00', 'delivered'),
(14, 5, 5, 1, 'El Alto, Calle 16 de Julio #789', '2024-03-20 16:55:00', '2024-03-22 09:10:00', 'delivered'),
(15, 6, 13, 2, 'Zona Centro, Plaza Murillo #321', '2024-04-05 08:30:00', '2024-04-07 15:25:00', 'delivered'),
(16, 7, 16, 2, 'Zona Rosario, Calle Ingavi #234', '2024-01-15 09:30:00', '2024-01-18 14:45:00', 'delivered'),
(17, 8, 17, 2, 'Villa Fátima, Av. Saavedra #567', '2024-02-20 11:20:00', '2024-02-23 16:10:00', 'delivered'),
(18, 9, 18, 3, 'Zona Sopocachi, Calle Belisario #890', '2024-03-10 14:40:00', '2024-03-12 10:25:00', 'delivered'),
(19, 10, 19, 3, 'Achumani, Calle 10 #123', '2024-04-15 16:15:00', '2024-04-17 12:30:00', 'delivered'),
(20, 11, 20, 4, 'Zona Central, Plaza Abaroa #456', '2024-05-05 08:50:00', '2024-05-07 15:20:00', 'delivered'),
(21, 3, 21, 5, 'Zona Sur, Calle 21 #123', '2024-06-20 13:10:00', '2024-06-22 11:40:00', 'delivered');

 

