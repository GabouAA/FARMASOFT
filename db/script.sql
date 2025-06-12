--- CREATE DATABASE
CREATE DATABASE farmasoft;
\c farmasoft;
--- CREATE TABLES
-- Rol entity
create table rol (             -- Rol
    rol_id serial primary key, --- Id_Rol
    name varchar(50) not null, --- Nombre
    description text           --- Descripción
);

-- Users entity
create table users (                           --- Usuarios
    user_id serial primary key,                --- Id_Usuarios
    rol_id int not null,                       --- Id_Rol
    name varchar(100) not null,                --- Nombre
    last_name varchar(100) not null,           --- Apellido
    phone_number varchar(20),                  --- Numero_de_Celular
    email varchar(100) unique not null,        --- Correo_Electronico
    foreign key (rol_id) references rol(rol_id)
);

-- Category entity
create table categories(              -- Categorías
    category_id serial primary key,  -- Id_Categoria
    name varchar(100) not null,      -- Nombre
    description text                 -- Descripción
);

-- Supplieriers entity
create table suppliers (              -- Proveedores
    id_supplier serial primary key,   -- Id_Proveedores
    name varchar(100) not null,       -- Nombre
    address text,                     -- Dirección
    number_phone varchar(20),         -- Número_Celular
    email varchar(100)                -- Correo_Electronico
);

-- Products entity
create table products (              -- Productos
    product_id serial primary key,   -- Id_Producto
    category_id int not null,        -- Id_Categoria
    id_supplier int not null,        -- Id_Proveedores
    name varchar(100) not null,      -- Nombre
    description text,                -- Descripción
    production_date date,            -- Fecha_Elavoración
    expiration_date date,            -- Fecha_expiración
    stock int default 0,             -- Cantidad
    price decimal(10,2) not null,    -- Precio
    foreign key (category_id) references categories(category_id),
    foreign key (id_supplier) references suppliers(id_supplier)
);

-- Shipments entity
create table shipments (           -- Envios
    emisor_id serial primary key,  -- Id_Emisor
    name varchar(100) not null,    -- Nombre
    number_phone varchar(20),      -- Número_Celular
    transport varchar(100)         -- Tranporte
);

-- Orders entity
create table orders (              -- Ordenes
    order_id serial primary key,   -- Id_Orden
    user_id int not null,          -- Id_Usuario
    product_id int not null,       -- Id_Producto
    emisor_id int not null,        -- Id_Emisor
    address text not null,         -- Dirección
    order_date timestamp default current_timestamp,  -- Fecha_Pedido
    delivery_date timestamp,       -- Fecha_Envio
    state varchar(50) default 'pending',   -- Estado
    foreign key (user_id) references users(user_id),
    foreign key (product_id) references products(product_id),
    foreign key (emisor_id) references shipments(emisor_id)
);
