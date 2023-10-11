/*********************************************************************************************************

███████╗ ██████╗ ██╗     
██╔════╝██╔═══██╗██║                                    Archivo                     : bd.sql
███████╗██║   ██║██║                                    Nombre del Programador      : Miguel Angel Gonzalez
╚════██║██║▄▄ ██║██║                                    Lenguaje de Programación    : SQL
███████║╚██████╔╝███████╗                               Versión                     : 1.0
╚══════╝ ╚══▀▀═╝ ╚══════╝                               
░█▀▀░▀█▀░█▀▀░▀█▀░█▀▀░█▄█░█▀█░░░▀█▀░█▀█░█░█░█▀▀░█▀█░▀█▀░█▀█░█▀▄░▀█▀░█▀█
░▀▀█░░█░░▀▀█░░█░░█▀▀░█░█░█▀█░░░░█░░█░█░▀▄▀░█▀▀░█░█░░█░░█▀█░█▀▄░░█░░█░█
░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░░░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░░▀░░▀░▀░▀░▀░▀▀▀░▀▀▀

Se están agregando los siguientes niveles de usuario:
01. 'Administrador'             : Este nivel tiene acceso completo al sistema y puede realizar tareas de administración, configuración y gestión de usuarios.
02. 'Técnico'                   : Este nivel pueden realizar tareas técnicas y de mantenimiento en el sistema, pero pueden tener restricciones en cuanto a la configuración global.
03. 'Recepción de Mercancías'   : Este nivel está relacionado con la recepción y registro de productos o mercancías que llegan al almacén.
04. 'Almacenamiento'            : Este nivel se encargan del almacenamiento y organización de productos en el almacén.
05. 'Gestión de Inventarios'    : Este nivel se encarga de gestionar y supervisar el inventario de productos, incluyendo el seguimiento de las existencias.
06. 'Preparación de Pedidos'    : Este nivel se dedican a preparar pedidos con los productos almacenados para su envío.
07. 'Control de Calidad'        : Este nivel se encarga de garantizar la calidad de los productos antes de ser despachados.
08. 'Gestión de Devoluciones'   : Este nivel gestionan devoluciones de productos por parte de los clientes.
09. 'Distribución y Despacho'   : Este nivel se encarga de la distribución y despacho de productos a los clientes.
10. 'Mantenimiento de Equipos'  : Este nivel están involucrados en el mantenimiento y reparación de equipos utilizados en el proceso.
11. 'Seguridad'                 : Este nivel se dedica a la seguridad del sistema y a la gestión de incidentes de seguridad.
12. 'Reportes y Documentación'  : Los usuarios de este nivel se encargan de generar informes y documentación relacionados con el funcionamiento del sistema y las operaciones.

Cada valor se inserta en la columna 'descripcion' de la tabla 'niveles_de_usuario'.
Estos registros representan los diferentes roles o niveles de acceso disponibles en el sistema.



*/

-- Crear la base de datos 'inventario_app'
CREATE DATABASE IF NOT EXISTS inventario_php;

-- Usar la base de datos 'inventario_app'
USE inventario_php;

-- Crear la tabla 'niveles_de_usuario'
CREATE TABLE IF NOT EXISTS niveles_de_usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

-- Poblar la tabla 'niveles_de_usuario' con los niveles de usuario
INSERT INTO niveles_de_usuario (descripcion) VALUES
    ('Administrador'),
    ('Técnico'),
    ('Recepción de Mercancías'),
    ('Almacenamiento'),
    ('Gestión de Inventarios'),
    ('Preparación de Pedidos'),
    ('Control de Calidad'),
    ('Gestión de Devoluciones'),
    ('Distribución y Despacho'),
    ('Mantenimiento de Equipos'),
    ('Seguridad'),
    ('Reportes y Documentación');

-- Crear la tabla 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    usuario VARCHAR(50),
    telefono VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);

-- Crear la tabla 'acceso_a_configuracion_del_sistema' (opcional)
CREATE TABLE IF NOT EXISTS acceso_a_configuracion_del_sistema (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    tiene_acceso BOOLEAN,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'tokens'
CREATE TABLE IF NOT EXISTS tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    token VARCHAR(255) NOT NULL,
    fecha_expiracion TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'productos'
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    ubicacion VARCHAR(50) NOT NULL,
    id_historial INT
);

-- Crear la tabla 'historial_productos'
CREATE TABLE IF NOT EXISTS historial_productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    tipo_evento ENUM('Ingreso', 'Despacho') NOT NULL,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario_ingreso INT,
    id_usuario_despacho INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_usuario_ingreso) REFERENCES usuarios(id),
    FOREIGN KEY (id_usuario_despacho) REFERENCES usuarios(id)
);

-- Crear la tabla 'Recepción de Mercancías'
CREATE TABLE IF NOT EXISTS recepcion_de_mercancias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_recepcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidad INT NOT NULL,
    calidad VARCHAR(255) NOT NULL,
    documentos VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(50) NOT NULL,
    id_usuario INT,
    id_producto INT, -- Relación con la tabla productos
    id_historial INT, -- Relación con la tabla historial_productos
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id)
);

-- Crear la tabla 'Almacenamiento'
CREATE TABLE IF NOT EXISTS almacenamiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    ubicacion_actual VARCHAR(50) NOT NULL,
    fecha_almacenamiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Gestión de Inventarios'
CREATE TABLE IF NOT EXISTS gestion_de_inventarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inventario TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    existencias_minimas INT NOT NULL,
    existencias_maximas INT NOT NULL,
    productos_caducados BOOLEAN NOT NULL,
    id_producto INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'clientes'
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(15),
    email VARCHAR(100),
    direccion VARCHAR(255),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'pedidos'
CREATE TABLE IF NOT EXISTS pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_pedido VARCHAR(50) NOT NULL,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_entrega_prevista DATE,
    id_cliente INT,
    direccion_entrega VARCHAR(255),
    estado_pedido ENUM('Pendiente', 'En proceso', 'Entregado', 'Cancelado') NOT NULL,
    total_pedido DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id), -- Referencia al cliente que hizo el pedido
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) -- Referencia al usuario que gestionó el pedido
);

-- Crear la tabla 'Preparación de Pedidos'
CREATE TABLE IF NOT EXISTS preparacion_de_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Control de Calidad'
CREATE TABLE IF NOT EXISTS control_de_calidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_control TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resultado VARCHAR(255) NOT NULL,
    id_producto INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Gestión de Devoluciones'
CREATE TABLE IF NOT EXISTS gestion_de_devoluciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_devolucion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    razon VARCHAR(255) NOT NULL,
    reintegracion BOOLEAN NOT NULL,
    id_producto_devuelto INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_producto_devuelto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Distribución y Despacho'
CREATE TABLE IF NOT EXISTS distribucion_y_despacho (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_despacho TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    destino VARCHAR(255) NOT NULL,
    id_producto_despachado INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    FOREIGN KEY (id_producto_despachado) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Seguridad'
CREATE TABLE IF NOT EXISTS seguridad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_registro_incidente TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tipo_incidente VARCHAR(255) NOT NULL,
    descripcion_incidente TEXT NOT NULL,
    id_usuario_seguridad INT,
    FOREIGN KEY (id_usuario_seguridad) REFERENCES usuarios(id)
);

-- Crear la tabla 'equipos' (asegúrate de personalizar esta estructura según tus necesidades)
CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    descripcion_equipo TEXT,
    fecha_adquisicion DATE,
    ubicacion_actual VARCHAR(50),
    estado ENUM('Operativo', 'En mantenimiento', 'Fuera de servicio') NOT NULL
);

-- Crear la tabla 'costos' con relación a equipos o activos
CREATE TABLE IF NOT EXISTS costos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,
    id_equipo INT, -- Agregar una columna para la relación con equipos o activos
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_equipo) REFERENCES equipos(id) -- Clave foránea para vincular con equipos o activos
);

-- Crear la tabla 'Reportes y Documentación'
CREATE TABLE IF NOT EXISTS reportes_y_documentacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(255) NOT NULL,
    descripcion_documento TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario_reportes INT,
    FOREIGN KEY (id_usuario_reportes) REFERENCES usuarios(id)
);

-- Crear la tabla 'proveedores'
CREATE TABLE IF NOT EXISTS proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(15),
    email VARCHAR(100),
    direccion VARCHAR(255),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'compras'
CREATE TABLE IF NOT EXISTS compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_proveedor INT,
    total_compra DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);



-- Crear la tabla 'ventas'
CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crea la tabla 'Facturas'
CREATE TABLE IF NOT EXISTS factura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_factura VARCHAR(50) NOT NULL,
    fecha_emision DATE NOT NULL,
    descripcion TEXT,
    monto_total DECIMAL(10, 2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Crea la tabla 'Pagos'
CREATE TABLE IF NOT EXISTS pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_pago VARCHAR(50) NOT NULL,
    fecha_pago DATE NOT NULL,
    monto_pagado DECIMAL(10, 2) NOT NULL,
    id_factura INT,
    FOREIGN KEY (id_factura) REFERENCES factura(id)
);

-- Crea la tabla 'Estado de Cuenta'
CREATE TABLE IF NOT EXISTS estado_de_cuenta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_actualizacion DATE NOT NULL,
    saldo_pendiente DECIMAL(10, 2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Crea la tabla 'Historial de Pagos'
CREATE TABLE IF NOT EXISTS historial_de_pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pago DATE NOT NULL,
    monto_pagado DECIMAL(10, 2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Crea la tabla 'Flujo de efectivo'
CREATE TABLE IF NOT EXISTS flujo_de_efectivo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_transaccion DATE NOT NULL,
    tipo_transaccion VARCHAR(50) NOT NULL,
    descripcion TEXT,
    monto DECIMAL(10, 2) NOT NULL
);

-- Poblar la tabla 'usuarios' con ejemplos
INSERT INTO usuarios (nombre, email, contrasena, nivel_permisos) VALUES
    ('Admin', 'admin@example.com', '1234', 1),
    ('Técnico 1', 'tecnico1@example.com', '12', 2),
    ('Recepción 1', 'recepcion1@example.com', '123', 3),
    ('Almacenamiento 1', 'almacenamiento1@example.com', '123', 4),
    ('Gestión de Inventarios 1', 'inventarios1@example.com', '123', 5),
    ('Preparación de Pedidos 1', 'pedidos1@example.com', '123', 6),
    ('Control de Calidad 1', 'calidad1@example.com', '123', 7),
    ('Gestión de Devoluciones 1', 'devoluciones1@example.com', '123', 8),
    ('Distribución y Despacho 1', 'distribucion1@example.com', '123', 9),
    ('Mantenimiento de Equipos 1', 'mantenimiento1@example.com', '123', 10),
    ('Seguridad 1', 'seguridad1@example.com', '123', 11),
    ('Reportes y Documentación 1', 'reportes1@example.com', '123', 12);

-- Poblar la tabla 'tokens' con ejemplos de tokens Bearer
INSERT INTO tokens (id_usuario, token, fecha_expiracion) VALUES
    (1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6IkFkbWluaXN0cmFkb3IiLCJpYXQiOjE2MzEyNjA0NjAsImV4cCI6MTYzMTI2MzA2MH0.0JjuLvZUwFW7P8Gg6gktFSDrrT_qil6KAK8F6zNS9w', '2023-12-31 23:59:59'),
    (2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyIiwibmFtZSI6IkVtcGxleW1vIDEiLCJpYXQiOjE2MzEyNjA1MzAsImV4cCI6MTYzMTI2MzEzMH0.VwVLoXz8GOe_0SuvVgqzB_qzJhjwIeSO-PeY4wU8WVo', '2023-12-31 23:59:59'),
    (3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzIiwibmFtZSI6IkVtcGxleW1vIDIiLCJpYXQiOjE2MzEyNjA1NjAsImV4cCI6MTYzMTI2MzE2MH0.1sMGiRbkSlLQmZcMQa33AtsVKhHcbFmlkZZHrLE-UXo', '2023-12-31 23:59:59');

-- Poblar la tabla 'productos' con ejemplos
INSERT INTO productos (nombre_producto, cantidad, ubicacion, id_usuario_ingreso, id_usuario_despacho, fecha_ingreso, fecha_despacho, id_historial) VALUES
    ('Producto 4', 200, 'Ubicación D', 4, 0, '2023-01-01 10:00:00', NULL, 4),
    ('Producto 5', 30, 'Ubicación E', 5, 0, '2023-01-02 14:30:00', NULL, 5),
    ('Producto 6', 60, 'Ubicación F', 6, 0, '2023-01-03 09:15:00', NULL, 6);

-- Poblar la tabla 'Historial Productos' con ejemplos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_ingreso, id_usuario_despacho) VALUES
    (4, 'Ingreso', '2023-01-01 10:00:00', 4, 0),
    (5, 'Ingreso', '2023-01-02 14:30:00', 5, 0),
    (6, 'Ingreso', '2023-01-03 09:15:00', 6, 0);

-- Poblar la tabla 'recepcion_de_mercancias' con ejemplos
INSERT INTO recepcion_de_mercancias (fecha_recepcion, cantidad, calidad, documentos, ubicacion, id_usuario, id_producto, id_historial) VALUES
    ('2023-01-01 10:00:00', 200, 'Buena', 'Factura 123', 'Ubicación D', 4, 4, 4),
    ('2023-01-02 14:30:00', 30, 'Regular', 'Factura 456', 'Ubicación E', 5, 5, 5),
    ('2023-01-03 09:15:00', 60, 'Buena', 'Factura 789', 'Ubicación F', 6, 6, 6);

-- Poblar la tabla 'almacenamiento' con ejemplos
INSERT INTO almacenamiento (id_producto, ubicacion_actual, fecha_almacenamiento, id_historial, id_usuario) VALUES
    (4, 'Ubicación D', '2023-01-01 10:00:00', 4, 4),
    (5, 'Ubicación E', '2023-01-02 14:30:00', 5, 5),
    (6, 'Ubicación F', '2023-01-03 09:15:00', 6, 6);

-- Poblar la tabla 'gestion_de_inventarios' con ejemplos
INSERT INTO gestion_de_inventarios (fecha_inventario, existencias_minimas, existencias_maximas, productos_caducados, id_producto, id_historial, id_usuario) VALUES
    ('2023-01-01 10:00:00', 100, 300, 0, 4, 4, 4),
    ('2023-01-02 14:30:00', 20, 50, 0, 5, 5, 5),
    ('2023-01-03 09:15:00', 40, 80, 0, 6, 6, 6);

-- Poblar la tabla 'preparacion_de_pedidos' con ejemplos
INSERT INTO preparacion_de_pedidos (id_pedido, id_producto, cantidad, id_historial, id_usuario) VALUES
    (1, 4, 50, 4, 4),
    (2, 5, 10, 5, 5),
    (3, 6, 25, 6, 6);

-- Poblar la tabla 'control_de_calidad' con ejemplos
INSERT INTO control_de_calidad (fecha_control, resultado, id_producto, id_historial, id_usuario) VALUES
    ('2023-01-01 10:00:00', 'Aprobado', 4, 4, 4),
    ('2023-01-02 14:30:00', 'Rechazado', 5, 5, 5),
    ('2023-01-03 09:15:00', 'Aprobado', 6, 6, 6);

-- Poblar la tabla 'gestion_de_devoluciones' con ejemplos
INSERT INTO gestion_de_devoluciones (fecha_devolucion, razon, reintegracion, id_producto_devuelto, id_historial, id_usuario) VALUES
    ('2023-01-01 10:00:00', 'Producto dañado', 1, 4, 4, 4),
    ('2023-01-02 14:30:00', 'Pedido incorrecto', 0, 5, 5, 5),
    ('2023-01-03 09:15:00', 'Producto dañado', 1, 6, 6, 6);

-- Poblar la tabla 'distribucion_y_despacho' con ejemplos
INSERT INTO distribucion_y_despacho (fecha_despacho, destino, id_producto_despachado, id_historial, id_usuario) VALUES
    ('2023-01-01 10:00:00', 'Cliente A', 4, 4, 4),
    ('2023-01-02 14:30:00', 'Cliente B', 5, 5, 5),
    ('2023-01-03 09:15:00', 'Cliente C', 6, 6, 6);

-- Poblar la tabla 'Seguridad' con ejemplos
INSERT INTO seguridad (fecha_registro_incidente, tipo_incidente, descripcion_incidente, id_usuario_seguridad) VALUES
    ('2023-01-01 10:00:00', 'Incidente 1', 'Descripción del incidente 1', 11),
    ('2023-01-02 14:30:00', 'Incidente 2', 'Descripción del incidente 2', 12),
    ('2023-01-03 09:15:00', 'Incidente 3', 'Descripción del incidente 3', 11);

-- Poblar la tabla 'costos' con ejemplos
INSERT INTO costos (descripcion, monto, id_usuario, id_equipo) VALUES
    ('Costo 1', 500.00, 1, 1),
    ('Costo 2', 750.50, 2, 2),
    ('Costo 3', 1200.75, 3, 3);

-- Poblar la tabla 'Reportes y Documentación' con ejemplos
INSERT INTO reportes_y_documentacion (tipo_documento, descripcion_documento, id_usuario_reportes) VALUES
    ('Informe 1', 'Descripción del informe 1', 12),
    ('Informe 2', 'Descripción del informe 2', 11),
    ('Reporte 3', 'Descripción del reporte 3', 12);

-- Poblar la tabla 'proveedores' con ejemplos
INSERT INTO proveedores (nombre, contacto, telefono, email, direccion, id_usuario) VALUES
    ('Proveedor 1', 'Contacto 1', '123-456-7890', 'proveedor1@example.com', 'Dirección 1', 1),
    ('Proveedor 2', 'Contacto 2', '987-654-3210', 'proveedor2@example.com', 'Dirección 2', 2),
    ('Proveedor 3', 'Contacto 3', '555-123-4567', 'proveedor3@example.com', 'Dirección 3', 3);

-- Poblar la tabla 'compras' con ejemplos
INSERT INTO compras (id_proveedor, total_compra, id_usuario) VALUES
    (1, 500.00, 1),
    (2, 750.50, 2),
    (3, 1200.75, 3);

-- Poblar la tabla 'clientes' con ejemplos
INSERT INTO clientes (nombre, contacto, telefono, email, direccion, id_usuario) VALUES
    ('Cliente 1', 'Contacto 1', '111-222-3333', 'cliente1@example.com', 'Dirección 1', 1),
    ('Cliente 2', 'Contacto 2', '444-555-6666', 'cliente2@example.com', 'Dirección 2', 2),
    ('Cliente 3', 'Contacto 3', '777-888-9999', 'cliente3@example.com', 'Dirección 3', 3);

-- Poblar la tabla 'ventas' con ejemplos
INSERT INTO ventas (id_producto, cantidad, precio_unitario, total, id_usuario) VALUES
    (1, 10, 25.00, 250.00, 1),
    (2, 5, 50.50, 252.50, 2),
    (3, 8, 75.75, 606.00, 3);

-- Poblar la tabla 'Facturas' con ejemplos
INSERT INTO factura (numero_factura, fecha_emision, descripcion, monto_total, id_cliente) VALUES
    ('FAC-001', '2023-01-01', 'Factura de Cliente 1', 250.00, 1),
    ('FAC-002', '2023-01-02', 'Factura de Cliente 2', 252.50, 2),
    ('FAC-003', '2023-01-03', 'Factura de Cliente 3', 606.00, 3);

-- Poblar la tabla 'Pagos' con ejemplos
INSERT INTO pagos (numero_pago, fecha_pago, monto_pagado, id_factura) VALUES
    ('PAGO-001', '2023-01-01', 250.00, 1),
    ('PAGO-002', '2023-01-02', 252.50, 2),
    ('PAGO-003', '2023-01-03', 606.00, 3);

-- Poblar la tabla 'Estado de Cuenta' con ejemplos
INSERT INTO estado_de_cuenta (fecha_actualizacion, saldo_pendiente, id_cliente) VALUES
    ('2023-01-01', 0.00, 1),
    ('2023-01-02', 0.00, 2),
    ('2023-01-03', 0.00, 3);

-- Poblar la tabla 'Historial de Pagos' con ejemplos
INSERT INTO historial_de_pagos (fecha_pago, monto_pagado, id_cliente) VALUES
    ('2023-01-01', 250.00, 1),
    ('2023-01-02', 252.50, 2),
    ('2023-01-03', 606.00, 3);

-- Poblar la tabla 'Flujo de efectivo' con ejemplos
INSERT INTO flujo_de_efectivo (fecha_transaccion, tipo_transaccion, descripcion, monto) VALUES
    ('2023-01-01', 'Ingreso', 'Ingreso de efectivo 1', 500.00),
    ('2023-01-02', 'Egreso', 'Egreso de efectivo 2', -250.50),
    ('2023-01-03', 'Ingreso', 'Ingreso de efectivo 3', 1000.75);


-- Informe de Existencias Actuales
   SELECT p.nombre_producto, p.cantidad, p.ubicacion
   FROM productos p
   WHERE p.cantidad > 0;

-- Historial de Movimientos de Productos
   SELECT hp.tipo_evento, hp.fecha_hora, u.nombre AS usuario
   FROM historial_productos hp
   JOIN usuarios u ON hp.id_usuario_ingreso = u.id
   WHERE hp.id_producto = {ID_DEL_PRODUCTO};
   

--Productos que Necesitan Reabastecimiento
   SELECT p.nombre_producto, p.cantidad
   FROM productos p
   WHERE p.cantidad < p.existencias_minimas;

-- Informe de Compras por Proveedor
   SELECT c.fecha_compra, p.nombre AS proveedor, c.total_compra
   FROM compras c
   JOIN proveedores p ON c.id_proveedor = p.id
   WHERE p.id = {ID_DEL_PROVEEDOR};
   
-- Informe de Ventas por Cliente
   SELECT v.fecha_venta, c.nombre AS cliente, v.total
   FROM ventas v
   JOIN clientes c ON v.id_cliente = c.id
   WHERE c.id = {ID_DEL_CLIENTE};


-- Historial de Pagos por Cliente
   SELECT p.numero_pago, p.fecha_pago, p.monto_pagado
   FROM pagos p
   WHERE p.id_cliente = {ID_DEL_CLIENTE};

-- Estado de Cuenta de Clientes
   SELECT c.nombre AS cliente, ec.fecha_actualizacion, ec.saldo_pendiente
   FROM estado_de_cuenta ec
   JOIN clientes c ON ec.id_cliente = c.id;

-- Informe de Flujo de Efectivo
   SELECT fecha_transaccion, tipo_transaccion, descripcion, monto
   FROM flujo_de_efectivo;


-- Incidentes de Seguridad
   SELECT fecha_registro_incidente, tipo_incidente, descripcion_incidente, u.nombre AS usuario
   FROM seguridad s
   JOIN usuarios u ON s.id_usuario_seguridad = u.id;


-- Informe de Costos por Equipo
    SELECT e.nombre AS equipo, c.descripcion, c.monto
    FROM costos c
    JOIN equipos e ON c.id_equipo = e.id;

-- Productos caducados o vencidos
    SELECT p.nombre_producto, p.fecha_vencimiento
    FROM productos p
    WHERE p.productos_caducados = 1;


-- Productos en preparación de pedidos
    SELECT pp.id_pedido, p.nombre_producto, pp.cantidad
    FROM preparacion_de_pedidos pp
    JOIN productos p ON pp.id_producto = p.id;


-- Control de calidad por producto
    SELECT cc.fecha_control, cc.resultado, u.nombre AS usuario
    FROM control_de_calidad cc
    JOIN usuarios u ON cc.id_usuario = u.id
    WHERE cc.id_producto = {ID_DEL_PRODUCTO};

-- Devoluciones de productos
    SELECT gd.fecha_devolucion, gd.razon, gd.reintegracion, p.nombre_producto
    FROM gestion_de_devoluciones gd
    JOIN productos p ON gd.id_producto_devuelto = p.id;

-- Despacho de productos por destino
    SELECT dd.destino, COUNT(*) AS cantidad_despachada
    FROM distribucion_y_despacho dd
    GROUP BY dd.destino;

-- Total de ventas por producto
    SELECT p.nombre_producto, SUM(v.cantidad) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    GROUP BY p.nombre_producto;

-- Informe de Facturas Emitidas
    SELECT f.numero_factura, f.fecha_emision, SUM(f.monto_total) AS total_facturado
    FROM factura f
    GROUP BY f.numero_factura, f.fecha_emision;

-- Informe de Pagos Realizados
    SELECT p.numero_pago, p.fecha_pago, SUM(p.monto_pagado) AS total_pagado
    FROM pagos p
    GROUP BY p.numero_pago, p.fecha_pago;

-- Resumen de Flujo de Efectivo por Tipo de Transacción
    SELECT tipo_transaccion, SUM(monto) AS total_por_tipo
    FROM flujo_de_efectivo
    GROUP BY tipo_transaccion;




-- Historial de Compras por Producto
   SELECT c.fecha_compra, c.cantidad_comprada
   FROM compras c
   WHERE c.id_producto = {ID_DEL_PRODUCTO};

-- Productos en Pedidos Pendientes
   SELECT pdp.id_pedido, p.nombre_producto, pdp.cantidad
   FROM productos_en_pedidos pdp
   JOIN productos p ON pdp.id_producto = p.id
   WHERE pdp.estado = 'Pendiente';

-- Informe de Movimientos de Inventario
   SELECT m.tipo_movimiento, m.fecha_movimiento, p.nombre_producto, m.cantidad
   FROM movimientos_de_inventario m
   JOIN productos p ON m.id_producto = p.id;

-- Clientes con Deudas Pendientes
   SELECT c.nombre AS cliente, ec.saldo_pendiente
   FROM estado_de_cuenta ec
   JOIN clientes c ON ec.id_cliente = c.id
   WHERE ec.saldo_pendiente > 0;

-- Resumen de Ventas por Vendedor
   SELECT u.nombre AS vendedor, SUM(v.total) AS total_ventas
   FROM ventas v
   JOIN usuarios u ON v.id_vendedor = u.id
   GROUP BY u.nombre;

-- Informe de Despacho por Vehículo
   SELECT dv.fecha_despacho, v.nombre AS vehiculo, p.nombre_producto, dv.cantidad_despachada
   FROM despacho_de_productos dv
   JOIN vehiculos v ON dv.id_vehiculo = v.id
   JOIN productos p ON dv.id_producto = p.id;


-- Informe de Utilidad por Producto
   SELECT p.nombre_producto, (v.precio_venta - c.precio_compra) AS utilidad
   FROM productos p
   JOIN ventas v ON p.id = v.id_producto
   JOIN compras c ON p.id = c.id_producto;

-- Productos más vendidos
   SELECT p.nombre_producto, SUM(v.cantidad) AS total_vendido
   FROM ventas v
   JOIN productos p ON v.id_producto = p.id
   GROUP BY p.nombre_producto
   ORDER BY total_vendido DESC;






-- Informe de Devoluciones por Cliente
   SELECT d.fecha_devolucion, d.motivo, p.nombre_producto
   FROM devoluciones d
   JOIN productos p ON d.id_producto_devuelto = p.id
   WHERE d.id_cliente = {ID_DEL_CLIENTE};


-- Ventas por Categoría de Producto
    SELECT c.nombre_categoria, SUM(v.cantidad) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    JOIN categorias c ON p.id_categoria = c.id
    GROUP BY c.nombre_categoria;

-- Informe de Pedidos Pendientes
    SELECT pp.id_pedido, p.nombre_producto, pp.cantidad, pp.fecha_entrega_prevista
    FROM pedidos_pendientes pp
    JOIN productos p ON pp.id_producto = p.id;


-- Informe de Ingresos por Período
    SELECT DATE_FORMAT(fecha_transaccion, '%Y-%m') AS mes, tipo_transaccion, SUM(monto) AS total_por_tipo
    FROM flujo_de_efectivo
    WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31'
    GROUP BY mes, tipo_transaccion;

-- Informe de Clientes más Deudores
    SELECT c.nombre AS cliente, ec.saldo_pendiente
    FROM estado_de_cuenta ec
    JOIN clientes c ON ec.id_cliente = c.id
    ORDER BY ec.saldo_pendiente DESC;

-- Productos por Proveedor
    SELECT p.nombre_producto, p.cantidad
    FROM productos p
    JOIN proveedores pr ON p.id_proveedor = pr.id
    WHERE pr.id = {ID_DEL_PROVEEDOR};

-- Informe de Gastos por Departamento
    SELECT d.nombre AS departamento, SUM(c.monto) AS gasto_total
    FROM costos c
    JOIN departamentos d ON c.id_departamento = d.id
    GROUP BY d.nombre;


-- Productos más Vendidos por Cliente
    SELECT c.nombre AS cliente, p.nombre_producto, SUM(v.cantidad) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    JOIN clientes c ON v.id_cliente = c.id
    WHERE c.id = {ID_DEL_CLIENTE}
    GROUP BY c.nombre, p.nombre_producto
    ORDER BY total_vendido DESC;





-- Ventas por Tipo de Producto

SELECT c.nombre_tipo_producto, SUM(v.cantidad) AS total_vendido
FROM ventas v
JOIN productos p ON v.id_producto = p.id
JOIN tipos_productos c ON p.id_tipo_producto = c.id
GROUP BY c.nombre_tipo_producto;


-- Informe de Inventario por Categoría
SELECT c.nombre_categoria, SUM(p.cantidad) AS total_existencias
FROM productos p
JOIN categorias c ON p.id_categoria = c.id
GROUP BY c.nombre_categoria;


-- Total de Compras por Proveedor
SELECT p.nombre AS proveedor, SUM(c.total_compra) AS total_compras
FROM compras c
JOIN proveedores p ON c.id_proveedor = p.id
GROUP BY p.nombre;

-- Top 10 de Clientes con Más Compras
SELECT c.nombre AS cliente, COUNT(*) AS total_compras
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id
GROUP BY c.nombre
ORDER BY total_compras DESC
LIMIT 10;


-- Detalles de Pedidos por Cliente
SELECT c.nombre AS cliente, pp.id_pedido, p.nombre_producto, pp.cantidad, pp.fecha_entrega_prevista
FROM pedidos_pendientes pp
JOIN productos p ON pp.id_producto = p.id
JOIN clientes c ON pp.id_cliente = c.id;

-- Ventas por Mes y Año
SELECT DATE_FORMAT(v.fecha_venta, '%Y-%m') AS mes, SUM(v.total) AS total_ventas
FROM ventas v
GROUP BY mes
ORDER BY mes;


-- Productos con Mayor Margen de Ganancia
SELECT p.nombre_producto, (v.precio_venta - c.precio_compra) AS margen_ganancia
FROM productos p
JOIN ventas v ON p.id = v.id_producto
JOIN compras c ON p.id = c.id_producto
ORDER BY margen_ganancia DESC
LIMIT 10;


-- Productos con Mayor Rotación
SELECT p.nombre_producto, SUM(v.cantidad) AS total_vendido, p.cantidad AS existencias_iniciales
FROM ventas v
JOIN productos p ON v.id_producto = p.id
GROUP BY p.nombre_producto, existencias_iniciales
ORDER BY (SUM(v.cantidad) / p.cantidad) DESC
LIMIT 10;


-- Informe de Productos por Ubicación
SELECT ubicacion, COUNT(*) AS cantidad_productos
FROM productos
GROUP BY ubicacion;

-- Productos por Tipo de Producto
SELECT tp.nombre_tipo_producto, COUNT(*) AS cantidad_productos
FROM productos p
JOIN tipos_productos tp ON p.id_tipo_producto = tp.id
GROUP BY tp.nombre_tipo_producto;

-- Consulta para obtener todos los productos en el inventario
    SELECT * FROM productos;

-- Consulta para obtener el historial de eventos de un producto específico
    SELECT * FROM historial_productos WHERE id_producto = 1;

-- Consulta para obtener la lista de usuarios con su nivel de acceso
    SELECT u.nombre, n.descripcion FROM usuarios u
    JOIN niveles_de_usuario n ON u.id_nivel = n.id;
-- Consulta para obtener la cantidad total de productos en el inventario
    SELECT SUM(cantidad) AS cantidad_total FROM productos;

-- Consulta para obtener los productos que están por debajo de un cierto nivel de stock
    SELECT * FROM productos WHERE cantidad < 10;

-- Consulta para obtener los eventos de recepción de mercancías en un rango de fechas
    SELECT * FROM recepcion_de_mercancias
    WHERE fecha_recepcion BETWEEN '2023-01-01' AND '2023-02-28';

-- Consulta para obtener el nombre del usuario que realizó el último despacho de un producto
    SELECT u.nombre FROM usuarios u
    JOIN historial_productos h ON u.id = h.id_usuario_despacho
    WHERE h.id_producto = 1
    ORDER BY h.fecha_hora DESC
    LIMIT 1;


-- Consulta para obtener la ubicación actual de un producto específico
    SELECT ubicacion_actual FROM almacenamiento
    WHERE id_producto = 1
    ORDER BY fecha_almacenamiento DESC
    LIMIT 1;


-- Consulta para obtener los productos que han experimentado cambios en su ubicación en un rango de fechas
    SELECT DISTINCT a.id_producto, p.nombre_producto, a.ubicacion_actual, a.fecha_almacenamiento
    FROM almacenamiento a
    JOIN productos p ON a.id_producto = p.id
    WHERE fecha_almacenamiento BETWEEN '2023-01-01' AND '2023-02-28';


-- Consulta para obtener la cantidad de productos por ubicación actual
    SELECT ubicacion_actual, SUM(cantidad) AS cantidad_total
    FROM productos
    GROUP BY ubicacion_actual;


-- Consulta para obtener la lista de usuarios con acceso a la configuración del sistema (si aplica)
    SELECT u.nombre, c.tiene_acceso
    FROM usuarios u
    LEFT JOIN acceso_a_configuracion_del_sistema c ON u.id = c.id_usuario;

-- Consulta para obtener el historial completo de eventos de un producto específico (ingresos y despachos)
    SELECT * FROM historial_productos WHERE id_producto = 1
    ORDER BY fecha_hora;
