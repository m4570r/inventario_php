# Base de Datos para la Gestión de Bodega/Almacén

## Descripción General

Esta base de datos está diseñada para la gestión completa de una bodega o almacén, permitiendo el seguimiento de procesos clave relacionados con la recepción, almacenamiento, gestión de inventarios, preparación de pedidos, control de calidad, gestión de devoluciones, distribución y despacho, mantenimiento de equipos, seguridad y documentación, ventas, pagos, devoluciones. También se incluye una gestión de usuarios con diferentes niveles de permisos.

## Estructura de la Base de Datos

La base de datos se compone de varias tablas relacionadas entre sí para capturar y organizar la información de manera eficiente. A continuación, se describen las tablas principales de la base de datos y su propósito:

## Uso de la Base de Datos

Esta base de datos es una herramienta versátil para la gestión eficiente de una bodega o almacén. Puedes adaptarla según las necesidades específicas de tu operación y personalizarla a tu gusto.

Este proyecto se encuentra bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles.

## Relaciones Entre Tablas

Las tablas de procesos están relacionadas con otras tablas a través de claves foráneas (FK) para garantizar la integridad de los datos. Por ejemplo, la tabla de "Recepción de Mercancías" está relacionada con la tabla de "Productos" para registrar qué productos se recibieron. De manera similar, la tabla de "Usuarios" está relacionada con la tabla de "Niveles de Usuario" para definir los permisos de cada usuario.

## Niveles de Usuario

La base de datos incluye un sistema de gestión de usuarios con diferentes niveles de permisos, como administradores, técnicos y usuarios asociados a procesos específicos. Esto permite controlar quién tiene acceso a qué partes del sistema y garantiza la seguridad de los datos.

## Configuración del Sistema (Opcional)

La base de datos también puede incluir una tabla de "Configuración del Sistema" para controlar el acceso a la configuración del sistema por parte de usuarios con nivel técnico. Esto garantiza que solo usuarios autorizados puedan realizar cambios en la configuración del sistema.

1. **Recepción de Mercancías**:
   - Tabla de Recepción de Mercancías (1 tabla): Para registrar información sobre la recepción de productos, como fecha, cantidad, calidad y documentos asociados.

2. **Almacenamiento**:
   - Tabla de Almacenamiento (1 tabla): Para rastrear la ubicación de almacenamiento de los productos, control de existencias y detalles de rotación de inventario.

3. **Gestión de Inventarios**:
   - Tabla de Inventarios (1 tabla): Para llevar un registro de los inventarios físicos periódicos, incluyendo detalles de existencias mínimas y máximas, así como la gestión de productos caducados.

4. **Preparación de Pedidos**:
   - Tabla de Pedidos (1 tabla): Para gestionar los pedidos, incluyendo detalles de los productos solicitados y su preparación.

5. **Control de Calidad**:
   - Tabla de Control de Calidad (1 tabla): Para registrar resultados de inspecciones y pruebas de calidad en productos almacenados.

6. **Gestión de Devoluciones**:
   - Tabla de Devoluciones (1 tabla): Para gestionar devoluciones de productos, incluyendo la razón de la devolución y su reintegración al inventario si es necesario.

7. **Distribución y Despacho**:
   - Tabla de Despacho (1 tabla): Para rastrear el despacho y distribución de productos desde la bodega a los clientes u otras ubicaciones.

8. **Mantenimiento de Equipos**:
   - Tabla de Mantenimiento de Equipos (1 tabla): Para programar y registrar el mantenimiento de equipos utilizados en la bodega, como estanterías y montacargas.

9. **Seguridad**:
   - Tabla de Seguridad (1 tabla): Para gestionar procedimientos de seguridad, incluyendo registros de incidentes y protocolos de seguridad.

10. **Reportes y Documentación**:
    - Tabla de Documentación (1 tabla): Para almacenar documentos relacionados con las operaciones de la bodega, como registros de inventario, documentos de envío y recepción, y otros documentos necesarios.

11. **Niveles de Usuario**:
    - Tabla de Niveles de Usuario (1 tabla): Para definir los niveles de usuario, incluyendo administrativo, técnico, y otros relacionados con los procesos. Esta tabla establece los permisos de acceso.

12. **Acceso a Configuración del Sistema** (Opcional):
    - Tabla de Configuración del Sistema (1 tabla): Para controlar el acceso a la configuración del sistema por parte de usuarios con nivel técnico. Esta tabla puede registrar qué usuarios tienen acceso.

## Usuarios

1. **Administrador**:
   - Nombre: [Nombre del Administrador]
   - Email: [Email del Administrador]
   - Contraseña: [Contraseña del Administrador]
   - Nivel de Permisos: Administrador

2. **Técnico** (Usuario con capacidad de eliminar registros permanentemente):
   - Nombre: [Nombre del Técnico]
   - Email: [Email del Técnico]
   - Contraseña: [Contraseña del Técnico]
   - Nivel de Permisos: Técnico

3. **Recepción de Mercancías**:
   - Nombre: [Nombre del Usuario de Recepción de Mercancías]
   - Email: [Email del Usuario de Recepción de Mercancías]
   - Contraseña: [Contraseña del Usuario de Recepción de Mercancías]
   - Nivel de Permisos: Recepción de Mercancías

4. **Almacenamiento**:
   - Nombre: [Nombre del Usuario de Almacenamiento]
   - Email: [Email del Usuario de Almacenamiento]
   - Contraseña: [Contraseña del Usuario de Almacenamiento]
   - Nivel de Permisos: Almacenamiento

5. **Gestión de Inventarios**:
   - Nombre: [Nombre del Usuario de Gestión de Inventarios]
   - Email: [Email del Usuario de Gestión de Inventarios]
   - Contraseña: [Contraseña del Usuario de Gestión de Inventarios]
   - Nivel de Permisos: Gestión de Inventarios

6. **Preparación de Pedidos**:
   - Nombre: [Nombre del Usuario de Preparación de Pedidos]
   - Email: [Email del Usuario de Preparación de Pedidos]
   - Contraseña: [Contraseña del Usuario de Preparación de Pedidos]
   - Nivel de Permisos: Preparación de Pedidos

7. **Control de Calidad**:
   - Nombre: [Nombre del Usuario de Control de Calidad]
   - Email: [Email del Usuario de Control de Calidad]
   - Contraseña: [Contraseña del Usuario de Control de Calidad]
   - Nivel de Permisos: Control de Calidad

8. **Gestión de Devoluciones**:
   - Nombre: [Nombre del Usuario de Gestión de Devoluciones]
   - Email: [Email del Usuario de Gestión de Devoluciones]
   - Contraseña: [Contraseña del Usuario de Gestión de Devoluciones]
   - Nivel de Permisos: Gestión de Devoluciones

9. **Distribución y Despacho**:
   - Nombre: [Nombre del Usuario de Distribución y Despacho]
   - Email: [Email del Usuario de Distribución y Despacho]
   - Contraseña: [Contraseña del Usuario de Distribución y Despacho]
   - Nivel de Permisos: Distribución y Despacho

10. **Mantenimiento de Equipos**:
    - Nombre: [Nombre del Usuario de Mantenimiento de Equipos]
    - Email: [Email del Usuario de Mantenimiento de Equipos]
    - Contraseña: [Contraseña del Usuario de Mantenimiento de Equipos]
    - Nivel de Permisos: Mantenimiento de Equipos

11. **Seguridad**:
    - Nombre: [Nombre del Usuario de Seguridad]
    - Email: [Email del Usuario de Seguridad]
    - Contraseña: [Contraseña del Usuario de Seguridad]
    - Nivel de Permisos: Seguridad

12. **Reportes y Documentación**:
    - Nombre: [Nombre del Usuario de Reportes y Documentación]
    - Email: [Email del Usuario de Reportes y Documentación]
    - Contraseña: [Contraseña del Usuario de Reportes y Documentación]
    - Nivel de Permisos: Reportes y Documentación



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
