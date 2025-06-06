-- Insertar datos de roles (solo Cliente y Administrador)
INSERT INTO rol (rol_id,name, description) VALUES 
(1,'Administrador', 'Usuario con permisos completos del sistema farmacéutico'),
(2,'Cliente', 'Usuario que consulta información de medicamentos');
select * from rol;

-- Insertar datos de categorías farmacéuticas
INSERT INTO categories (name, description) VALUES 
('Analgésicos', 'Medicamentos para alivio del dolor'),
('Antibióticos', 'Medicamentos para combatir infecciones bacterianas'),
('Antiinflamatorios', 'Medicamentos para reducir inflamación'),
('Cardiovasculares', 'Medicamentos para el sistema cardiovascular'),
('Dermatológicos', 'Medicamentos para afecciones de la piel'),
('Digestivos', 'Medicamentos para el sistema digestivo'),
('Respiratorios', 'Medicamentos para el sistema respiratorio'),
('Neurológicos', 'Medicamentos para el sistema nervioso'),
('Vitaminas', 'Suplementos vitamínicos y nutricionales'),
('Antihistamínicos', 'Medicamentos para alergias'),
('Oftalmológicos', 'Medicamentos para los ojos'),
('Ginecológicos', 'Medicamentos para salud femenina'),
('Endocrinos', 'Medicamentos para trastornos hormonales'),
('Urológicos', 'Medicamentos para el sistema urinario'),
('Pediátricos', 'Medicamentos específicos para niños');
select * from categories;

-- Insertar datos de proveedores farmacéuticos
INSERT INTO suppliers (name, address, number_phone, email) VALUES 
('Farmacorp Bolivia', 'Av. Banzer 1234, Santa Cruz', '591-3-3401234', 'ventas@farmacorp.bo'),
('Laboratorios Bagó', 'Calle Sucre 456, Santa Cruz', '591-3-3405678', 'info@bago.bo'),
('Droguería Inti', 'Av. Alemana 789, Santa Cruz', '591-3-3409876', 'pedidos@inti.bo'),
('Farmacias Chávez', 'Calle Warnes 321, Santa Cruz', '591-3-3403456', 'distribución@chavez.bo'),
('Laboratorio Vita', 'Zona Norte 654, Santa Cruz', '591-3-3407890', 'comercial@vita.bo'),
('Medicamentos Andinos', 'Av. Roca y Coronado 987, Santa Cruz', '591-3-3402345', 'ventas@andinos.bo'),
('Farma Distribuidora', 'Barrio Equipetrol 147, Santa Cruz', '591-3-3408765', 'info@farmadist.bo'),
('Boticas Bolivianas', 'Calle Libertad 258, Santa Cruz', '591-3-3405432', 'contacto@boticas.bo'),
('Laboratorios Roche Bolivia', 'Av. Monseñor Rivero 369, Santa Cruz', '591-3-3406789', 'bolivia@roche.com'),
('Farmacia Popular', 'Calle Velasco 741, Santa Cruz', '591-3-3409123', 'popular@farmacias.bo'),
('Droguerías Económicas', 'Av. Santos Dumont 852, Santa Cruz', '591-3-3407654', 'economicas@drogas.bo'),
('Medicorp Internacional', 'Zona El Trompillo 963, Santa Cruz', '591-3-3408901', 'internacional@medicorp.bo'),
('Farma Salud Total', 'Barrio Las Palmas 159, Santa Cruz', '591-3-3402468', 'salud@farmatotal.bo');
select * from suppliers;

-- Insertar datos de usuarios
INSERT INTO users (rol_id, name, last_name, phone_number, email) VALUES 
(1, 'Dr. Carlos', 'Mendoza', '591-7-1111111', 'carlos.mendoza@farmacia.bo'),
(1, 'Dra. Patricia', 'Vargas', '591-7-1111112', 'patricia.vargas@farmacia.bo'),
(1, 'Farm. Roberto', 'Silva', '591-7-1111113', 'roberto.silva@farmacia.bo'),
(2, 'María', 'García', '591-7-2222222', 'maria.garcia@gmail.com'),
(2, 'José', 'López', '591-7-3333333', 'jose.lopez@hotmail.com'),
(2, 'Ana', 'Rodríguez', '591-7-4444444', 'ana.rodriguez@yahoo.com'),
(2, 'Luis', 'Fernández', '591-7-5555555', 'luis.fernandez@outlook.com'),
(2, 'Carmen', 'Morales', '591-7-6666666', 'carmen.morales@gmail.com'),
(2, 'Pedro', 'Sánchez', '591-7-7777777', 'pedro.sanchez@hotmail.com'),
(2, 'Laura', 'Castillo', '591-7-8888888', 'laura.castillo@gmail.com'),
(2, 'Miguel', 'Herrera', '591-7-9999999', 'miguel.herrera@yahoo.com'),
(2, 'Sofía', 'Jiménez', '591-7-1010101', 'sofia.jimenez@outlook.com'),
(2, 'Fernando', 'Gutiérrez', '591-7-1212121', 'fernando.gutierrez@gmail.com'),
(2, 'Claudia', 'Ramírez', '591-7-1313131', 'claudia.ramirez@hotmail.com'),
(2, 'Andrés', 'Torres', '591-7-1414141', 'andres.torres@gmail.com');
select * from suppliers;

-- Insertar datos de productos farmacéuticos
INSERT INTO products (category_id, id_supplier, name, description, production_date, expiration_date, stock, price) VALUES 
(1, 1, 'Paracetamol 500mg', 'Analgésico y antipirético, 20 tabletas', '2024-01-15', '2026-01-15', 150, 25.00),
(1, 2, 'Ibuprofeno 400mg', 'Antiinflamatorio no esteroideo, 10 cápsulas', '2024-02-01', '2026-02-01', 200, 35.00),
(1, 3, 'Aspirina 325mg', 'Ácido acetilsalicílico, 30 tabletas', '2024-01-20', '2026-01-20', 180, 30.00),
(2, 4, 'Amoxicilina 500mg', 'Antibiótico betalactámico, 21 cápsulas', '2024-03-01', '2026-03-01', 80, 85.00),
(2, 5, 'Azitromicina 250mg', 'Antibiótico macrólido, 6 tabletas', '2024-02-15', '2026-02-15', 60, 120.00),
(3, 6, 'Diclofenaco 50mg', 'Antiinflamatorio tópico, gel 30g', '2024-01-10', '2025-01-10', 100, 45.00),
(4, 7, 'Enalapril 10mg', 'Inhibidor ECA para hipertensión, 30 tabletas', '2024-04-01', '2026-04-01', 90, 55.00),
(4, 8, 'Atorvastatina 20mg', 'Estatina para colesterol, 30 tabletas', '2024-03-15', '2026-03-15', 70, 95.00),
(5, 9, 'Clotrimazol 1%', 'Antifúngico tópico, crema 15g', '2024-02-20', '2025-02-20', 120, 40.00),
(6, 10, 'Omeprazol 20mg', 'Inhibidor bomba protones, 14 cápsulas', '2024-01-25', '2026-01-25', 110, 65.00),
(7, 11, 'Salbutamol 100mcg', 'Broncodilatador inhalador, 200 dosis', '2024-03-10', '2025-03-10', 85, 75.00),
(8, 12, 'Fluoxetina 20mg', 'Antidepresivo ISRS, 30 cápsulas', '2024-04-05', '2026-04-05', 50, 110.00),
(9, 13, 'Complejo B', 'Vitaminas del complejo B, 60 tabletas', '2024-02-28', '2026-02-28', 200, 35.00),
(10, 1, 'Loratadina 10mg', 'Antihistamínico, 10 tabletas', '2024-01-30', '2026-01-30', 160, 28.00),
(11, 2, 'Tobramicina 0.3%', 'Antibiótico oftálmico, gotas 5ml', '2024-03-20', '2025-03-20', 75, 85.00);

-- Insertar datos de envíos
INSERT INTO shipments (name, number_phone, transport) VALUES 
('Express Farma', '591-3-7777777', 'Motocicleta'),
('Delivery Salud', '591-3-8888888', 'Automóvil'),
('Rápido Medicamentos', '591-3-9999999', 'Furgoneta'),
('Envíos Farmacéuticos', '591-3-1010101', 'Bicicleta'),
('Courier Médico', '591-3-1111122', 'Motocicleta'),
('Logística Sanitaria', '591-3-2222233', 'Camión'),
('Distribución Rápida', '591-3-3333344', 'Automóvil'),
('Medicamentos Express', '591-3-4444455', 'Furgoneta'),
('Farma Delivery', '591-3-5555566', 'Motocicleta'),
('Salud a Domicilio', '591-3-6666677', 'Bicicleta'),
('Transporte Médico', '591-3-7777788', 'Automóvil'),
('Envíos Urgentes', '591-3-8888899', 'Motocicleta'),
('Distribuidora Salud', '591-3-9999900', 'Furgoneta');

-- Insertar datos de órdenes
INSERT INTO orders (user_id, product_id, emisor_id, address, order_date, delivery_date, state) VALUES 
(4, 1, 1, 'Calle Libertad 123, Santa Cruz', '2024-06-01 10:30:00', '2024-06-03 14:00:00', 'Entregado'),
(5, 2, 2, 'Av. Brasil 456, Santa Cruz', '2024-06-02 15:45:00', '2024-06-04 16:30:00', 'En tránsito'),
(6, 3, 3, 'Barrio Las Palmas 789, Santa Cruz', '2024-06-03 09:15:00', NULL, 'Procesando'),
(7, 4, 4, 'Zona El Trompillo 321, Santa Cruz', '2024-06-04 11:20:00', '2024-06-05 10:00:00', 'Entregado'),
(8, 5, 5, 'Av. Roca y Coronado 654, Santa Cruz', '2024-06-05 16:00:00', NULL, 'Pendiente'),
(9, 6, 6, 'Calle Warnes 147, Santa Cruz', '2024-06-06 08:30:00', '2024-06-07 12:00:00', 'Entregado'),
(10, 7, 7, 'Av. Alemana 258, Santa Cruz', '2024-06-07 14:15:00', NULL, 'Procesando'),
(11, 8, 8, 'Zona Norte 369, Santa Cruz', '2024-06-08 10:45:00', '2024-06-09 15:30:00', 'En tránsito'),
(12, 9, 9, 'Barrio Equipetrol 741, Santa Cruz', '2024-06-09 16:20:00', NULL, 'Pendiente'),
(13, 10, 10, 'Av. Monseñor Rivero 852, Santa Cruz', '2024-06-10 09:00:00', '2024-06-11 11:30:00', 'Entregado'),
(14, 11, 11, 'Calle Sucre 963, Santa Cruz', '2024-06-11 13:45:00', NULL, 'Procesando'),
(15, 12, 12, 'Av. Santos Dumont 159, Santa Cruz', '2024-06-12 11:30:00', '2024-06-13 14:15:00', 'En tránsito'),
(16, 13, 13, 'Zona El Trompillo 357, Santa Cruz', '2024-06-13 15:00:00', NULL, 'Pendiente'),
(4, 14, 1, 'Calle Libertad 123, Santa Cruz', '2024-06-14 08:45:00', '2024-06-15 10:30:00', 'Entregado'),
(5, 15, 2, 'Av. Brasil 456, Santa Cruz', '2024-06-15 17:30:00', NULL, 'Procesando');