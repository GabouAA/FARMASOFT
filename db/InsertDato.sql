

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


