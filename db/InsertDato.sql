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

-- INSERT SAMPLE DATA

-- Insert roles 
INSERT INTO rol (name, description) VALUES
('cliente', 'Usuario cliente que puede realizar compras y consultas de productos farmacéuticos'),
('administrador', 'Usuario administrador con acceso completo al sistema de gestión farmacéutica');
select * from rol;

-- Insert users 
INSERT INTO users (rol_id, name, last_name, phone_number, email) VALUES
(1, 'Carlos', 'Colque Quispe', '70123456', 'carlos.mamani@email.com'),
(1, 'María', 'Flores Condori', '75987654', 'maria.flores@email.com'),
(1, 'José', 'Vargas Torrez', '60456789', 'jose.vargas@email.com'),
(1, 'Ana', 'Choque Limachi', '78123456', 'ana.choque@email.com'),
(1, 'Luis', 'Quisbert Flores', '65789012', 'luis.quisbert@email.com'),
(1, 'Rosa', 'Apaza Gutierrez', '72345678', 'rosa.apaza@email.com'),
(1, 'Pedro', 'Morales Vega', '69876543', 'pedro.morales@email.com'),
(1, 'Silvia', 'Rojas Mendoza', '77234567', 'silvia.rojas@email.com'),
(1, 'Roberto', 'Camacho Silva', '64567890', 'roberto.camacho@email.com'),
(1, 'Elena', 'Patzi Huanca', '73456789', 'elena.patzi@email.com'),
(1, 'Miguel', 'Sandoval Cruz', '68901234', 'miguel.sandoval@email.com'),
(2, 'Dr. Fernando', 'Velasco Paz', '71234567', 'fernando.velasco@farmasoft.com'),
(2, 'Dra. Carmen', 'Salinas Montaño', '76543210', 'carmen.salinas@farmasoft.com'),
(2, 'Ing. Ricardo', 'Bernal Quiroga', '67890123', 'ricardo.bernal@farmasoft.com'),
(2, 'Lic. Patricia', 'Herrera Soto', '74567890', 'patricia.herrera@farmasoft.com');
select * from users;

-- Insert categories 
INSERT INTO categories (name, description) VALUES
('Analgésicos', 'Medicamentos para el alivio del dolor y la fiebre'),
('Antibióticos', 'Medicamentos para el tratamiento de infecciones bacterianas'),
('Vitaminas', 'Suplementos vitamínicos y minerales para la salud general'),
('Antiinflamatorios', 'Medicamentos para reducir la inflamación y el dolor'),
('Antialérgicos', 'Medicamentos para el tratamiento de alergias y reacciones alérgicas'),
('Digestivos', 'Medicamentos para problemas gastrointestinales y digestivos'),
('Respiratorios', 'Medicamentos para el tratamiento de afecciones respiratorias'),
('Cardiovasculares', 'Medicamentos para el corazón y sistema circulatorio'),
('Dermatológicos', 'Productos para el cuidado y tratamiento de la piel'),
('Oftalmológicos', 'Medicamentos y productos para el cuidado de los ojos'),
('Neurológicos', 'Medicamentos para el sistema nervioso y trastornos neurológicos'),
('Endocrinológicos', 'Medicamentos para trastornos hormonales y endocrinos'),
('Ginecológicos', 'Productos para la salud femenina y ginecológica'),
('Pediátricos', 'Medicamentos específicos para niños y bebés'),
('Geriátricos', 'Medicamentos específicos para adultos mayores');
select * from categories;

-- Insert suppliers 
INSERT INTO suppliers (name, address, number_phone, email) VALUES
('Farmacorp Bolivia', 'Av. Cristo Redentor 1245, Santa Cruz', '33421000', 'ventas@farmacorp.bo'),
('Laboratorios Bagó', 'Calle Warnes 456, La Paz', '22451200', 'contacto@bago.com.bo'),
('Droguería Inti', 'Av. Heroínas 789, Cochabamba', '44287500', 'pedidos@inti.bo'),
('Farmacia Social Boliviana', 'Calle Comercio 321, Sucre', '64523000', 'fsb@farmacia-social.bo'),
('Laboratorios Vita', 'Zona Sur, Calle 21 #456, La Paz', '22785400', 'info@vita.com.bo'),
('Distribuidora Salud', 'Av. Banzer 2do Anillo, Santa Cruz', '33654200', 'distribuidora@salud.bo'),
('Farmacéutica Andina', 'Calle España 567, Oruro', '52871300', 'ventas@andina.bo'),
('Medicamentos del Trópico', 'Av. Viedma 890, Trinidad', '34625100', 'tropical@medicamentos.bo'),
('Laboratorio Cruceño', 'Barrio Equipetrol, Santa Cruz', '33987400', 'lab@cruceno.bo'),
('Droguería Central', 'Plaza 14 de Septiembre, Cochabamba', '44156700', 'central@drogueria.bo'),
('Farmacia Comunitaria', 'Av. 6 de Agosto 234, El Alto', '22634500', 'comunitaria@farmacia.bo'),
('Distribuidora Nacional', 'Calle Potosí 678, Tarija', '66423800', 'nacional@distribuidora.bo'),
('Laboratorios Pacífico', 'Av. Costanera 123, Cobija', '38425600', 'pacifico@lab.bo'),
('Medicorp Bolivia', 'Calle Junín 345, Potosí', '62854200', 'bolivia@medicorp.bo'),
('Farmacias Unidas', 'Av. Libertador 567, Riberalta', '35427800', 'unidas@farmacias.bo');
select * from suppliers;

-- Insert products 
INSERT INTO products (category_id, id_supplier, name, description, production_date, expiration_date, stock, price) VALUES
(1, 1, 'Paracetamol 500mg', 'Analgésico y antipirético para dolor y fiebre', '2024-01-15', '2027-01-15', 500, 12.50),
(1, 2, 'Ibuprofeno 400mg', 'Antiinflamatorio no esteroideo para dolor e inflamación', '2024-02-10', '2026-12-10', 300, 18.75),
(2, 3, 'Amoxicilina 500mg', 'Antibiótico de amplio espectro para infecciones bacterianas', '2024-03-05', '2026-11-05', 200, 35.00),
(3, 4, 'Complejo B', 'Suplemento vitamínico del complejo B para el sistema nervioso', '2024-01-20', '2027-01-20', 150, 28.90),
(4, 5, 'Diclofenaco 50mg', 'Antiinflamatorio para dolor articular y muscular', '2024-02-25', '2026-10-25', 250, 22.30),
(5, 6, 'Loratadina 10mg', 'Antihistamínico para alergias y rinitis alérgica', '2024-03-12', '2027-02-12', 180, 16.40),
(6, 7, 'Omeprazol 20mg', 'Inhibidor de bomba de protones para acidez estomacal', '2024-01-30', '2026-12-30', 220, 32.80),
(7, 8, 'Salbutamol Inhalador', 'Broncodilatador para asma y problemas respiratorios', '2024-02-18', '2026-11-18', 80, 45.60),
(8, 9, 'Enalapril 10mg', 'Antihipertensivo para el control de la presión arterial', '2024-03-08', '2027-01-08', 160, 38.20),
(9, 10, 'Betametasona Crema', 'Corticoide tópico para afecciones dermatológicas', '2024-01-25', '2026-10-25', 120, 24.70),
(10, 11, 'Tobramicina Gotas', 'Antibiótico oftálmico para infecciones oculares', '2024-02-14', '2026-09-14', 90, 41.50),
(11, 12, 'Carbamazepina 200mg', 'Anticonvulsivante para epilepsia y trastornos neurológicos', '2024-03-20', '2027-03-20', 100, 52.30),
(12, 13, 'Metformina 850mg', 'Antidiabético para el control de la glucosa en sangre', '2024-01-10', '2026-11-10', 180, 29.40),
(13, 14, 'Ácido Fólico 5mg', 'Suplemento para mujeres embarazadas y salud reproductiva', '2024-02-28', '2027-02-28', 200, 15.80),
(14, 15, 'Acetaminofén Jarabe', 'Analgésico y antipirético pediátrico sabor cereza', '2024-03-15', '2026-12-15', 140, 19.60);
select * from products;

-- Insert shipments 
INSERT INTO shipments (name, number_phone, transport) VALUES
('Trans Bolivia Express', '33456789', 'Camión refrigerado'),
('Envíos Rápidos SCZ', '75123456', 'Motocicleta'),
('Logística Andina', '22789012', 'Camión estándar'),
('Delivery FarmaSoft', '70234567', 'Vehículo propio'),
('Transportes Cruz del Sur', '44567890', 'Bus de carga'),
('Mensajería Urbana', '60345678', 'Bicicleta'),
('Cargo Aéreo Bolivia', '71456789', 'Avión de carga'),
('Fluvial Beni', '38678901', 'Lancha fluvial'),
('Transporte Multimodal', '52789012', 'Combinado'),
('Express Delivery', '66890123', 'Motocicleta eléctrica'),
('Logística Tropical', '34901234', 'Camión con GPS'),
('Envíos Seguros', '62012345', 'Vehículo blindado'),
('Transporte Ecológico', '35123456', 'Bicicleta eléctrica'),
('Courier Profesional', '67234567', 'Automóvil'),
('Distribución Nacional', '73345678', 'Flota de camiones');
select * from shipments;

-- Insert orders 
INSERT INTO orders (user_id, product_id, emisor_id, address, order_date, delivery_date, state) VALUES
(1, 1, 1, 'Av. Banzer 4to Anillo, Barrio Las Palmas, Santa Cruz', '2024-06-01 10:30:00', '2024-06-02 14:00:00', 'entregado'),
(2, 3, 2, 'Calle Murillo 456, Zona Rosario, La Paz', '2024-06-02 09:15:00', '2024-06-03 16:30:00', 'entregado'),
(3, 5, 3, 'Av. América 789, Villa Tunari, Cochabamba', '2024-06-03 11:45:00', '2024-06-04 10:20:00', 'en_transito'),
(4, 2, 4, 'Calle Arenales 321, Centro, Sucre', '2024-06-04 14:20:00', NULL, 'pendiente'),
(5, 7, 5, 'Barrio Villa Adela, El Alto', '2024-06-05 08:30:00', '2024-06-06 13:45:00', 'entregado'),
(6, 4, 6, 'Av. Cristo Redentor 567, Plan 3000, Santa Cruz', '2024-06-06 16:10:00', NULL, 'procesando'),
(7, 9, 7, 'Calle Bolívar 234, Centro, Oruro', '2024-06-07 12:00:00', '2024-06-08 11:30:00', 'en_transito'),
(8, 6, 8, 'Barrio Pompeya, Trinidad', '2024-06-08 09:45:00', NULL, 'pendiente'),
(9, 11, 9, 'Av. Roca y Coronado 678, Santa Cruz', '2024-06-09 15:30:00', '2024-06-10 14:15:00', 'entregado'),
(10, 8, 10, 'Calle Bolivar 890, Quillacollo, Cochabamba', '2024-06-10 10:20:00', NULL, 'procesando'),
(11, 13, 11, 'Zona Sur, Calle 16 #123, La Paz', '2024-06-11 13:15:00', '2024-06-12 09:40:00', 'en_transito'),
(1, 12, 12, 'Av. Ballivián 345, Tarija', '2024-06-12 11:50:00', NULL, 'pendiente'),
(3, 10, 13, 'Barrio San Antonio, Potosí', '2024-06-13 14:40:00', '2024-06-14 16:20:00', 'entregado'),
(5, 14, 14, 'Av. 6 de Agosto 567, El Alto', '2024-06-14 08:25:00', NULL, 'procesando'),
(7, 15, 15, 'Calle Beni 789, Riberalta', '2024-06-15 12:35:00', '2024-06-16 15:10:00', 'en_transito');
select * from orders;
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
(4, 14, 1, 'Calle Libertad 123, Sant
