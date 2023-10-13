/*********************************************************************************************************

███████╗ ██████╗ ██╗     
██╔════╝██╔═══██╗██║                                    
███████╗██║   ██║██║                                    
╚════██║██║▄▄ ██║██║                                    
███████║╚██████╔╝███████╗                               
╚══════╝ ╚══▀▀═╝ ╚══════╝                               
░█▀▀░▀█▀░█▀▀░▀█▀░█▀▀░█▄█░█▀█░░░▀█▀░█▀█░█░█░█▀▀░█▀█░▀█▀░█▀█░█▀▄░▀█▀░█▀█
░▀▀█░░█░░▀▀█░░█░░█▀▀░█░█░█▀█░░░░█░░█░█░▀▄▀░█▀▀░█░█░░█░░█▀█░█▀▄░░█░░█░█
░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░░░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░░▀░░▀░▀░▀░▀░▀▀▀░▀▀▀

Archivo                     : bd.sql
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : SQL
Versión                     : 1.0

Este conjunto de scripts crea una base de datos que podría utilizarse para gestionar un sistema de inventario, ventas, seguimiento de pedidos, 
control de calidad, seguimiento financiero y más. Cada tabla almacena datos específicos relacionados con su función, y las relaciones entre 
las tablas permiten un seguimiento completo de los eventos y actividades en el sistema. instrucciones SQL utilizadas en este script tiene 
diferentes niveles el primer nivel se usa para crear una base de datos y sus tablas, así como definir las relaciones entre ellas. 

A continuación, describiré la base de datos completa

1. Usuarios y Permisos:
   - La tabla `usuarios` almacena información sobre los usuarios, incluyendo su nombre, apellido, nombre de usuario, contraseña, 
   dirección de correo electrónico y nivel de permisos. Los usuarios pueden tener diferentes roles en el sistema.

2. Niveles de Usuario:
   - La tabla `niveles_de_usuario` define los diferentes niveles de permisos o roles que pueden asignarse a los usuarios. Por ejemplo, 
   roles como "Administrador", "Técnico" y otros.

3. Acceso a Configuración del Sistema (Opcional):
   - La tabla `acceso_a_configuracion_del_sistema` se usa para gestionar el acceso de los usuarios a la configuración del sistema. Registra 
   si un usuario tiene acceso a la configuración.

4. Tokens de Seguridad:
   - La tabla `tokens` almacena tokens de seguridad asociados con usuarios. Esto puede ser útil para autenticación y autorización.

5. Inventario de Productos:
   - La tabla `productos` contiene información detallada sobre los productos, incluyendo su nombre, cantidad en stock, ubicación, historial de 
   movimientos y fechas de ingreso y despacho.

6. Historial de Productos:
   - La tabla `historial_productos` registra eventos de ingreso y despacho de productos, junto con detalles sobre quién realizó el evento.

7. Recepción de Mercancías:
   - La tabla `recepcion_de_mercancias` se utiliza para registrar eventos de recepción de mercancías, incluyendo la fecha, cantidad, calidad, 
   documentos y otros detalles relacionados con la recepción.

8. Almacenamiento:
   - La tabla `almacenamiento` rastrea la ubicación actual de los productos en el almacén, con un registro de la fecha de almacenamiento.

9. Gestión de Inventarios:
   - La tabla `gestion_de_inventarios` se utiliza para llevar un registro de los inventarios, incluyendo existencias mínimas, máximas y la detección de productos caducados.

10. Movimientos de Inventario:
    - La tabla `movimientos_de_inventario` registra todos los movimientos de productos, ya sea ingresos o despachos, junto con la cantidad y el usuario responsable.

11. Clientes:
    - La tabla `clientes` almacena información sobre los clientes, incluyendo su nombre, contacto, teléfono, dirección de correo electrónico y dirección.

12. Estados de Pedido:
    - La tabla `estados_pedido` define los posibles estados de los pedidos, como "Pendiente", "Completado", "Entregado", etc.

13. Pedidos:
    - La tabla `pedidos` registra los pedidos de los clientes, con detalles como el número de pedido, la fecha de pedido, la fecha de entrega prevista, el cliente y el estado del pedido.

14. Preparación de Pedidos:
    - La tabla `preparacion_de_pedidos` está relacionada con la preparación de pedidos y registra los productos asignados a pedidos específicos.

15. Control de Calidad:
    - La tabla `control_de_calidad` se utiliza para registrar los resultados de los controles de calidad realizados en los productos.

16. Gestión de Devoluciones:
    - La tabla `gestion_de_devoluciones` se usa para gestionar las devoluciones de productos, incluyendo detalles como la razón, la cantidad devuelta y las observaciones.

17. Distribución y Despacho:
    - La tabla `distribucion_y_despacho` registra eventos de despacho y distribución de productos, incluyendo la fecha, el destino y el usuario responsable.

18. Seguridad:
    - La tabla `seguridad` registra incidentes de seguridad, incluyendo la fecha, el tipo de incidente y su descripción.

19. Equipos y Activos:
    - La tabla `equipos` almacena información sobre equipos y activos, incluyendo su nombre, descripción, fecha de adquisición y estado.

20. Costos de Equipos:
    - La tabla `costos` se relaciona con los equipos y registra costos asociados a ellos.

21. Documentación y Reportes:
    - La tabla `reportes_y_documentacion` permite almacenar documentos y reportes relacionados con la operación del negocio.

22. Proveedores:
    - La tabla `proveedores` contiene información sobre los proveedores, incluyendo su nombre, contacto, teléfono, dirección de correo electrónico y dirección.

23. Compras:
    - La tabla `compras` registra compras de productos a proveedores, incluyendo la fecha de compra, el proveedor y el monto total de la compra.

24. Ventas:
    - La tabla `ventas` almacena información sobre las ventas de productos, incluyendo la fecha de venta, el producto vendido, la cantidad y el monto total.

25. Facturación y Pagos:
    - Las tablas `factura` y `pagos` se utilizan para gestionar la facturación y los pagos de los clientes.

26. Estado de Cuenta y Historial de Pagos:
    - Las tablas `estado_de_cuenta` y `historial_de_pagos` registran información relacionada con los pagos y el estado de cuenta de los clientes.

27. Flujo de Efectivo:
    - La tabla `flujo_de_efectivo` se utiliza para registrar las transacciones de flujo de efectivo.

28. Clientes y Productos:
    - La tabla `clientes_productos` establece relaciones entre clientes y productos.

Esta base de datos es integral y abarca múltiples aspectos de la gestión empresarial, desde la gestión de inventario y pedidos 
hasta la seguridad, los equipos y la gestión financiera. Cada tabla está diseñada para almacenar información específica y permitir un 
seguimiento detallado de las operaciones y eventos dentro del sistema.

Ahora gruparé la descripción de la base de datos en función de los procesos o áreas funcionales clave de una empresa. 
Esto facilitará la comprensión de cómo se relacionan las tablas en diferentes aspectos de la operación empresarial.

Procesos de Usuarios y Seguridad:
- `usuarios`: Almacena información sobre los usuarios del sistema, incluyendo su nombre, apellido, credenciales y detalles de contacto.
- `niveles_de_usuario`: Define los roles o niveles de permisos para los usuarios.
- `acceso_a_configuracion_del_sistema` (opcional): Registra el acceso de los usuarios a la configuración del sistema.
- `tokens`: Almacena tokens de seguridad asociados con usuarios para la autenticación y autorización.
- `seguridad`: Registra incidentes de seguridad, incluyendo tipo e información detallada.

Procesos de Inventario y Productos:
- `productos`: Registra información detallada sobre los productos, incluyendo cantidad, ubicación y fechas relevantes.
- `historial_productos`: Lleva un registro de eventos de ingreso y despacho de productos.
- `recepcion_de_mercancias`: Registra eventos de recepción de mercancías, calidad, documentos y observaciones.
- `almacenamiento`: Rastrea la ubicación actual de los productos en el almacén.
- `gestion_de_inventarios`: Permite la gestión de existencias, existencias mínimas, máximas y productos caducados.
- `movimientos_de_inventario`: Registra todos los movimientos de productos, ya sea ingreso o despacho.

Procesos de Clientes y Ventas:
- `clientes`: Almacena información de los clientes, como nombre, contacto, y detalles de contacto.
- `estados_pedido`: Define los estados posibles de los pedidos.
- `pedidos`: Registra los pedidos de los clientes, incluyendo detalles como número de pedido, fecha de pedido y estado.
- `preparacion_de_pedidos`: Está relacionada con la preparación de pedidos y productos asignados a pedidos específicos.
- `control_de_calidad`: Registra los resultados de los controles de calidad realizados en los productos.
- `gestion_de_devoluciones`: Gestiona devoluciones de productos, incluyendo razones y observaciones.
- `distribucion_y_despacho`: Registra eventos de despacho y distribución de productos.
- `ventas`: Almacena información sobre las ventas de productos, incluyendo productos vendidos y precios.

Procesos de Equipos y Activos:
- `equipos`: Contiene detalles sobre equipos y activos, como nombre, descripción, fecha de adquisición y estado.
- `costos`: Registra costos relacionados con los equipos y activos.

Procesos de Documentación y Finanzas:
- `reportes_y_documentacion`: Almacena documentos y reportes relacionados con la operación del negocio.
- `proveedores`: Contiene información sobre los proveedores.
- `compras`: Registra compras de productos a proveedores.
- `factura`: Gestiona información relacionada con la facturación.
- `pagos`: Registra pagos realizados.
- `estado_de_cuenta`: Registra el estado de cuenta de los clientes.
- `historial_de_pagos`: Almacena un historial de pagos.
- `flujo_de_efectivo`: Registra transacciones relacionadas con el flujo de efectivo.

El sistema cuenta con los siguientes niveles de usuario cada valor se inserta en la columna 'descripcion' de la tabla 'niveles_de_usuario'.
Estos registros representan los diferentes roles o niveles de acceso disponibles en el sistema.

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

*/

-- La base de datos se utiliza para la gestión eficiente de procesos específicos de una empresa, esta base de datos te ayudara a almacenar, 
-- rastrear y analizar datos que son esenciales para el funcionamiento y la toma de decisiones
-- Las siguientes instrucciones crean la Base de datos y sus respectivas Tablas

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
    ('Reportes y Documentación'),
    ('Ventas'),
    ('Cliente');

-- Crea la tabla 'vehiculos'
CREATE TABLE IF NOT EXISTS vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55),
    descripcion TEXT,
    marca VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    ano INT NOT NULL,
    placa VARCHAR(20) NOT NULL,
    color VARCHAR(50),
    capacidad INT,
    disponible BOOLEAN
);

-- Crear la tabla 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    usuario VARCHAR(50),
    telefono VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    nivel_permisos INT,
    id_vehiculo_asignado INT,
    FOREIGN KEY (id_vehiculo_asignado) REFERENCES vehiculos(id)

);

-- Crea la tabla 'movimientos_vehiculos'
CREATE TABLE IF NOT EXISTS movimientos_vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_vehiculo INT,
    tipo_movimiento ENUM('Asignación', 'Desasignación', 'Combustible') NOT NULL,
    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidad_combustible DECIMAL(10, 2),
    id_usuario INT, -- Agregar el usuario responsable del movimiento
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
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

-- Crear la tabla 'categorias' si no existe
CREATE TABLE IF NOT EXISTS categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL
);


-- Crear la tabla 'productos'
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    ubicacion VARCHAR(50) NOT NULL,
    id_historial INT,
    id_usuario_ingreso INT,
    id_usuario_despacho INT,
    id_categoria INT,
    id_proveedor INT,
    fecha_ingreso DATETIME,
    fecha_despacho DATETIME,
    existencias_minimas INT,
    fecha_vencimiento DATE,
    productos_caducados TINYINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
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
    observaciones TEXT,
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

-- Crear la tabla 'movimientos_de_inventario'
CREATE TABLE IF NOT EXISTS movimientos_de_inventario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_movimiento ENUM('Ingreso', 'Despacho') NOT NULL,
    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_producto INT,
    cantidad INT NOT NULL,
    id_usuario INT, -- Agregar el usuario responsable del movimiento
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) -- Relación con la tabla de usuarios
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

-- Crea la tabla 'estados_pedido'
CREATE TABLE IF NOT EXISTS estados_pedido (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estado VARCHAR(255) NOT NULL
);

-- Poblar la tabla 'estados_pedido' con los valores
INSERT INTO estados_pedido (id_estado, nombre_estado)
VALUES
    (1, 'Pendiente'),
    (2, 'En Proceso'),
    (3, 'Completado'),
    (4, 'Entregado'),
    (5, 'Cancelado'),
    (6, 'Devolución');

-- Crear la tabla 'pedidos'
CREATE TABLE IF NOT EXISTS pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_pedido VARCHAR(50) NOT NULL,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_entrega_prevista DATE,
    id_cliente INT,
    direccion_entrega VARCHAR(255),
    estado_pedido INT NOT NULL,
    total_pedido DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id), -- Referencia al cliente que hizo el pedido
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id), -- Referencia al usuario que gestionó el pedido
    FOREIGN KEY (estado_pedido) REFERENCES estados_pedido(id_estado) -- Referencia al estado del pedido
);

-- Crear la tabla 'Preparación de Pedidos'
CREATE TABLE IF NOT EXISTS preparacion_de_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    estado_pedido INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (estado_pedido) REFERENCES estados_pedido(id_estado)
);

-- Crear la tabla 'Control de Calidad'
CREATE TABLE IF NOT EXISTS control_de_calidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_control TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resultado VARCHAR(255) NOT NULL,
    id_producto INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    observaciones TEXT,
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
    cantidad_devuelta INT,
    observaciones TEXT,
    FOREIGN KEY (id_producto_devuelto) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'Distribución y Despacho'
CREATE TABLE IF NOT EXISTS distribucion_y_despacho (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_despacho TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    destino VARCHAR(255) NOT NULL,
    cantidad_despacho INT,
    id_producto_despachado INT,
    id_historial INT, -- Relación con la tabla historial_productos
    id_usuario INT, -- Relación con la tabla usuarios
    id_vehiculo INT,
    FOREIGN KEY (id_producto_despachado) REFERENCES productos(id),
    FOREIGN KEY (id_historial) REFERENCES historial_productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id)
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
    precio_compra DECIMAL(10, 2) NOT NULL,
    cantidad_compra INT NOT NULL,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crear la tabla 'ventas'
CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_venta DECIMAL(10, 2) NOT NULL,
    cantidad_venta INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Crea la tabla 'Factura'
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

-- Crea la tabla 'clientes_productos'
CREATE TABLE IF NOT EXISTS clientes_productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- Crear la tabla 'pedidos_pendientes'
CREATE TABLE IF NOT EXISTS pedidos_pendientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    id_cliente INT,
    fecha_entrega_prevista DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

-- Ahora vamos a Insertar datos de Ejemplo en la base de datos

-- Usar la base de datos 'inventario_app'
USE inventario_php;

-- Insertar 6 categorías
INSERT INTO categorias (nombre_categoria) VALUES
    ('Electrónica'),
    ('Ropa'),
    ('Alimentación'),
    ('Hogar'),
    ('Deportes'),
    ('Juguetes');

-- Poblar la tabla 'vehiculos' con ejemplos
INSERT INTO vehiculos (nombre, descripcion, marca, modelo, ano, placa, color, capacidad, disponible)
VALUES
('Toyota Corolla 2022', 'Sedán compacto, gasolina', 'Toyota', 'Corolla', 2022, 'ABC123', 'Rojo', 5, 1),
('Honda Civic 2021', 'Sedán compacto, gasolina', 'Honda', 'Civic', 2021, 'XYZ456', 'Azul', 4, 1),
('Ford F-150 2023', 'Camioneta pickup, gasolina', 'Ford', 'F-150', 2023, 'LMN789', 'Negro', 5, 1),
('Volkswagen Golf 2022', 'Hatchback compacto, gasolina', 'Volkswagen', 'Golf', 2022, 'PQR012', 'Blanco', 4, 1),
('Chevrolet Silverado 2023', 'Camioneta pickup, gasolina', 'Chevrolet', 'Silverado', 2023, 'UVW345', 'Gris', 5, 1),
('Nissan Altima 2022', 'Sedán mediano, gasolina', 'Nissan', 'Altima', 2022, 'EFG678', 'Plata', 4, 1),
('Jeep Wrangler 2023', 'SUV todoterreno, gasolina', 'Jeep', 'Wrangler', 2023, 'IJK901', 'Verde', 5, 1),
('Hyundai Elantra 2021', 'Sedán compacto, gasolina', 'Hyundai', 'Elantra', 2021, 'STU234', 'Azul', 4, 1),
('BMW X5 2022', 'SUV de lujo, gasolina', 'BMW', 'X5', 2022, 'VWX567', 'Negro', 5, 1),
('Kia Sorento 2023', 'SUV mediano, gasolina', 'Kia', 'Sorento', 2023, 'YZA890', 'Blanco', 4, 1);


-- Poblar la tabla 'usuarios' con ejemplos (sin asignar vehículos inicialmente)
INSERT INTO usuarios (nombre, email, contrasena, nivel_permisos, id_vehiculo_asignado)
VALUES
('Admin', 'admin@example.com', '1234', 1, 1),
('Técnico 1', 'tecnico1@example.com', '12', 2, NULL),
('Recepción 1', 'recepcion1@example.com', '123', 3, NULL),
('Almacenamiento 1', 'almacenamiento1@example.com', '123', 4, NULL),
('Gestión de Inventarios 1', 'inventarios1@example.com', '123', 5, NULL),
('Preparación de Pedidos 1', 'pedidos1@example.com', '123', 6, NULL),
('Control de Calidad 1', 'calidad1@example.com', '123', 7, NULL),
('Gestión de Devoluciones 1', 'devoluciones1@example.com', '123', 8, NULL),
('Distribución y Despacho 1', 'distribucion1@example.com', '123', 9, NULL),
('Mantenimiento de Equipos 1', 'mantenimiento1@example.com', '123', 10, NULL),
('Seguridad 1', 'seguridad1@example.com', '123', 11, NULL),
('Reportes y Documentación 1', 'reportes1@example.com', '123', 12, NULL),
('Vendedor 1', 'ventas@example.com', '123', 13, NULL),
('Cliente', 'cliente@example.com', '123', 14, NULL);

-- Ahora, asigna vehículos a usuarios
-- Ejemplo: Asignar el vehículo con ID 1 al usuario con ID 2
UPDATE usuarios
SET id_vehiculo_asignado = 1
WHERE nombre = 'Técnico 1';

-- Asignar el vehículo con ID 1 a los usuarios del 1 al 10
UPDATE usuarios
SET id_vehiculo_asignado = 1
WHERE id IN (1, 2, 3, 4, 5, 6);


-- Poblar la tabla 'clientes' con ejemplos
INSERT INTO clientes (nombre, contacto, telefono, email, direccion, id_usuario)
VALUES
('Juan Pérez', 'Ana Martínez', '555-123-4567', 'juanperez@example.com', '123 Calle Principal', 4),
('María Gómez', 'Carlos Rodríguez', '777-987-6543', 'mariagomez@example.com', '456 Avenida Central', 5),
('Pedro Sánchez', 'Luisa Fernández', '444-567-7890', 'pedrosanchez@example.com', '789 Carretera Norte', 6),
('Sofía Martín', 'Eduardo Ramírez', '333-678-9012', 'sofiamartin@example.com', '321 Calle del Sol', 7),
('Luis González', 'Ana Silva', '111-234-5678', 'luisgonzalez@example.com', '987 Avenida del Río', 8),
('Carmen López', 'Manuel Ortega', '222-345-6789', 'carmenlopez@example.com', '654 Avenida del Mar', 9),
('Carlos Vargas', 'Lorena Torres', '888-456-7890', 'carlosvargas@example.com', '432 Calle de la Luna', 10),
('Elena Jiménez', 'Andrés Díaz', '555-987-6543', 'elenajimenez@example.com', '1234 Carretera Sur', 11),
('Ricardo Morales', 'Laura Pérez', '777-567-8901', 'ricardomorales@example.com', '555 Avenida de la Montaña', 12),
('Isabel Ramírez', 'Javier García', '444-123-4567', 'isabelramirez@example.com', '9876 Calle de la Playa', 13);


-- Poblar la tabla 'productos' con ejemplos
INSERT INTO productos (nombre_producto, cantidad, ubicacion, id_usuario_ingreso, id_usuario_despacho, id_categoria, fecha_ingreso, fecha_despacho, id_historial, existencias_minimas, fecha_vencimiento, productos_caducados, id_proveedor)
VALUES
    ('Producto 1', 100, 'Estante A', 1, 2, 1, '2023-01-01 10:00:00', NULL, 1, 50, '2023-10-01', 0, 1),
    ('Producto 2', 50, 'Estante B', 2, 3, 1, '2023-01-02 14:30:00', NULL, 2, 50, '2023-12-31', 0, 1),
    ('Producto 3', 75, 'Estante C', 3, 4, 1, '2023-01-03 09:15:00', NULL, 3, 50, '2023-09-15', 0, 2),
    ('Producto 4', 200, 'Almacén 1', 4, 1, 1, '2023-01-04 08:30:00', NULL, 4, 50, '2023-11-30', 1, 2),
    ('Producto 5', 30, 'Almacén 2', 5, 2, 1, '2023-01-05 12:45:00', NULL, 5, 50, '2023-12-15', 0, 3),
    ('Producto 6', 60, 'Estante A', 6, 3, 1, '2023-01-06 16:20:00', NULL, 6, 50, '2023-09-20', 0, 3),
    ('Producto 7', 90, 'Estante B', 7, 4, 2, '2023-01-07 11:10:00', NULL, 7, 50, '2023-08-31', 0, 4),
    ('Producto 8', 120, 'Estante C', 8, 1, 2, '2023-01-08 10:30:00', NULL, 8, 50, '2023-11-10', 0, 4),
    ('Producto 9', 25, 'Estante A', 9, 2, 2, '2023-01-09 15:40:00', NULL, 9, 50, '2023-10-25', 0, 5),
    ('Producto 10', 50, 'Estante B', 10, 3, 2, '2023-01-10 09:55:00', NULL, 10, 50, '2023-11-30', 0, 5),
    ('Producto 11', 70, 'Almacén 1', 1, 4, 2, '2023-01-11 07:45:00', NULL, 11, 50, '2023-09-10', 1, 6),
    ('Producto 12', 80, 'Almacén 2', 2, 1, 3, '2023-01-12 10:25:00', NULL, 12, 50, '2023-08-15', 0, 6),
    ('Producto 13', 150, 'Almacén 3', 3, 2, 3, '2023-01-13 13:30:00', NULL, 13, 50, '2023-07-31', 0, 7),
    ('Producto 14', 40, 'Estante A', 4, 3, 3, '2023-01-14 09:50:00', NULL, 14, 50, '2023-09-25', 0, 7),
    ('Producto 15', 100, 'Estante B', 5, 4, 3, '2023-01-15 11:40:00', NULL, 15, 50, '2023-12-20', 0, 8),
    ('Producto 16', 45, 'Estante C', 6, 1, 1, '2023-01-16 08:15:00', NULL, 16, 50, '2023-10-10', 0, 8),
    ('Producto 17', 75, 'Estante A', 7, 2, 1, '2023-01-17 12:10:00', NULL, 17, 50, '2023-10-15', 0, 9),
    ('Producto 18', 55, 'Estante B', 8, 3, 1, '2023-01-18 14:30:00', NULL, 18, 50, '2023-12-05', 0, 9),
    ('Producto 19', 95, 'Estante C', 9, 4, 1, '2023-01-19 16:40:00', NULL, 19, 50, '2023-10-30', 0, 10),
    ('Producto 20', 60, 'Almacén 1', 10, 1, 1, '2023-01-20 10:20:00', NULL, 20, 50, '2023-11-30', 0, 10),
    ('Producto 21', 35, 'Almacén 2', 1, 2, 2, '2023-01-21 11:45:00', NULL, 21, 50, '2023-09-25', 0, 11),
    ('Producto 22', 65, 'Almacén 3', 2, 3, 2, '2023-01-22 13:20:00', NULL, 22, 50, '2023-08-31', 0, 11),
    ('Producto 23', 55, 'Estante A', 3, 4, 2, '2023-01-23 08:55:00', NULL, 23, 50, '2023-12-10', 0, 12),
    ('Producto 24', 105, 'Estante B', 4, 1, 2, '2023-01-24 09:30:00', NULL, 24, 50, '2023-09-15', 0, 12),
    ('Producto 25', 75, 'Estante C', 5, 2, 2, '2023-01-25 15:10:00', NULL, 25, 50, '2023-10-20', 0, 13),
    ('Producto 26', 70, 'Almacén 1', 6, 3, 2, '2023-01-26 16:25:00', NULL, 26, 50, '2023-12-05', 0, 13),
    ('Producto 27', 80, 'Almacén 2', 7, 4, 3, '2023-01-27 14:35:00', NULL, 27, 50, '2023-09-30', 0, 14),
    ('Producto 28', 120, 'Almacén 3', 8, 1, 3, '2023-01-28 11:20:00', NULL, 28, 50, '2023-11-15', 0, 14),
    ('Producto 29', 65, 'Estante A', 9, 2, 3, '2023-01-29 09:50:00', NULL, 29, 50, '2023-08-31', 0, 15),
    ('Producto 30', 90, 'Estante B', 10, 3, 3, '2023-01-30 12:40:00', NULL, 30, 50, '2023-10-10', 0, 15);


-- Poblar la tabla 'pedidos' con ejemplos
INSERT INTO pedidos (numero_pedido, fecha_pedido, fecha_entrega_prevista, id_cliente, direccion_entrega, estado_pedido, total_pedido, id_usuario)
VALUES
('P001', '2023-10-10', '2023-10-20', 1, 'Dirección de entrega 1', 1, 50050, 4),
('P002', '2023-11-05', '2023-11-15', 2, 'Dirección de entrega 2', 1, 32075, 5),
('P003', '2023-12-01', '2023-12-12', 3, 'Dirección de entrega 3', 1, 70090, 6),
('P004', '2023-12-15', '2023-12-28', 4, 'Dirección de entrega 4', 1, 45025, 7),
('P005', '2024-01-05', '2024-01-15', 5, 'Dirección de entrega 5', 1, 88060, 8),
('P006', '2024-02-14', '2024-02-24', 6, 'Dirección de entrega 6', 1, 60040, 9),
('P007', '2024-03-20', '2024-03-30', 7, 'Dirección de entrega 7', 1, 75080, 10),
('P008', '2024-04-08', '2024-04-18', 8, 'Dirección de entrega 8', 1, 54065, 11),
('P009', '2024-05-12', '2024-05-22', 9, 'Dirección de entrega 9', 1, 64070, 12),
('P010', '2024-06-07', '2024-06-17', 10, 'Dirección de entrega 10', 1, 93095, 13);

-- Insertar un nuevo registro en la tabla pedidos_pendientes
INSERT INTO pedidos_pendientes (id_usuario, id_pedido, id_producto, cantidad, fecha_entrega_prevista, id_cliente)
VALUES
(1, 3, 1, 10, '2023-10-15', 3),
(1, 4, 2, 20, '2023-11-05', 4),
(2, 5, 3, 15, '2023-11-25', 5),
(3, 6, 4, 30, '2023-12-10', 6),
(1, 7, 5, 25, '2023-12-20', 7);


-- Poblar la tabla 'tokens' con ejemplos de tokens Bearer
-- Insertar tokens Bearer para los usuarios
INSERT INTO tokens (id_usuario, token, fecha_expiracion) VALUES
    (1, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6IlVzdWFyaW8gMSIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.WphwM40sEE-hx0RCpif36Nf4D5H9DnfN8YUQoTVKz6E', '2023-12-31 23:59:59'),
    (2, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyIiwibmFtZSI6IlVzdWFyaW8gMiIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.x98DL89sTYsG2ujHNUKWyzUPsOBp4ChX7GpKHdgSpxA', '2023-12-31 23:59:59'),
    (3, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzIiwibmFtZSI6IlVzdWFyaW8gMyIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.Ky_5Q70f7ASbaNtN4dWg6YXlZIuL9lUdoxZ_5f3cx7I', '2023-12-31 23:59:59'),
    (4, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI0IiwibmFtZSI6IlVzdWFyaW8gNCIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.BKmuOu7NjK6OjAEXcJX2w8GGVQijwI5ZGy0i5Ub1gIo', '2023-12-31 23:59:59'),
    (5, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI1IiwibmFtZSI6IlVzdWFyaW8gNSIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.7hOamnq9ZgZSy32AmAVLzXz2Z6My3KU9xpsKucfy4DI', '2023-12-31 23:59:59'),
    (6, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2IiwibmFtZSI6IlVzdWFyaW8gNiIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.6IlLz4QtTpqxPCEAN5wD1V5wD_uBD-iUD04R9nh6aKg', '2023-12-31 23:59:59'),
    (7, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI3IiwibmFtZSI6IlVzdWFyaW8gNyIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.FwH0uXSSwhbnwBW9MWTki7iWzjYi3-niajqUo7TMtHs', '2023-12-31 23:59:59'),
    (8, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI4IiwibmFtZSI6IlVzdWFyaW8gOCIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.0OL3B3T3Zdpz4l1iAY4OP4Kx7bn4rEb7TWj3grmrYcs', '2023-12-31 23:59:59'),
    (9, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI5IiwibmFtZSI6IlVzdWFyaW8gOSIsImlhdCI6MTYzMjIwOTk5MywiZXhwIjoxNjMyMjEyODkzfQ.3wBvw7OTFqInkN8x9ANOnpVNvwJqnkF-jIeGoSxKbF8', '2023-12-31 23:59:59'),
    (10, 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMCIsIm5hbWUgIkVtcGxleW1vIDEwIiwiaWF0IjoxNjMyMjA5OTkzLCJleHAiOjE2MzIyMTI4OTN9.jhFbi9OLucQ0PJhAq0Fp1hx7GyY4wQAzQUst-lJYqdo', '2023-12-31 23:59:59');

-- Poblar la tabla 'Historial Productos' con ejemplos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_ingreso, id_usuario_despacho) VALUES
    (1, 'Ingreso', '2023-10-01 09:30:00', 4, 6),
    (2, 'Egreso', '2023-10-02 14:45:00', 4, 6),
    (3, 'Egreso', '2023-10-03 11:15:00', 4, 6),
    (4, 'Ingreso', '2023-10-04 16:20:00', 4, 6),
    (5, 'Ingreso', '2023-10-05 10:30:00', 4, 6),
    (6, 'Ingreso', '2023-10-06 12:55:00', 4, 6),
    (7, 'Egreso', '2023-10-07 15:40:00', 4, 6),
    (8, 'Ingreso', '2023-10-08 09:00:00', 4, 6),
    (9, 'Ingreso', '2023-10-09 13:10:00', 4, 6),
    (10, 'Egreso', '2023-10-10 17:25:00', 4, 6);

-- Poblar la tabla 'Recepcion de Mercancías' con ejemplos
INSERT INTO recepcion_de_mercancias (fecha_recepcion, cantidad, calidad, documentos, ubicacion, id_usuario, id_producto, id_historial, observaciones) VALUES
    ('2023-01-01 10:00:00', 200, 'Buena', 'Factura 123', 'Ubicación D', 4, 1, 1, 'El pedido llegó tarde'),
    ('2023-01-02 14:30:00', 30, 'Regular', 'Factura 456', 'Ubicación E', 5, 2, 2, 'Tiene 4 piezas adicionales'),
    ('2023-01-03 09:15:00', 60, 'Buena', 'Factura 789', 'Ubicación F', 6, 3, 3, 'Producto frágil, manipular con cuidado'),
    ('2023-01-04 11:30:00', 120, 'Excelente', 'Factura 234', 'Ubicación G', 7, 4, 4, 'Pedido completo y en perfecto estado'),
    ('2023-01-05 15:45:00', 45, 'Regular', 'Factura 567', 'Ubicación H', 8, 5, 5, 'Productos con fecha de vencimiento próxima'),
    ('2023-01-06 08:20:00', 80, 'Buena', 'Factura 890', 'Ubicación I', 9, 6, 6, 'Producto con etiqueta dañada'),
    ('2023-01-07 10:10:00', 150, 'Excelente', 'Factura 345', 'Ubicación J', 10, 7, 7, 'Pedido sin observaciones');


-- Poblar la tabla 'almacenamiento' con ejemplos
INSERT INTO almacenamiento (id_producto, ubicacion_actual, fecha_almacenamiento, id_historial, id_usuario) VALUES
    (1, 'Estantería 1, Nivel 1', '2023-10-01 09:30:00', 1, 4),
    (2, 'Estantería 2, Nivel 2', '2023-10-02 14:45:00', 2, 5),
    (3, 'Estantería 3, Nivel 1', '2023-10-03 11:15:00', 3, 6),
    (4, 'Almacén A, Sección 2', '2023-10-04 16:20:00', 4, 7),
    (5, 'Almacén B, Sección 3', '2023-10-05 10:30:00', 5, 8),
    (6, 'Estantería 4, Nivel 3', '2023-10-06 12:55:00', 6, 9),
    (7, 'Almacén C, Sección 1', '2023-10-07 15:40:00', 7, 10),
    (8, 'Estantería 5, Nivel 2', '2023-10-08 09:00:00', 8, 1),
    (9, 'Almacén D, Sección 2', '2023-10-09 13:10:00', 9, 2),
    (10, 'Estantería 6, Nivel 1', '2023-10-10 17:25:00', 10, 3);



-- Poblar la tabla 'gestion_de_inventarios' con ejemplos
INSERT INTO gestion_de_inventarios (fecha_inventario, existencias_minimas, existencias_maximas, productos_caducados, id_producto, id_historial, id_usuario) VALUES
    ('2023-10-01 10:00:00', 100, 300, 2, 1, 1, 4),
    ('2023-10-02 14:30:00', 20, 50, 4, 1, 2, 5),
    ('2023-10-03 09:15:00', 40, 80, 1, 1, 3, 6),
    ('2023-10-04 16:20:00', 150, 400, 0, 2, 4, 7),
    ('2023-10-05 10:30:00', 30, 70, 0, 2, 5, 8),
    ('2023-10-06 12:55:00', 80, 200, 3, 3, 6, 9),
    ('2023-10-07 15:40:00', 50, 120, 0, 3, 7, 10),
    ('2023-10-08 09:00:00', 70, 150, 0, 4, 8, 1),
    ('2023-10-09 13:10:00', 10, 50, 0, 4, 9, 2),
    ('2023-10-10 17:25:00', 90, 250, 2, 5, 10, 3);


-- Poblar la tabla 'movimientos_de_inventario' con ejemplos
INSERT INTO movimientos_de_inventario (tipo_movimiento, id_producto, cantidad, id_usuario) VALUES
    ('Ingreso', 4, 150, 1), -- Ejemplo de ingreso de productos
    ('Ingreso', 5, 50, 2), -- Ejemplo de ingreso de productos
    ('Despacho', 6, 20, 3), -- Ejemplo de despacho de productos
    ('Ingreso', 7, 80, 4), -- Ejemplo de ingreso de productos
    ('Despacho', 8, 10, 5), -- Ejemplo de despacho de productos
    ('Despacho', 9, 25, 6), -- Otro ejemplo de despacho de productos
    ('Ingreso', 10, 60, 7), -- Ejemplo de ingreso de productos
    ('Ingreso', 11, 35, 8), -- Ejemplo de ingreso de productos
    ('Despacho', 12, 15, 9), -- Ejemplo de despacho de productos
    ('Despacho', 13, 40, 10); -- Otro ejemplo de despacho de productos



-- Poblar la tabla 'preparacion_de_pedidos' con ejemplos
INSERT INTO preparacion_de_pedidos (id_pedido, id_producto, cantidad, id_historial, id_usuario, estado_pedido) VALUES
    (1, 1, 50, 1, 1, 1),
    (2, 2, 30, 2, 2, 2),
    (3, 3, 20, 3, 3, 1),
    (4, 1, 15, 4, 4, 2),
    (5, 2, 25, 5, 5, 1),
    (6, 3, 40, 6, 6, 2),
    (7, 1, 10, 7, 7, 1),
    (8, 2, 35, 8, 8, 2),
    (9, 3, 15, 9, 9, 1),
    (10, 1, 30, 10, 10, 2);


-- Poblar la tabla 'control_de_calidad' con ejemplos
INSERT INTO control_de_calidad (fecha_control, resultado, id_producto, id_historial, id_usuario, observaciones) VALUES
    ('2023-01-01 10:00:00', 'Aprobado', 1, 1, 1, 'Este producto es muy bueno'),
    ('2023-01-02 14:30:00', 'Rechazado', 2, 2, 2, 'El producto es frágil'),
    ('2023-01-03 09:15:00', 'Aprobado', 3, 3, 3, ''),
    ('2023-01-04 12:00:00', 'Aprobado', 4, 4, 4, 'Sin problemas'),
    ('2023-01-05 15:30:00', 'Rechazado', 5, 5, 5, 'Dañado en tránsito'),
    ('2023-01-06 10:45:00', 'Aprobado', 6, 6, 6, 'Producto en excelente estado'),
    ('2023-01-07 08:20:00', 'Aprobado', 7, 7, 7, 'Cumple con los estándares'),
    ('2023-01-08 17:30:00', 'Rechazado', 8, 8, 8, 'Defectos visibles'),
    ('2023-01-09 11:10:00', 'Aprobado', 9, 9, 9, 'Sin observaciones adicionales'),
    ('2023-01-10 14:50:00', 'Rechazado', 10, 10, 10, 'Problemas de empaque');


-- Poblar la tabla 'gestion de devoluciones' con ejemplos
INSERT INTO gestion_de_devoluciones (fecha_devolucion, razon, reintegracion, id_producto_devuelto, id_historial, id_usuario, cantidad_devuelta, observaciones)
VALUES
('2023-01-01 10:00:00', 'Producto dañado', 1, 1, 1, 1, 4, 'En malas condiciones'),
('2023-01-02 14:30:00', 'Pedido incorrecto', 0, 2, 2, 2, 5, 'El embalaje está destruido'),
('2023-01-03 09:15:00', 'Producto dañado', 1, 3, 3, 3, 1, 'Empaque en buen estado'),
('2023-01-04 12:00:00', 'Producto defectuoso', 0, 4, 4, 4, 3, 'Pieza faltante'),
('2023-01-05 15:30:00', 'Producto vencido', 1, 5, 5, 5, 2, 'Fecha de vencimiento pasada'),
('2023-01-06 10:45:00', 'Pedido incorrecto', 0, 6, 6, 6, 7, 'Producto equivocado en el paquete'),
('2023-01-07 08:20:00', 'Producto dañado', 1, 7, 7, 7, 6, 'Roturas visibles'),
('2023-01-08 17:30:00', 'Producto defectuoso', 0, 8, 8, 8, 8, 'No funciona correctamente'),
('2023-01-09 11:10:00', 'Producto vencido', 1, 9, 9, 9, 2, 'Fecha de vencimiento expirada'),
('2023-01-10 14:50:00', 'Producto dañado', 1, 10, 10, 10, 4, 'Daños durante el transporte');



-- Poblar la tabla 'distribucion_y_despacho' con ejemplos
INSERT INTO distribucion_y_despacho (fecha_despacho, destino, cantidad_despacho, id_producto_despachado, id_historial, id_usuario, id_vehiculo) VALUES
('2023-01-01 10:00:00', 'Cliente A', 23, 1, 1, 1, 1),
('2023-01-02 14:30:00', 'Cliente B', 4, 2, 2, 2, 1),
('2023-01-03 09:15:00', 'Cliente C', 14, 3, 3, 3, 1),
('2023-01-04 12:00:00', 'Cliente D', 7, 4, 4, 4, 2),
('2023-01-05 15:30:00', 'Cliente E', 12, 5, 5, 5, 2),
('2023-01-06 10:45:00', 'Cliente F', 10, 6, 6, 6, 2),
('2023-01-07 08:20:00', 'Cliente G', 5, 7, 7, 7, 3),
('2023-01-08 17:30:00', 'Cliente H', 18, 8, 8, 8, 3),
('2023-01-09 11:10:00', 'Cliente I', 9, 9, 9, 9, 3),
('2023-01-10 14:50:00', 'Cliente J', 20, 10, 10, 10, 3);


-- Poblar la tabla 'Seguridad' con ejemplos
INSERT INTO seguridad (fecha_registro_incidente, tipo_incidente, descripcion_incidente, id_usuario_seguridad) VALUES
('2023-01-01 10:00:00', 'Incidente 1', 'Descripción del incidente 1', 11),
('2023-01-02 14:30:00', 'Incidente 2', 'Descripción del incidente 2', 12),
('2023-01-03 09:15:00', 'Incidente 3', 'Descripción del incidente 3', 11),
('2023-01-04 12:30:00', 'Incidente 4', 'Descripción del incidente 4', 12),
('2023-01-05 15:45:00', 'Incidente 5', 'Descripción del incidente 5', 11),
('2023-01-06 08:20:00', 'Incidente 6', 'Descripción del incidente 6', 12),
('2023-01-07 17:30:00', 'Incidente 7', 'Descripción del incidente 7', 11),
('2023-01-08 11:10:00', 'Incidente 8', 'Descripción del incidente 8', 12),
('2023-01-09 14:50:00', 'Incidente 9', 'Descripción del incidente 9', 11),
('2023-01-10 10:00:00', 'Incidente 10', 'Descripción del incidente 10', 12);

-- Poblar la tabla 'Equipos' con ejemplos
INSERT INTO equipos (nombre_equipo, descripcion_equipo, fecha_adquisicion, ubicacion_actual, estado) VALUES
('Equipo 1', 'Descripción del Equipo 1', '2023-01-01', 'Ubicación 1', 'En funcionamiento'),
('Equipo 2', 'Descripción del Equipo 2', '2023-02-15', 'Ubicación 2', 'En mantenimiento'),
('Equipo 3', 'Descripción del Equipo 3', '2023-03-20', 'Ubicación 3', 'Fuera de servicio'),
('Equipo 4', 'Descripción del Equipo 4', '2023-04-05', 'Ubicación 4', 'En funcionamiento'),
('Equipo 5', 'Descripción del Equipo 5', '2023-05-10', 'Ubicación 5', 'En mantenimiento'),
('Equipo 6', 'Descripción del Equipo 6', '2023-06-20', 'Ubicación 6', 'Fuera de servicio'),
('Equipo 7', 'Descripción del Equipo 7', '2023-07-15', 'Ubicación 7', 'En funcionamiento'),
('Equipo 8', 'Descripción del Equipo 8', '2023-08-02', 'Ubicación 8', 'En mantenimiento'),
('Equipo 9', 'Descripción del Equipo 9', '2023-09-30', 'Ubicación 9', 'Fuera de servicio'),
('Equipo 10', 'Descripción del Equipo 10', '2023-10-12', 'Ubicación 10', 'En funcionamiento');

-- Poblar la tabla 'costos' con ejemplos
INSERT INTO costos (descripcion, monto, id_usuario, id_equipo) VALUES
('Costo 1', 500.00, 1, 1),
('Costo 2', 750.50, 2, 2),
('Costo 3', 1200.75, 3, 3),
('Costo 4', 300.25, 4, 4),
('Costo 5', 850.00, 5, 5),
('Costo 6', 1250.30, 6, 6),
('Costo 7', 450.75, 7, 7),
('Costo 8', 620.00, 8, 8),
('Costo 9', 1100.50, 9, 9),
('Costo 10', 420.80, 10, 10);

-- Poblar la tabla 'Reportes y Documentación' con ejemplos
INSERT INTO reportes_y_documentacion (tipo_documento, descripcion_documento, id_usuario_reportes) VALUES
('Informe 1', 'Descripción del informe 1', 11),
('Informe 2', 'Descripción del informe 2', 12),
('Informe 3', 'Descripción del informe 3', 11),
('Informe 4', 'Descripción del informe 4', 12),
('Informe 5', 'Descripción del informe 5', 11),
('Informe 6', 'Descripción del informe 6', 12),
('Informe 7', 'Descripción del informe 7', 11),
('Informe 8', 'Descripción del informe 8', 12),
('Informe 9', 'Descripción del informe 9', 11),
('Informe 10', 'Descripción del informe 10', 12);


-- Poblar la tabla 'Proveedores' con ejemplos
INSERT INTO proveedores (nombre, contacto, telefono, email, direccion, id_usuario) VALUES
('Proveedor 1', 'Contacto 1', '123-456-7890', 'proveedor1@example.com', 'Dirección 1', 1),
('Proveedor 2', 'Contacto 2', '987-654-3210', 'proveedor2@example.com', 'Dirección 2', 2),
('Proveedor 3', 'Contacto 3', '555-123-4567', 'proveedor3@example.com', 'Dirección 3', 3),
('Proveedor 4', 'Contacto 4', '111-222-3333', 'proveedor4@example.com', 'Dirección 4', 1),
('Proveedor 5', 'Contacto 5', '444-555-6666', 'proveedor5@example.com', 'Dirección 5', 2),
('Proveedor 6', 'Contacto 6', '777-888-9999', 'proveedor6@example.com', 'Dirección 6', 3),
('Proveedor 7', 'Contacto 7', '123-456-7890', 'proveedor7@example.com', 'Dirección 7', 1),
('Proveedor 8', 'Contacto 8', '987-654-3210', 'proveedor8@example.com', 'Dirección 8', 2),
('Proveedor 9', 'Contacto 9', '555-123-4567', 'proveedor9@example.com', 'Dirección 9', 3),
('Proveedor 10', 'Contacto 10', '111-222-3333', 'proveedor10@example.com', 'Dirección 10', 1);

-- Poblar la tabla 'Compras' con ejemplos
INSERT INTO compras (id_proveedor, total_compra, id_usuario, precio_compra, cantidad_compra, id_producto) VALUES
(1, 500.00, 1, 1000, 10, 1),
(2, 750.50, 2, 2000, 20, 1),
(3, 1200.75, 3, 3000, 30, 2),
(4, 300.25, 4, 400, 4, 1),
(5, 850.00, 5, 6000, 60, 2),
(6, 1250.30, 6, 700, 7, 2),
(7, 450.75, 7, 300, 3, 2),
(8, 620.00, 8, 1000, 10, 2),
(9, 1100.50, 9, 500, 5, 1),
(10, 420.80, 10, 1500, 15, 2);

-- Poblar la tabla 'Ventas' con ejemplos
INSERT INTO ventas (id_producto, cantidad, precio_unitario, total, id_usuario, precio_venta, cantidad_venta) VALUES
(1, 10, 25.00, 250.00, 1, 4500, 10),
(2, 5, 50.50, 252.50, 2, 3500, 14),
(3, 8, 75.75, 606.00, 3, 3000, 4),
(4, 15, 30.00, 450.00, 4, 4000, 10),
(5, 20, 40.00, 800.00, 5, 3500, 8),
(6, 25, 35.50, 887.50, 6, 2500, 6),
(7, 30, 28.75, 862.50, 7, 2800, 9),
(8, 12, 20.00, 240.00, 8, 5000, 13),
(9, 18, 45.50, 819.00, 9, 4500, 13),
(10, 5, 55.50, 277.50, 10, 6000, 13);

-- Poblar la tabla 'Facturas' con ejemplos
INSERT INTO factura (numero_factura, fecha_emision, descripcion, monto_total, id_cliente) VALUES
('FAC-001', '2023-01-01', 'Factura de Cliente 1', 250.00, 1),
('FAC-002', '2023-01-02', 'Factura de Cliente 2', 252.50, 2),
('FAC-003', '2023-01-03', 'Factura de Cliente 3', 606.00, 3),
('FAC-004', '2023-01-04', 'Factura de Cliente 4', 120.00, 4),
('FAC-005', '2023-01-05', 'Factura de Cliente 5', 850.00, 5),
('FAC-006', '2023-01-06', 'Factura de Cliente 6', 1250.30, 6),
('FAC-007', '2023-01-07', 'Factura de Cliente 7', 450.75, 7),
('FAC-008', '2023-01-08', 'Factura de Cliente 8', 620.00, 8),
('FAC-009', '2023-01-09', 'Factura de Cliente 9', 1100.50, 9),
('FAC-010', '2023-01-10', 'Factura de Cliente 10', 420.80, 10);

-- Poblar la tabla 'Pagos' con ejemplos
INSERT INTO pagos (numero_pago, fecha_pago, monto_pagado, id_factura) VALUES
('PAGO-001', '2023-01-01', 250.00, 1),
('PAGO-002', '2023-01-02', 252.50, 2),
('PAGO-003', '2023-01-03', 606.00, 3),
('PAGO-004', '2023-01-04', 120.00, 4),
('PAGO-005', '2023-01-05', 850.00, 5),
('PAGO-006', '2023-01-06', 1250.30, 6),
('PAGO-007', '2023-01-07', 450.75, 7),
('PAGO-008', '2023-01-08', 620.00, 8),
('PAGO-009', '2023-01-09', 1100.50, 9),
('PAGO-010', '2023-01-10', 420.80, 10);


-- Poblar la tabla 'Estado de Cuenta' con ejemplos
INSERT INTO estado_de_cuenta (fecha_actualizacion, saldo_pendiente, id_cliente) VALUES
    ('2023-01-01', 200.00, 1),
    ('2023-01-02', 400.00, 2),
    ('2023-01-03', 600.00, 3),
    ('2023-01-04', 300.00, 4),
    ('2023-01-05', 500.00, 5),
    ('2023-01-06', 700.00, 6),
    ('2023-01-07', 800.00, 7),
    ('2023-01-08', 120.00, 8),
    ('2023-01-09', 150.00, 9),
    ('2023-01-10', 250.00, 10);

-- Poblar la tabla 'Historial de Pagos' con ejemplos
INSERT INTO historial_de_pagos (fecha_pago, monto_pagado, id_cliente) VALUES
    ('2023-01-01', 250.00, 1),
    ('2023-01-02', 252.50, 2),
    ('2023-01-03', 606.00, 3),
    ('2023-01-04', 120.00, 4),
    ('2023-01-05', 850.00, 5),
    ('2023-01-06', 1250.30, 6),
    ('2023-01-07', 450.75, 7),
    ('2023-01-08', 620.00, 8),
    ('2023-01-09', 1100.50, 9),
    ('2023-01-10', 420.80, 10);

-- Poblar la tabla 'Flujo de Efectivo' con ejemplos
INSERT INTO flujo_de_efectivo (fecha_transaccion, tipo_transaccion, descripcion, monto) VALUES
    ('2023-01-01', 'Ingreso', 'Ingreso de efectivo 1', 500.00),
    ('2023-01-02', 'Egreso', 'Egreso de efectivo 2', -250.50),
    ('2023-01-03', 'Ingreso', 'Ingreso de efectivo 3', 1000.75),
    ('2023-01-04', 'Egreso', 'Egreso de efectivo 4', -350.25),
    ('2023-01-05', 'Ingreso', 'Ingreso de efectivo 5', 800.50),
    ('2023-01-06', 'Egreso', 'Egreso de efectivo 6', -120.75),
    ('2023-01-07', 'Ingreso', 'Ingreso de efectivo 7', 600.00),
    ('2023-01-08', 'Egreso', 'Egreso de efectivo 8', -420.80),
    ('2023-01-09', 'Ingreso', 'Ingreso de efectivo 9', 1100.00),
    ('2023-01-10', 'Egreso', 'Egreso de efectivo 10', -300.20);

-- Poblar la tabla 'Acceso a Configuración del Sistema' con ejemplos
INSERT INTO acceso_a_configuracion_del_sistema (id_usuario, tiene_acceso) VALUES
    (1, 1),  -- El usuario con ID 1 tiene acceso a la configuración del sistema
    (2, 0),  -- El usuario con ID 2 no tiene acceso a la configuración del sistema
    (3, 1),  -- El usuario con ID 3 tiene acceso a la configuración del sistema
    (4, 0),
    (5, 1),
    (6, 0),
    (7, 1),
    (8, 0),
    (9, 1),
    (10, 0);

-- Poblar la tabla 'Clientes Productos' con ejemplos
INSERT INTO clientes_productos (id_cliente, id_producto) VALUES
     (1, 1),
     (2, 2),
     (3, 3),
     (4, 4),
     (5, 5),
     (6, 6),
     (7, 7),
     (8, 8),
     (9, 9),
     (10, 10);



-- Insertar nuevos movimientos de asignación
INSERT INTO movimientos_vehiculos (id_vehiculo, tipo_movimiento, cantidad_combustible, id_usuario)
VALUES
(2, 'Asignación', NULL, 4),
(3, 'Asignación', NULL, 5),
(4, 'Asignación', NULL, 6);


-- Insertar nuevos movimientos de abastecimiento de combustible
INSERT INTO movimientos_vehiculos (id_vehiculo, tipo_movimiento, cantidad_combustible, id_usuario)
VALUES
(2, 'Combustible', 45.0, 5),
(3, 'Combustible', 55.5, 6),
(4, 'Combustible', 38.2, 7),
(5, 'Combustible', 60.7, 8),
(6, 'Combustible', 42.5, 9),
(7, 'Combustible', 47.3, 10),
(8, 'Combustible', 49.6, 1);



-- Ahora tambien podriamos querer Actualizar campos en nuestra Base de datos

-- Actualizar tabla 'niveles_de_usuario'
    USE inventario_php;
    UPDATE niveles_de_usuario
    SET descripcion = 'Nuevo Valor'
    WHERE id = {ID_DEL_REGISTRO}; -- Filtros para identificar el registro específico a actualizar

-- Actualizar tabla 'usuarios'
    USE inventario_php;
    UPDATE usuarios
    SET
        nombre = 'Miguel',
        apellido = 'Gonzalez',
        usuario = 'Admin',
        telefono = '+56922222222',
        email = 'nuevoemail@example.com',
        contrasena = '123',
        nivel_permisos = {ID_DEL_NIVEL_DE_PERMISO}
    WHERE id = {ID_DEL_USUARIO}; -- Filtros para identificar el registro específico a actualizar
 
-- Actualizar tabla 'acceso_a_configuracion_del_sistema'
    USE inventario_php;
    UPDATE acceso_a_configuracion_del_sistema
    SET tiene_acceso = 0
    WHERE id_usuario = 1; -- Filtros para identificar el registro específico a actualizar

-- Actualizar tabla 'tokens'
    USE inventario_php;
    UPDATE tokens
    SET token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6IkFkbWluaXN0cmFkb3IiLCJpYXQiOjE2MzEyNjA0NjAsImV4cCI6MTYzMTI2MzA2MH0.0JjuLvZUwFW7P8Gg6gktFSDrrT_qil6KAK8F6zNS9w'
    WHERE id = 1; -- Filtros para identificar el registro específico a actualizar

-- Actualizar la tabla 'almacenamiento'
    USE inventario_php;
    UPDATE almacenamiento
    SET ubicacion_actual = 'Ubicación Z'
    WHERE id_producto = 1; -- Cambia el ID del artículo que deseas mover

-- Actualizar la tabla 'gestión de inventario'
    USE inventario_php;
    UPDATE gestion_de_inventario
    SET existencias_minimas = existencias_minimas + 10
    WHERE id = 1; -- Cambia el ID del producto que deseas actualizar

-- Actualizar la cantidad de productos en el inventario
    UPDATE movimientos_de_inventario
    SET cantidad = cantidad + 100
    WHERE id_producto = 2; -- Cambia el ID del producto que deseas actualizar

-- Actualizar la tabla 'clientes'
    UPDATE clientes
    SET direccion = 'Nueva Dirección'
    WHERE id_cliente = 1; -- Cambia el ID del cliente que deseas actualizar

-- Actualizar la tabla 'estado_pedido'
    UPDATE estado_pedido
    SET nombre_estado = 'En Proceso'
    WHERE id_pedido = 1; -- Cambia el ID del pedido que deseas actualizar

-- Actualizar la tabla 'pedidos'
    UPDATE pedidos
    SET fecha_entrega_prevista = '2023-10-20'
    WHERE id = 1; -- Cambia el ID del pedido que deseas actualizar

-- Actualizar la tabla 'preparacion_pedidos'
    UPDATE preparacion_de_pedidos
    SET estado_pedido = 1
    WHERE id = 1; -- Cambia el ID del pedido que deseas marcar como preparado

-- Actualizar el resultado y las observaciones en la tabla 'control_calidad'
    UPDATE control_de_calidad
    SET resultado = 'Rechazado', observaciones = 'Se requieren mejoras'
    WHERE id_producto = 1; -- Cambia el ID del producto que deseas actualizar


-- Actualizar la cantidad y el motivo en la tabla 'gestion_devoluciones'
    UPDATE gestion_de_devoluciones
    SET cantidad_devuelta = 3, Razon = 'Otro motivo', observaciones = 'Otras Observaciones'
    WHERE id = 1; -- Cambia el ID del producto que deseas actualizar

-- Actualizar el estado de un envío en la tabla 'distribución_despacho'
    UPDATE distribucion_y_despacho
    SET destino = 'Cliente B'
    WHERE id = 1;

-- Actualizar la contraseña de un usuario en la tabla 'seguridad'
    UPDATE seguridad
    SET descripcion_incidente = 'Esto es una descripcion'
    WHERE id = 1; -- Cambia el ID del usuario que deseas actualizar

-- Actualizar información del producto
    UPDATE productos
    SET nombre_producto = 'Producto X', cantidad = 19
    WHERE id = 1; -- Cambia el ID del producto que deseas actualizar

-- Actualizar información en el historial de productos
    UPDATE historial_productos
    SET tipo_evento = 'Nueva descripción', fecha_hora = CURRENT_TIMESTAMP
    WHERE id = 1; -- Cambia el ID del historial que deseas actualizar

-- Actualizar información de la recepción de mercancías
    UPDATE recepcion_de_mercancias
    SET fecha_recepcion = '2023-10-11 08:30:00', calidad = 'Muy buena', documentos = 'Factura 999', ubicacion = 'Ubicación XYZ', observaciones = 'Nuevas observaciones'
    WHERE id = 1; -- Cambia el ID de la recepción que deseas actualizar

-- Actualizar información de equipos
    UPDATE equipos
    SET descripcion_equipo = 'Nueva descripción del Equipo 1', estado = 'En funcionamiento'
    WHERE nombre_equipo = 'Equipo 1';

-- Actualizar información de costos
    UPDATE costos
    SET monto = 600.00
    WHERE descripcion = 'Costo 1';

-- Actualizar información de reportes y documentos
    UPDATE reportes_y_documentacion
    SET descripcion_documento = 'Nueva descripción del informe 1'
    WHERE tipo_documento = 'Informe 1';

-- Actualizar información de proveedores
    UPDATE proveedores
    SET contacto = 'Nuevo Contacto 1', telefono = '123-555-7890'
    WHERE nombre = 'Proveedor 1';

-- Actualizar información de compras
    UPDATE compras
    SET total_compra = 800.00
    WHERE id_proveedor = 1;

-- Actualizar información de ventas
    UPDATE ventas
    SET cantidad = 15, precio_unitario = 30.00, total = 450.00
    WHERE id_producto = 1;

-- Actualizar información de factura
    UPDATE factura
    SET fecha_emision = '2023-01-04', descripcion = 'Nueva descripción de Factura 1', monto_total = 275.00
    WHERE numero_factura = 'FAC-001';

-- Actualizar información de pago
    UPDATE pagos
    SET fecha_pago = '2023-01-04', monto_pagado = 255.00
    WHERE numero_pago = 'PAGO-001';

-- Actualizar información de estado de cuenta
    UPDATE estado_de_cuenta
    SET saldo_pendiente = 100.00
    WHERE id_cliente = 1;

-- Actualizar información de historial de pagos
    UPDATE historial_de_pagos
    SET fecha_pago = '2023-01-04', monto_pagado = 275.00
    WHERE id_cliente = 1;

-- Actualizar información de flujo de efectivo
    UPDATE flujo_de_efectivo
    SET tipo_transaccion = 'Egreso', descripcion = 'Nuevo Egreso de efectivo 1', monto = -300.00
    WHERE fecha_transaccion = '2023-01-01';

-- Actualizar información de cliente producto
    UPDATE clientes_productos
    SET id_cliente = 2
    WHERE id_producto = 1;

-- Actualizar informacion sobre el Vehiculo
    UPDATE vehiculos
    SET descripcion = 'El motor es bencinero', disponible = 0
    WHERE id = 1;

-- Actualizar la cantidad de combustible para un movimiento específico
    UPDATE movimientos_vehiculos
    SET cantidad_combustible = 55.0
    WHERE id = 1;

-- Actualizar una categoría
    UPDATE categorias
    SET nombre_categoria = 'Moda'
    WHERE nombre_categoria = 'Ropa';

-- Actualizar el registro con id 1
    UPDATE pedidos_pendientes
    SET cantidad = 20, fecha_entrega_prevista = '2023-11-05'
    WHERE id = 1;

-- Ahora tambien podriamos querer eliminar registros

-- Eliminar un usuario por su ID
DELETE FROM usuarios WHERE id = 1;

-- Eliminar un nivel de usuario por su ID
DELETE FROM niveles_de_usuario WHERE id = 1;

-- Eliminar el acceso a la configuración del sistema para un usuario por su ID
DELETE FROM acceso_a_configuracion_del_sistema WHERE id = 1;

-- Eliminar un token por su ID
DELETE FROM tokens WHERE id = 1;

-- Eliminar un producto por su ID
DELETE FROM productos WHERE id = 1;

-- Eliminar un registro de historial de productos por su ID
DELETE FROM historial_productos WHERE id = 1;

-- Eliminar un registro de recepción de mercancías por su ID
DELETE FROM recepcion_de_mercancias WHERE id = 1;

-- Eliminar un registro de almacenamiento por su ID
DELETE FROM almacenamiento WHERE id = 1;

-- Eliminar un registro de gestión de inventarios por su ID
DELETE FROM gestion_de_inventarios WHERE id = 1;

-- Eliminar un movimiento de inventario por su ID
DELETE FROM movimientos_de_inventario WHERE id = 1;

-- Eliminar un cliente por su ID
DELETE FROM clientes WHERE id = 1;

-- Eliminar un estado de pedido por su ID
DELETE FROM estados_pedido WHERE id_estado = 1;

-- Eliminar un pedido por su ID
DELETE FROM pedidos WHERE id = 1;

-- Eliminar un registro de preparación de pedidos por su ID
DELETE FROM preparacion_de_pedidos WHERE id = 1;

-- Eliminar un registro de control de calidad por su ID
DELETE FROM control_de_calidad WHERE id = 1;

-- Eliminar un registro de gestión de devoluciones por su ID
DELETE FROM gestion_de_devoluciones WHERE id = 1;

-- Eliminar un registro de distribución y despacho por su ID
DELETE FROM distribucion_y_despacho WHERE id = 1;

-- Eliminar un registro de incidente de seguridad por su ID
DELETE FROM seguridad WHERE id = 1;

-- Eliminar un equipo por su ID
DELETE FROM equipos WHERE id = 1;

-- Eliminar un registro de costos por su ID
DELETE FROM costos WHERE id = 1;

-- Eliminar un registro de reportes y documentación por su ID
DELETE FROM reportes_y_documentacion WHERE id = 1;

-- Eliminar un proveedor por su ID
DELETE FROM proveedores WHERE id = 1;

-- Eliminar un registro de compra por su ID
DELETE FROM compras WHERE id = 1;

-- Eliminar una venta por su ID
DELETE FROM ventas WHERE id = 1;

-- Eliminar una factura por su ID
DELETE FROM factura WHERE id = 1;

-- Eliminar un pago por su ID
DELETE FROM pagos WHERE id = 1;

-- Eliminar un estado de cuenta por su ID
DELETE FROM estado_de_cuenta WHERE id = 1;

-- Eliminar un registro de historial de pagos por su ID
DELETE FROM historial_de_pagos WHERE id = 1;

-- Eliminar una transacción de flujo de efectivo por su ID
DELETE FROM flujo_de_efectivo WHERE id = 1;

-- Eliminar un registro de relación entre cliente y producto por su ID
DELETE FROM clientes_productos WHERE id = 1;

-- Eliminar registros de la tabla vehiculos    
DELETE FROM vehiculos WHERE id = 2;

-- Eliminar un movimiento específico
DELETE FROM movimientos_vehiculos
WHERE id = 2;

-- Eliminar una categoría
DELETE FROM categorías WHERE nombre_categoria = 'Juguetes';

-- Eliminar el registro con id 1
DELETE FROM pedidos_pendientes
WHERE id = 1;

-- Consultas SQL

--  Informe de Existencias Actuales (funciona)
   USE inventario_php;
   SELECT p.nombre_producto, p.cantidad, p.ubicacion
   FROM productos p
   WHERE p.cantidad > 0;

-- +-----------------+----------+--------------+
-- | nombre_producto | cantidad | ubicacion    |
-- +-----------------+----------+--------------+
-- | Producto 4      | 200      | Ubicación D  |
-- | Producto 5      | 30       | Ubicación E  |
-- | Producto 6      | 60       | Ubicación F  |
-- +-----------------+----------+--------------+


-- Historial de Movimientos de Productos (funciona)
   USE inventario_php;
   SELECT hp.tipo_evento, hp.fecha_hora, u.nombre AS usuario
   FROM historial_productos hp
   JOIN usuarios u ON hp.id_usuario_ingreso = u.id
   WHERE hp.id_producto = {ID_DEL_PRODUCTO};

-- +-------------+---------------------+-------------------+
-- | tipo_evento | fecha_hora          | usuario           |
-- +-------------+---------------------+-------------------+
-- | Ingreso     | 2023-01-01 10:00:00 | Almacenamiento 1  |
-- +-------------+---------------------+-------------------+


-- Productos que Necesitan Reabastecimiento (funciona)
   USE inventario_php;
   SELECT p.nombre_producto, p.cantidad
   FROM productos p
   WHERE p.cantidad < p.existencias_minimas;

-- +----------------+---------+
-- | nombre_producto| cantidad|
-- +----------------+---------+
-- | Producto 5     | 30      |
-- +----------------+---------+


-- Informe de Compras por Proveedor (funciona)
   USE inventario_php;
   SELECT c.fecha_compra, p.nombre AS proveedor, c.total_compra
   FROM compras c
   JOIN proveedores p ON c.id_proveedor = p.id
   WHERE p.id = {ID_DEL_PROVEEDOR};

-- +---------------------+-------------+--------------+
-- | fecha_compra        | proveedor   | total_compra |
-- +---------------------+-------------+--------------+
-- | 2023-10-11 10:13:05 | Proveedor 1 | 500.00       |
-- +---------------------+-------------+--------------+

   
-- Informe de Ventas por Cliente utilizando tabla de intersección (funcionando)
   USE inventario_php;
   SELECT v.fecha_venta, c.nombre AS cliente, p.nombre_producto AS producto, v.cantidad, v.total
   FROM ventas v
   JOIN clientes_productos cp ON v.id_producto = cp.id_producto
   JOIN clientes c ON cp.id_cliente = c.id
   JOIN productos p ON v.id_producto = p.id
   WHERE c.id = {ID_DEL_CLIENTE};

-- +---------------------+------------+-------------+----------+--------+
-- | fecha_venta         | cliente    | producto    | cantidad | total  |
-- +---------------------+------------+-------------+----------+--------+
-- | 2023-10-11 10:13:05 | Cliente 1  | Producto 4  | 10       | 250.00 |
-- +---------------------+------------+-------------+----------+--------+


-- Historial de Pagos por Cliente (funciona)
    USE inventario_php;
    SELECT p.numero_pago, p.fecha_pago, p.monto_pagado
    FROM pagos p
    JOIN factura f ON p.id_factura = f.id
    JOIN clientes c ON f.id_cliente = c.id
    WHERE c.id = {ID_DEL_CLIENTE};

-- +--------------+---------------------+--------------+
-- | numero_pago  | fecha_pago          | monto_pagado |
-- +--------------+---------------------+--------------+
-- | PAGO-001     | 2023-01-01 00:00:00 | 250.00       |
-- +--------------+---------------------+--------------+


-- Estado de Cuenta de Clientes (funciona)
   USE inventario_php;
   SELECT c.nombre AS cliente, ec.fecha_actualizacion, ec.saldo_pendiente
   FROM estado_de_cuenta ec
   JOIN clientes c ON ec.id_cliente = c.id;

-- +------------+-----------------------+-----------------+
-- | cliente    | fecha_actualizacion   | saldo_pendiente |
-- +------------+-----------------------+-----------------+
-- | Cliente 1  | 2023-01-01            | 0.00            |
-- | Cliente 2  | 2023-01-02            | 0.00            |
-- | Cliente 3  | 2023-01-03            | 0.00            |
-- +------------+-----------------------+-----------------+


-- Informe de Flujo de Efectivo (funciona)
   USE inventario_php;
   SELECT fecha_transaccion, tipo_transaccion, descripcion, monto
   FROM flujo_de_efectivo;

-- +---------------------+-------------------+------------------------+---------+
-- | fecha_transaccion   | tipo_transaccion  | descripcion            | monto   |
-- +---------------------+-------------------+------------------------+---------+
-- | 2023-01-01          | Ingreso           | Ingreso de efectivo 1  | 500.00  |
-- | 2023-01-02          | Egreso            | Egreso de efectivo 2   | -250.50 |
-- | 2023-01-03          | Ingreso           | Ingreso de efectivo 3  | 1000.75 |
-- +---------------------+-------------------+------------------------+---------+


-- Incidentes de Seguridad (funciona)
   USE inventario_php;
   SELECT fecha_registro_incidente, tipo_incidente, descripcion_incidente, u.nombre AS usuario
   FROM seguridad s
   JOIN usuarios u ON s.id_usuario_seguridad = u.id;

-- +--------------------------+----------------+-----------------------------+----------------------------+
-- | fecha_registro_incidente | tipo_incidente | descripcion_incidente       | usuario                    |
-- +--------------------------+----------------+-----------------------------+----------------------------+
-- | 2023-01-01 10:00:00      | Incidente 1    | Descripción del incidente 1 | Seguridad 1                |
-- | 2023-01-02 14:30:00      | Incidente 2    | Descripción del incidente 2 | Reportes y Documentación 1 |
-- | 2023-01-03 09:15:00      | Incidente 3    | Descripción del incidente 3 | Seguridad 1                |
-- +--------------------------+----------------+-----------------------------+----------------------------+


-- Informe de Costos por Equipo (funciona)
    USE inventario_php;
    SELECT e.nombre_equipo AS equipo, c.descripcion, c.monto
    FROM costos c
    JOIN equipos e ON c.id_equipo = e.id
    LIMIT 0, 25;

-- +----------+-------------+---------+
-- | equipo   | descripcion | monto   |
-- +----------+-------------+---------+
-- | Equipo 1 | Costo 1     | 500.00  |
-- | Equipo 2 | Costo 2     | 750.50  |
-- | Equipo 3 | Costo 3     | 1200.75 |
-- +----------+-------------+---------+


-- Productos caducados o vencidos
    USE inventario_php;
    SELECT p.nombre_producto, p.fecha_vencimiento
    FROM productos p
    WHERE p.productos_caducados = 1;

-- +-----------------+-------------------+
-- | nombre_producto | fecha_vencimiento |
-- +-----------------+-------------------+
-- | Producto 4      | 2023-10-01        |
-- | Producto 6      | 2023-09-15        |
-- +-----------------+-------------------+


-- Productos en preparación de pedidos
    USE inventario_php;
    SELECT pp.id_pedido, p.nombre_producto, pp.cantidad
    FROM preparacion_de_pedidos pp
    JOIN productos p ON pp.id_producto = p.id;

-- +-----------+-----------------+----------+
-- | id_pedido | nombre_producto | cantidad |
-- +-----------+-----------------+----------+
-- | 1         | Producto 4      | 50       |
-- | 2         | Producto 4      | 10       |
-- | 3         | Producto 4      | 25       |
-- +-----------+----------------+-----------+


-- Control de calidad por producto
    USE inventario_php;
    SELECT cc.fecha_control, cc.resultado, u.nombre AS usuario
    FROM control_de_calidad cc
    JOIN usuarios u ON cc.id_usuario = u.id
    WHERE cc.id_producto = {ID_DEL_PRODUCTO};

-- +----------------------+------------+---------------+
-- | fecha_control        | resultado  | usuario       |
-- +----------------------+------------+---------------+
-- | 2023-01-03 09:15:00  | Aprobado   | Recepción 1   |
-- +----------------------+------------+---------------+


-- Devoluciones de productos
    USE inventario_php;
    SELECT gd.fecha_devolucion, gd.razon, gd.reintegracion, p.nombre_producto
    FROM gestion_de_devoluciones gd
    JOIN productos p ON gd.id_producto_devuelto = p.id;

-- +---------------------+-------------------+------------------+-----------------+
-- | fecha_devolucion    | razon             | reintegracion    | nombre_producto |
-- +---------------------+-------------------+------------------+-----------------+
-- | 2023-01-01 10:00:00 | Producto dañado   |     1            | Producto 4      |
-- | 2023-01-02 14:30:00 | Pedido incorrecto |     0            | Producto 5      |
-- | 2023-01-03 09:15:00 | Producto dañado   |     1            | Producto 6      |
-- +---------------------+-------------------+------------------+-----------------+


-- Despacho de productos por destino
    USE inventario_php;
    SELECT dd.destino, COUNT(*) AS cantidad_despachada, p.nombre_producto AS producto_despachado
    FROM distribucion_y_despacho dd
    JOIN productos p ON dd.id_producto_despachado = p.id
    GROUP BY dd.destino;

-- +-------------+---------------------+---------------------+
-- | destino     | cantidad_despachada | producto_despachado |
-- +-------------+---------------------+---------------------+
-- | Cliente A   |        1            | Producto 4          |
-- | Cliente B   |        1            | Producto 5          |
-- | Cliente C   |        1            | Producto 6          |
-- +-------------+---------------------+---------------------+


-- Total de ventas por producto
    USE inventario_php;
    SELECT p.nombre_producto, SUM(v.cantidad) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    GROUP BY p.nombre_producto;

-- +-----------------+---------------+
-- | nombre_producto | total_vendido |
-- +-----------------+---------------+
-- | Producto 4      |      10       |
-- | Producto 5      |       5       |
-- | Producto 6      |       8       |
-- +----------------.+---------------+


-- Informe de Facturas Emitidas
    USE inventario_php;
    SELECT f.numero_factura, f.fecha_emision, SUM(f.monto_total) AS total_facturado
    FROM factura f
    GROUP BY f.numero_factura, f.fecha_emision;

-- +-----------------+---------------+-----------------+
-- | numero_factura  | fecha_emision | total_facturado |
-- +-----------------+---------------+-----------------+
-- | FAC-001         | 2023-01-01    | 250.00          |
-- | FAC-002         | 2023-01-02    | 252.50          |
-- | FAC-003         | 2023-01-03    | 606.00          |
-- +-----------------+---------------+-----------------+


-- Informe de Pagos Realizados
    USE inventario_php;
    SELECT p.numero_pago, p.fecha_pago, SUM(p.monto_pagado) AS total_pagado
    FROM pagos p
    GROUP BY p.numero_pago, p.fecha_pago;

-- +--------------+---------------+--------------+
-- | numero_pago  | fecha_pago    | total_pagado |
-- +--------------+---------------+--------------+
-- | PAGO-001     | 2023-01-01    | 250.00       |
-- | PAGO-002     | 2023-01-02    | 252.50       |
-- | PAGO-003     | 2023-01-03    | 606.00       |
-- +--------------+---------------+--------------+
   

-- Resumen de Flujo de Efectivo por Tipo de Transacción
    USE inventario_php;
    SELECT tipo_transaccion, SUM(monto) AS total_por_tipo
    FROM flujo_de_efectivo
    GROUP BY tipo_transaccion;

-- +------------------+------------------+
-- | tipo_transaccion |  total_por_tipo  |
-- +------------------+------------------+
-- | Egreso           |    -250.50       |
-- | Ingreso          |    1500.75       |
-- +------------------+------------------+


-- Historial de Compras por Producto
   USE inventario_php;
   SELECT p.nombre_producto, c.fecha_compra, c.total_compra
   FROM productos p
   JOIN compras c ON p.id = c.id
   WHERE p.id = {ID_DEL_PRODUCTO}; -- Reemplaza 1 con el ID del producto deseado

-- +-----------------+---------------------+--------------+
-- | nombre_producto | fecha_compra        | total_compra |
-- +-----------------+---------------------+--------------+
-- | Producto 4      | 2023-10-11 11:29:35 | 500.00       |
-- +-----------------+---------------------+--------------+


-- Productos en Pedidos Pendientes
   USE inventario_php;
   SELECT pdp.id_pedido, p.nombre_producto, pdp.cantidad
   FROM preparacion_de_pedidos pdp
   JOIN productos p ON pdp.id_producto = p.id
   WHERE pdp.estado_pedido = 1;

-- +-----------+-----------------+----------+
-- | id_pedido | nombre_producto | cantidad |
-- +-----------+-----------------+----------+
-- |    1      | Producto 4      |    50    |
-- |    3      | Producto 4      |    25    |
-- +-----------+-----------------+----------+


-- Informe de Movimientos de Inventario
   USE inventario_php;
   SELECT m.tipo_movimiento, m.fecha_movimiento, p.nombre_producto, m.cantidad
   FROM movimientos_de_inventario m
   JOIN productos p ON m.id_producto = p.id;

-- +-----------------+---------------------+-------------------+----------+---------+
-- | tipo_movimiento | fecha_movimiento    | nombre_producto   | cantidad | Ingreso |
-- +-----------------+---------------------+-------------------+----------+---------+
-- | Despacho        | 2023-10-11 15:30:53 | Producto X        | 100      |         |
-- | Despacho        | 2023-10-11 15:30:53 | Producto 5        | 120      |         |
-- | Despacho        | 2023-10-11 15:30:53 | Producto 6        | 30       |         |
-- +-----------------+---------------------+-------------------+----------+---------+

-- Clientes con Deudas Pendientes
   USE inventario_php;
   SELECT c.nombre AS cliente, ec.saldo_pendiente
   FROM estado_de_cuenta ec
   JOIN clientes c ON ec.id_cliente = c.id
   WHERE ec.saldo_pendiente > 0;

-- +-----------+------------------+
-- | cliente   | saldo_pendiente  |
-- +-----------+------------------+
-- | Cliente 2 | 100.00           |
-- +-----------+------------------+


-- Resumen de Ventas por Vendedor
   USE inventario_php;
   SELECT u.nombre AS vendedor, SUM(v.total) AS total_ventas
   FROM ventas v
   JOIN usuarios u ON v.id_usuario = u.id
   WHERE u.nivel_permisos = 13
   GROUP BY u.nombre;

-- +----------+--------------+
-- | vendedor | total_ventas |
-- +----------+--------------+
-- | Daniela  | 1108.50      |
-- +----------+--------------+


-- Informe de Despacho por Vehículo
   USE inventario_php;
   SELECT dv.fecha_despacho, v.nombre AS vehiculo, p.nombre_producto, dv.cantidad_despacho
   FROM distribucion_y_despacho dv
   JOIN vehiculos v ON dv.id_vehiculo = v.id
   JOIN productos p ON dv.id_producto_despachado = p.id;

-- +---------------------+------------+-----------------+-------------------+
-- |   fecha_despacho    |  vehiculo  | nombre_producto | cantidad_despacho |
-- +---------------------+------------+-----------------+-------------------+
-- | 2023-01-01 10:00:00 | camioneta  |   Producto X    |        78         |
-- +---------------------+------------+-----------------+-------------------+

-- Informe de Utilidad por Producto
   USE inventario_php;
   SELECT p.nombre_producto, (v.precio_venta - c.precio_compra) AS utilidad
   FROM productos p
   JOIN ventas v ON p.id = v.id_producto
   JOIN compras c ON p.id = c.id_producto;

-- +-------------------+----------+
-- | nombre_producto   | utilidad |
-- +-------------------+----------+
-- | Producto X        | 1500.00  |
-- +-------------------+----------+


-- Productos más vendidos
   USE inventario_php;
   SELECT p.nombre_producto, SUM(v.cantidad_vendida) AS total_vendido
   FROM ventas v
   JOIN productos p ON v.id_producto = p.id
   GROUP BY p.nombre_producto
   ORDER BY total_vendido DESC;

-- +------------------+-----------------------------+
-- | nombre_producto  | total_vendido Descendente 1 |
-- +------------------+-----------------------------+
-- | Producto X       | 10                          |
-- | Producto 6       | 8                           |
-- | Producto 5       | 5                           |
-- +------------------+-----------------------------+

-- Informe de Devoluciones por Cliente
   USE inventario_php;
   SELECT d.fecha_devolucion, d.razon, p.nombre_producto
   FROM gestion_de_devoluciones d
   JOIN productos p ON d.id_producto_devuelto = p.id
   WHERE d.id_usuario = {ID_DEL_CLIENTE};

-- +---------------------+-------------------+-----------------+
-- | fecha_devolucion    | razon             | nombre_producto |
-- +---------------------+-------------------+-----------------+
-- | 2023-01-02 14:30:00 | Pedido incorrecto | Producto 5      |
-- +---------------------+-------------------+-----------------+

-- Ventas por Categoría de Producto
    USE inventario_php;
    SELECT c.nombre_categoria, SUM(v.cantidad_vendida) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    JOIN categorias c ON p.id_categoria = c.id
    GROUP BY c.nombre_categoria;

-- +------------------+---------------+
-- | nombre_categoria | total_vendido |
-- +------------------+---------------+
-- | Informatica      | 10            |
-- +------------------+---------------+


-- Informe de Pedidos Pendientes
    USE inventario_php;
    SELECT pp.id_pedido, p.nombre_producto, pp.cantidad, pp.fecha_entrega_prevista
    FROM pedidos_pendientes pp
    JOIN productos p ON pp.id_producto = p.id;

-- +------------+-----------------+----------+------------------------+
-- | id_pedido  | nombre_producto | cantidad | fecha_entrega_prevista |
-- +------------+-----------------+----------+------------------------+
-- | 1          | Producto 6      | 15       | 2023-10-20             |
-- +------------+-----------------+----------+------------------------+

-- Informe de Ingresos por Período
    USE inventario_php;
    SELECT DATE_FORMAT(fecha_transaccion, '%Y-%m') AS mes, tipo_transaccion, SUM(monto) AS total_por_tipo
    FROM flujo_de_efectivo
    WHERE fecha_transaccion BETWEEN '2023-01-01' AND '2023-12-31'
    GROUP BY mes, tipo_transaccion;

-- +---------+------------------+-------------------+
-- | mes     | tipo_transaccion | total_por_tipo    |
-- +---------+------------------+-------------------+
-- | 2023-01 | Egreso           | -250.50           |
-- | 2023-01 | Ingreso          | 1500.75           |
-- +---------+------------------+-------------------+


-- Informe de Clientes más Deudores
    USE inventario_php;
    SELECT c.nombre AS cliente, ec.saldo_pendiente
    FROM estado_de_cuenta ec
    JOIN clientes c ON ec.id_cliente = c.id
    ORDER BY ec.saldo_pendiente DESC;

-- +-------------+-------------------------------+
-- | cliente     | saldo_pendiente Descendente 1 |
-- +-------------+-------------------------------+
-- | Cliente 2   | 100.00                        |
-- | Cliente 1   | 0.00                          |
-- | Cliente 3   | 0.00                          |
-- +-------------+-------------------------------+

-- Productos por Proveedor
    USE inventario_php;
    SELECT p.nombre_producto, p.cantidad
    FROM productos p
    JOIN proveedores pr ON p.id_proveedor = pr.id
    WHERE pr.id = 1;

-- +-------------------+----------+
-- | nombre_producto   | cantidad |
-- +-------------------+----------+
-- | Producto X        | 19       |
-- +-------------------+----------+


-- Productos más Vendidos por Cliente
    USE inventario_php;
    SELECT c.nombre AS cliente, p.nombre_producto, SUM(v.cantidad_vendida) AS total_vendido
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    JOIN clientes c ON v.id = c.id
    WHERE c.id = 1
    GROUP BY c.nombre, p.nombre_producto
    ORDER BY total_vendido DESC;

-- +------------+-----------------+--------------+
-- |  Cliente   | Nombre Producto | Total Vendido|
-- +------------+-----------------+--------------+
-- | Cliente 1  | Producto X      |     10       |
-- +------------+-----------------+--------------+

-- Informe de Inventario por Categoría
    USE inventario_php;
    SELECT c.nombre_categoria, SUM(p.cantidad) AS total_existencias
    FROM productos p
    JOIN categorias c ON p.id_categoria = c.id
    GROUP BY c.nombre_categoria;

-- +------------------+-------------------+
-- | Nombre Categoria | Total Existencias |
-- +------------------+-------------------+
-- | Informatica      | 19                |
-- +------------------+-------------------+

-- Total de Compras por Proveedor
    USE inventario_php;
    SELECT p.nombre AS proveedor, SUM(c.total_compra) AS total_compras
    FROM compras c
    JOIN proveedores p ON c.id_proveedor = p.id
    GROUP BY p.nombre;

-- +-------------+---------------+
-- | Proveedor   | Total Compras |
-- +-------------+---------------+
-- | Proveedor 1 | 500.00        |
-- | Proveedor 2 | 750.50        |
-- | Proveedor 3 | 1200.75       |
-- +-------------+---------------+

-- Top 10 de Clientes con Más Compras
    USE inventario_php;
    SELECT c.nombre AS cliente, COUNT(*) AS total_compras
    FROM compras co
    JOIN proveedores pr ON co.id_proveedor = pr.id
    JOIN clientes c ON pr.id_usuario = c.id
    GROUP BY c.nombre
    ORDER BY total_compras DESC
    LIMIT 10;

-- +--------------+----------------+
-- |   Cliente    | Total Compras  |
-- +--------------+----------------+
-- | Cliente 1    |       1        |
-- | Cliente 2    |       1        |
-- | Cliente 3    |       1        |
-- +--------------+----------------+

-- Detalles de Pedidos por Cliente
    USE inventario_php;
    SELECT c.nombre AS cliente, pp.id_pedido, p.nombre_producto, pp.cantidad, pp.fecha_entrega_prevista
    FROM pedidos_pendientes pp
    JOIN productos p ON pp.id_producto = p.id
    JOIN clientes c ON pp.id_usuario = c.id;

-- +-----------+-----------+-----------------+----------+------------------------+
-- | Cliente   | ID Pedido | Nombre Producto | Cantidad | Fecha Entrega Prevista |
-- +-----------+-----------+-----------------+----------+------------------------+
-- | Cliente 1 |     1     |   Producto 6    |     15   |     2023-10-20         |
-- +-----------+-----------+-----------------+----------+------------------------+


-- Ventas por Mes y Año
    USE inventario_php;
    SELECT DATE_FORMAT(v.fecha_venta, '%Y-%m') AS mes, SUM(v.total) AS total_ventas
    FROM ventas v
    GROUP BY mes
    ORDER BY mes;

-- +---------+--------------+
-- |  Mes    | Total Ventas |
-- +---------+--------------+
-- | 2023-10 |    883.50    |
-- +---------+--------------+

-- Productos con Mayor Margen de Ganancia
    USE inventario_php;
    SELECT p.nombre_producto, (v.precio_venta - c.precio_compra) AS margen_ganancia
    FROM productos p
    JOIN ventas v ON p.id = v.id_producto
    JOIN compras c ON p.id = c.id_producto
    ORDER BY margen_ganancia DESC
    LIMIT 10;

-- +-----------------+-----------------+
-- | Nombre Producto | Margen Ganancia |
-- +-----------------+-----------------+
-- |  Producto X     |    1500.00      |
-- +-----------------+-----------------+

-- Productos con Mayor Rotación
    USE inventario_php;
    SELECT p.nombre_producto, SUM(v.cantidad_venta) AS total_vendido, p.cantidad AS existencias_iniciales
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id
    GROUP BY p.nombre_producto, existencias_iniciales
    ORDER BY (SUM(v.cantidad_venta) / p.cantidad) DESC
    LIMIT 10;

-- +------------------+---------------+-----------------------+
-- | Nombre Producto  | Total Vendido | Existencias Iniciales |
-- +------------------+---------------+-----------------------+
-- |   Producto X     |      10       |          19           |
-- |   Producto 5     |      5        |          30           |
-- |   Producto 6     |      8        |          60           |
-- +------------------+---------------+-----------------------+

-- Informe de Productos por Ubicación
    USE inventario_php;
    SELECT ubicacion, COUNT(*) AS cantidad_productos
    FROM productos
    GROUP BY ubicacion;

-- +--------------+-------------------+
-- | Ubicación    | Cantidad Productos|
-- +--------------+-------------------+
-- | Ubicación D  |        1          |
-- | Ubicación E  |        1          |
-- | Ubicación F  |        1          |
-- +--------------+-------------------+

-- Productos por Tipo de Producto
    USE inventario_php;
    SELECT tp.nombre_categoria, COUNT(*) AS cantidad_productos
    FROM productos p
    JOIN categorias tp ON p.id = tp.id
    GROUP BY tp.nombre_categoria;

-- +----------------------+--------------------+
-- | Nombre Categoría     | Cantidad Productos |
-- +----------------------+--------------------+
-- | Alimentación         |         1          |
-- | Informática          |         1          |
-- | Ropa                 |         1          |
-- +----------------------+--------------------+    

-- Consulta para obtener todos los productos en el inventario
    USE inventario_php;
    SELECT * FROM productos;

-- +-----+-----------------+----------+---------------+--------------+--------------------+----------------------+--------------+---------------------+----------------+---------------------+---------------------+---------------------+--------------+
-- | id  | nombre_producto | cantidad | ubicacion     | id_historial | id_usuario_ingreso | id_usuario_despacho  | id_proveedor | fecha_ingreso       | fecha_despacho | existencias_minimas | fecha_vencimiento   | productos_caducados | id_categoria |
-- +-----+-----------------+----------+---------------+--------------+--------------------+----------------------+--------------+---------------------+----------------+---------------------+---------------------+---------------------+--------------+
-- |  1  |  Producto X     |    19    |  Ubicación D  |       4      |          4         |          0           |       1      | 2023-01-01 10:00:00 |        NULL    |         50          |  2023-10-01         |           1         |       1      |
-- |  2  |  Producto 5     |    30    |  Ubicación E  |       5      |          5         |          0           |       2      | 2023-01-02 14:30:00 |        NULL    |         50          |  2023-12-31         |           0         |     NULL     |
-- |  3  |  Producto 6     |    60    |  Ubicación F  |       6      |          6         |          0           |       3      | 2023-01-03 09:15:00 |        NULL    |         50          |  2023-09-15         |           1         |     NULL     |
-- +-----+-----------------+----------+---------------+--------------+--------------------+----------------------+--------------+---------------------+----------------+---------------------+---------------------+---------------------+--------------+

-- Consulta para obtener el historial de eventos de un producto específico
    USE inventario_php;
    SELECT * FROM historial_productos WHERE id_producto = 1;

-- +-----+-------------+----------------------+----------------------+--------------------+------------------------+
-- | id  | id_producto | tipo_evento          | fecha_hora           | id_usuario_ingreso | id_usuario_despacho    |
-- +-----+-------------+----------------------+----------------------+--------------------+------------------------+
-- |  1  |       1     |   Despacho           | 2023-10-12 07:49:32  |        4           |          6             |
-- +-----+-------------+----------------------+----------------------+--------------------+------------------------+


-- Consulta para obtener la lista de usuarios con su nivel de acceso
    USE inventario_php;
    SELECT u.nombre, n.descripcion FROM usuarios u
    JOIN niveles_de_usuario n ON u.id = n.id;

-- +-----------------------------+---------------------------------+
-- | nombre                      | descripcion                     |
-- +-----------------------------+---------------------------------+
-- | Miguel                      | Administrador                   |
-- | Técnico 1                   | Técnico                         |
-- | Recepción 1                 | Recepción de Mercancías         |
-- | Almacenamiento 1            | Almacenamiento                  |
-- | Gestión de Inventarios 1    | Gestión de Inventarios          |
-- | Preparación de Pedidos 1    | Preparación de Pedidos          |
-- | Control de Calidad 1        | Control de Calidad              |
-- | Gestión de Devoluciones 1   | Gestión de Devoluciones         |
-- | Distribución y Despacho 1   | Distribución y Despacho         |
-- | Mantenimiento de Equipos 1  | Mantenimiento de Equipos        |
-- | Seguridad 1                 | Seguridad                       |
-- | Reportes y Documentación 1  | Documentacion y Reportes        |
-- | Daniela                     | Vendedor                        |
-- | Joaquin                     | Cliente                         |
-- +-----------------------------+---------------------------------+
    
-- Consulta para obtener la cantidad total de productos en el inventario
    USE inventario_php;
    SELECT SUM(cantidad) AS cantidad_total FROM productos;

-- +------------------+
-- | cantidad_total   |
-- +------------------+
-- | 109              |
-- +------------------+

-- Consulta para obtener los productos que están por debajo de un cierto nivel de stock
    USE inventario_php;
    SELECT * FROM productos WHERE cantidad < 50;

-- +----+-----------------+----------+-------------+--------------+--------------------+---------------------+--------------+------------------------+------------------------+-----------------------+----------------------+---------------------+---------------+
-- | id | nombre_producto | cantidad | ubicacion   | id_historial | id_usuario_ingreso | id_usuario_despacho | id_proveedor | fecha_ingreso          | fecha_despacho         | existencias_minimas   | fecha_vencimiento    | productos_caducados | id_categoria  |
-- +----+-----------------+----------+-------------+--------------+--------------------+---------------------+--------------+------------------------+------------------------+-----------------------+----------------------+---------------------+---------------+
-- | 1  | Producto X      | 19       | Ubicación D | 4            | 4                  | 0                   | 1            | 2023-01-01 10:00:00    | NULL                   | 50                    | 2023-10-01           | 1                   | 1             |
-- | 2  | Producto 5      | 30       | Ubicación E | 5            | 5                  | 0                   | 2            | 2023-01-02 14:30:00    | NULL                   | 50                    | 2023-12-31           | 0                   | NULL          |
-- +----+-----------------+----------+-------------+--------------+--------------------+---------------------+--------------+------------------------+------------------------+-----------------------+----------------------+---------------------+---------------+

-- Consulta para obtener los eventos de recepción de mercancías en un rango de fechas
    USE inventario_php;
    SELECT * FROM recepcion_de_mercancias
    WHERE fecha_recepcion BETWEEN '2023-01-01' AND '2023-02-28';

-- +----+---------------------+----------+----------+-------------+--------------+------------+-------------+--------------+----------------+
-- | id | fecha_recepcion     | cantidad | calidad  | documentos  | ubicacion    | id_usuario | id_producto | id_historial | observaciones  |
-- +----+---------------------+----------+----------+-------------+--------------+------------+-------------+--------------+----------------+
-- | 2  | 2023-01-02 14:30:00 | 30       | Regular  | Factura 456 | Ubicación E  | 5          | 2           | 2            | NULL           |
-- | 3  | 2023-01-03 09:15:00 | 60       | Buena    | Factura 789 | Ubicación F  | 6          | 3           | 3            | NULL           |
-- +----+---------------------+----------+----------+-------------+--------------+------------+-------------+--------------+----------------+


-- Consulta para obtener el nombre del usuario que realizó el último despacho de un producto
    USE inventario_php;
    SELECT u.nombre FROM usuarios u
    JOIN historial_productos h ON u.id = h.id_usuario_despacho
    WHERE h.id_producto = 1
    ORDER BY h.fecha_hora DESC
    LIMIT 1;

-- +-----------------------------+
-- | nombre                      |
-- +-----------------------------+
-- | Preparación de Pedidos 1    |
-- +-----------------------------+


-- Consulta para obtener la ubicación actual de un producto específico
    SELECT ubicacion_actual FROM almacenamiento
    WHERE id_producto = 1
    ORDER BY fecha_almacenamiento DESC
    LIMIT 1;

-- +------------------+
-- | ubicacion_actual |
-- +------------------+
-- | Ubicación D      |
-- +------------------+
   
-- Consulta para obtener los productos que han experimentado cambios en su ubicación en un rango de fechas
    USE inventario_php;
    SELECT DISTINCT a.id_producto, p.nombre_producto, a.ubicacion_actual, a.fecha_almacenamiento
    FROM almacenamiento a
    JOIN productos p ON a.id_producto = p.id
    WHERE fecha_almacenamiento BETWEEN '2023-10-01' AND '2023-10-04';

-- +-------------+------------------+------------------+----------------------+
-- | id_producto | nombre_producto  | ubicacion_actual | fecha_almacenamiento |
-- +-------------+------------------+------------------+----------------------+
-- | 1           | Producto X       | Ubicación D      | 2023-01-01 10:00:00  |
-- | 2           | Producto 5       | Ubicación E      | 2023-01-02 14:30:00  |
-- | 3           | Producto 6       | Ubicación F      | 2023-01-03 09:15:00  |
-- +-------------+------------------+------------------+----------------------+

-- Consulta para obtener la lista de usuarios con acceso a la configuración del sistema (si aplica)
        USE inventario_php;
        SELECT u.nombre, c.tiene_acceso
        FROM usuarios u
        LEFT JOIN acceso_a_configuracion_del_sistema c ON u.id = c.id_usuario;

-- +-------------------------------+--------------+
-- | nombre                        | tiene_acceso |
-- +-------------------------------+--------------+
-- | Miguel                        | 1            |
-- | Técnico 1                     | 0            |
-- | Recepción 1                   | 1            |
-- | Almacenamiento 1              | NULL         |
-- | Gestión de Inventarios 1      | NULL         |
-- | Preparación de Pedidos 1      | NULL         |
-- | Control de Calidad 1          | NULL         |
-- | Gestión de Devoluciones 1     | NULL         |
-- | Distribución y Despacho 1     | NULL         |
-- | Mantenimiento de Equipos 1    | NULL         |
-- | Seguridad 1                   | NULL         |
-- | Reportes y Documentación 1    | NULL         |
-- | Daniela                       | NULL         |
-- | Joaquin                       | NULL         |
-- +-------------------------------+--------------+

-- Consulta para obtener el historial completo de eventos de un producto específico (ingresos y despachos)
        SELECT * FROM historial_productos WHERE id_producto = 1
        ORDER BY fecha_hora;

-- +----+-------------+-------------+---------------------+--------------------+---------------------+
-- | id | id_producto | tipo_evento |     fecha_hora      | id_usuario_ingreso | id_usuario_despacho |
-- +----+-------------+-------------+---------------------+--------------------+---------------------+
-- |  1 |         1   | Despacho    | 2023-10-12 07:49:32 |                4   |                 6   |
-- +----+-------------+-------------+---------------------+--------------------+---------------------+



-- Procedimientos: Estos procedimientos te permiten realizar las funciones relacionadas con los procesos de la base de datos. 
-- Asegúrate de personalizar los valores según tus necesidades y los detalles específicos de cada transacción o registro.

-- Proceso de Ingreso de Productos (Recepción de Mercancías):

-- Tablas involucradas: productos, historial_productos, recepcion_de_mercancias
-- Funciones:
-- Al recibir mercancías, se registran los detalles de los productos en la tabla productos, incluyendo su ubicación, 
-- cantidad, fecha de ingreso, etc.
-- Registro de un Producto en la Tabla productos al recibir mercancías

    INSERT INTO productos (nombre_producto, cantidad, ubicacion, id_historial, id_usuario_ingreso, fecha_ingreso, existencias_minimas, fecha_vencimiento, productos_caducados, id_categoria, id_proveedor)
    VALUES ('Nombre del Producto', 100, 'Ubicación de Almacenamiento', 1, 2, NOW(), 10, '2023-12-31', 0, 1, 1);

-- Se registra el evento de ingreso en la tabla historial_productos.
-- Registro del Evento de Ingreso en la Tabla historial_productos

    INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_ingreso, id_usuario_despacho)
    VALUES (1, 'Ingreso', NOW(), 2, NULL);

-- Los detalles específicos de la recepción, como la cantidad recibida, la calidad, los documentos, el usuario 
-- responsable y observaciones, se registran en la tabla recepcion_de_mercancias.
-- Registro de los Detalles de la Recepción en la Tabla recepcion_de_mercancias

    INSERT INTO recepcion_de_mercancias (fecha_recepcion, cantidad, calidad, documentos, ubicacion, id_usuario, id_producto, id_historial, observaciones)
    VALUES (NOW(), 100, 'Buena', 'Factura #123', 'Ubicación de Recepción', 2, 1, 1, 'Sin problemas detectados.');



-- Proceso de Almacenamiento de Productos:

-- Tablas involucradas: productos, historial_productos, almacenamiento
-- Funciones:
-- Cuando se almacenan productos, se actualiza la ubicación actual en la tabla productos.

-- Actualización de la Ubicación Actual en la Tabla productos al almacenar productos
UPDATE productos
SET ubicacion = 'Nueva Ubicación de Almacenamiento'
WHERE id = 1; -- Reemplaza con el ID del producto que se está almacenando

-- Se registra el evento de almacenamiento en la tabla historial_productos.

-- Registro del Evento de Almacenamiento en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_ingreso, id_usuario_despacho)
VALUES (1, 'Almacenamiento', NOW(), 2, NULL); -- Reemplaza con el ID del producto que se está almacenando

-- Los detalles del almacenamiento, como la ubicación actual, el usuario responsable y el historial, 
-- se registran en la tabla almacenamiento.

-- Registro de los Detalles del Almacenamiento en la Tabla almacenamiento
INSERT INTO almacenamiento (id_producto, ubicacion_actual, fecha_almacenamiento, id_historial, id_usuario)
VALUES (1, 'Nueva Ubicación de Almacenamiento', NOW(), 1, 2); -- Reemplaza con los valores específicos


-- Proceso de Gestión de Inventarios:

-- Tablas involucradas: productos, historial_productos, gestion_de_inventarios
-- Funciones:
-- Se realiza un seguimiento de las existencias mínimas, existencias máximas y productos caducados en la 
-- tabla gestion_de_inventarios.

-- Registro de Seguimiento en la Tabla gestion_de_inventarios
INSERT INTO gestion_de_inventarios (fecha_inventario, existencias_minimas, existencias_maximas, productos_caducados, id_producto, id_historial, id_usuario)
VALUES (NOW(), 10, 100, 0, 1, 1, 2); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos para monitorear los productos.
-- Puedes realizar consultas SQL en la tabla productos para obtener información relacionada con la gestión de inventarios.

-- Se registra el usuario responsable de la gestión.

-- Registro del Usuario Responsable de la Gestión en la Tabla gestion_de_inventarios
UPDATE gestion_de_inventarios
SET id_usuario = 2 -- Reemplaza con el ID del usuario responsable
WHERE id = 1; -- Reemplaza con el ID del registro de gestión de inventarios


-- Proceso de Venta de Productos:

-- Tablas involucradas: productos, historial_productos, ventas
-- Funciones:
-- Cuando se realiza una venta, se registran los detalles en la tabla ventas.

-- Registro de Detalles de la Venta en la Tabla ventas
INSERT INTO ventas (fecha_venta, id_producto, cantidad, precio_venta, cantidad_venta, precio_unitario, total, id_usuario)
VALUES (NOW(), 1, 10, 15.99, 10, 15.99, 159.90, 2); -- Reemplaza con los valores específicos

-- Se actualiza la cantidad de productos disponibles en la tabla productos.

-- Actualización de la Cantidad de Productos Disponibles en la Tabla productos al realizar una venta
UPDATE productos
SET cantidad = cantidad - 10 -- Reemplaza con la cantidad vendida
WHERE id = 1; -- Reemplaza con el ID del producto vendido

-- Se relaciona con el historial de productos en la tabla historial_productos.

-- Registro del Evento de Despacho en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_despacho)
VALUES (1, 'Despacho', NOW(), 2); -- Reemplaza con el ID del producto vendido

-- Se registra el usuario que realiza la venta.

-- Registro del Usuario Responsable de la Venta en la Tabla ventas
UPDATE ventas
SET id_usuario = 2 -- Reemplaza con el ID del usuario responsable
WHERE id = 1; -- Reemplaza con el ID del registro de venta



-- Proceso de Control de Calidad:

-- Tablas involucradas: productos, historial_productos, control_de_calidad
-- Funciones:
-- Se realiza una evaluación de calidad de los productos en la tabla control_de_calidad.

-- Registro de Evaluación de Calidad en la Tabla control_de_calidad
INSERT INTO control_de_calidad (fecha_control, resultado, id_producto, id_historial, id_usuario, observaciones)
VALUES (NOW(), 'Aprobado', 1, 1, 2, 'Cumple con las normas de calidad.'); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos y el historial en historial_productos.

-- Registro del Evento de Control de Calidad en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_despacho)
VALUES (1, 'Control de Calidad', NOW(), 2); -- Reemplaza con el ID del producto evaluado

-- Se registra el resultado de la evaluación, el usuario responsable y observaciones.

-- Registro del Usuario Responsable y Observaciones en la Tabla control_de_calidad
UPDATE control_de_calidad
SET id_usuario = 2, observaciones = 'Evaluación completa y satisfactoria.'
WHERE id = 1; -- Reemplaza con el ID del registro de control de calidad


-- Proceso de Preparación de Pedidos:

-- Tablas involucradas: productos, historial_productos, preparacion_de_pedidos
-- Funciones:
-- Se preparan pedidos registrando los productos y cantidades en la tabla preparacion_de_pedidos.

-- Registro de Productos en Preparación de Pedidos en la Tabla preparacion_de_pedidos
INSERT INTO preparacion_de_pedidos (id_pedido, id_producto, cantidad, id_historial, id_usuario, estado_pedido)
VALUES (1, 1, 10, 1, 2, 2); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos y el historial en historial_productos.

-- Registro del Evento de Preparación de Pedidos en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_despacho)
VALUES (1, 'Preparación de Pedidos', NOW(), 2); -- Reemplaza con el ID del producto preparado

-- Se registra el usuario responsable y el estado del pedido.

-- Registro del Usuario Responsable y Estado del Pedido en la Tabla preparacion_de_pedidos
UPDATE preparacion_de_pedidos
SET id_usuario = 2, estado_pedido = 2
WHERE id = 1; -- Reemplaza con el ID del registro de preparación de pedidos



-- Proceso de Distribución y Despacho:

-- Tablas involucradas: productos, historial_productos, distribucion_y_despacho
-- Funciones:
-- Se registran los detalles de la distribución y despacho en la tabla distribucion_y_despacho.

-- Registro de Detalles de Distribución y Despacho en la Tabla distribucion_y_despacho
INSERT INTO distribucion_y_despacho (fecha_despacho, destino, cantidad_despacho, id_producto_despachado, id_historial, id_usuario, id_vehiculo)
VALUES (NOW(), 'Cliente ABC', 10, 1, 1, 2, 1); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos y el historial en historial_productos.

-- Registro del Evento de Distribución y Despacho en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_despacho)
VALUES (1, 'Distribución y Despacho', NOW(), 2); -- Reemplaza con el ID del producto despachado

-- Se registra el usuario responsable, el destino y el vehículo.

-- Registro del Usuario Responsable, Destino y Vehículo en la Tabla distribucion_y_despacho
UPDATE distribucion_y_despacho
SET id_usuario = 2, destino = 'Cliente XYZ', id_vehiculo = 2
WHERE id = 1; -- Reemplaza con el ID del registro de distribución y despacho



-- Proceso de Gestión de Devoluciones:

-- Tablas involucradas: productos, historial_productos, gestion_de_devoluciones
-- Funciones:
-- Cuando se gestionan devoluciones, se registran los detalles en la tabla gestion_de_devoluciones.

-- Registro de Detalles de Devolución en la Tabla gestion_de_devoluciones
INSERT INTO gestion_de_devoluciones (fecha_devolucion, razon, reintegracion, id_producto_devuelto, id_historial, id_usuario, cantidad_devuelta, observaciones)
VALUES (NOW(), 'Producto defectuoso', 1, 1, 1, 2, 5, 'Cliente reportó daño en los productos.'); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos y el historial en historial_productos.

-- Registro del Evento de Devolución en la Tabla historial_productos
INSERT INTO historial_productos (id_producto, tipo_evento, fecha_hora, id_usuario_despacho)
VALUES (1, 'Gestión de Devoluciones', NOW(), 2); -- Reemplaza con el ID del producto devuelto

-- Se registra el usuario responsable, la cantidad devuelta y observaciones.

-- Actualización del Usuario Responsable, Cantidad Devuelta y Observaciones en la Tabla gestion_de_devoluciones
UPDATE gestion_de_devoluciones
SET id_usuario = 2, cantidad_devuelta = 10, observaciones = 'Cliente devolvió productos por error de pedido.'
WHERE id = 1; -- Reemplaza con el ID del registro de devolución


-- Proceso de Compra de Productos:

-- Tablas involucradas: productos, historial_productos, compras, proveedores
-- Funciones:
-- Cuando se realiza una compra de productos, se registran los detalles de la compra en la tabla compras.

-- Registro de Detalles de Compra en la Tabla compras
INSERT INTO compras (fecha_compra, id_proveedor, total_compra, id_usuario, precio_compra, cantidad_compra, id_producto)
VALUES (NOW(), 1, 500.00, 2, 10.00, 50, 1); -- Reemplaza con los valores específicos

-- Se relaciona con la tabla productos para actualizar las existencias y el precio de compra.

-- Actualización de Existencias y Precio de Compra en la Tabla productos
UPDATE productos
SET cantidad = cantidad + 50, precio_compra = 10.00
WHERE id = 1; -- Reemplaza con el ID del producto comprado

-- Se registra el proveedor, la cantidad comprada, el precio de compra y el usuario responsable.

-- Registro del Proveedor, Cantidad Comprada, Precio de Compra y Usuario Responsable en la Tabla compras
UPDATE compras
SET id_proveedor = 1, cantidad_compra = 100, precio_compra = 9.50, id_usuario = 2
WHERE id = 1; -- Reemplaza con el ID del registro de compra


-- Proceso de Mantenimiento de Equipos:

-- Tablas involucradas: equipos, costos
-- Funciones:
-- Cuando se realiza el mantenimiento de equipos o activos, se registran los detalles en la tabla equipos.

-- Registro de Detalles de Mantenimiento en la Tabla equipos
INSERT INTO equipos (nombre_equipo, descripcion_equipo, fecha_adquisicion, ubicacion_actual, estado)
VALUES ('Equipo de Prueba', 'Descripción del Mantenimiento', '2023-10-01', 'Ubicación Actual', 'Operativo');

-- Se relaciona con la tabla costos para registrar los costos asociados al mantenimiento.

-- Registro de Costos Asociados al Mantenimiento en la Tabla costos
INSERT INTO costos (descripcion, monto, fecha_registro, id_usuario, id_equipo)
VALUES ('Mantenimiento de Equipo de Prueba', 500.00, NOW(), 2, 1); -- Reemplaza con los valores específicos

-- Se registra la fecha de mantenimiento, la descripción, el costo y el usuario responsable.

-- Registro de la Fecha de Mantenimiento, Descripción, Costo y Usuario Responsable en la Tabla equipos
UPDATE equipos
SET fecha_adquisicion = '2023-10-01', descripcion_equipo = 'Descripción Actualizada', estado = 'En mantenimiento'
WHERE id = 1; -- Reemplaza con el ID del equipo que se está manteniendo


-- Proceso de Seguridad y Registro de Incidentes:

-- Tablas involucradas: seguridad
-- Funciones:
-- Para mantener la seguridad, se registran los incidentes o eventos de seguridad en la tabla seguridad.

-- Registro de Incidentes de Seguridad en la Tabla seguridad
INSERT INTO seguridad (tipo_incidente, descripcion_incidente, id_usuario_seguridad)
VALUES ('Incidente de Seguridad', 'Descripción detallada del incidente', 2); -- Reemplaza con los valores específicos

-- Se registran detalles como el tipo de incidente, la descripción y el usuario de seguridad responsable.


-- Proceso de Reportes y Documentación:

-- Tablas involucradas: reportes_y_documentacion
-- Funciones:
-- Para gestionar reportes y documentación, se registran detalles en la tabla reportes_y_documentacion.

-- Registro de Detalles de Reportes y Documentación en la Tabla reportes_y_documentacion
INSERT INTO reportes_y_documentacion (tipo_documento, descripcion_documento, id_usuario_reportes)
VALUES ('Informe Mensual', 'Informe detallado de las operaciones mensuales', 2); -- Reemplaza con los valores específicos

-- Se registran detalles del tipo de documento, la descripción y el usuario responsable.


-- Proceso de Control de Acceso a la Configuración del Sistema:

-- Tablas involucradas: acceso_a_configuracion_del_sistema
-- Funciones:
-- Si es necesario, puedes implementar un proceso para controlar el acceso a la configuración del sistema y mantener registros de usuarios con acceso.

-- Registro de Acceso a la Configuración del Sistema en la Tabla acceso_a_configuracion_del_sistema
INSERT INTO acceso_a_configuracion_del_sistema (id_usuario, tiene_acceso)
VALUES (2, true); -- Reemplaza con los valores específicos

-- Se registra si un usuario tiene acceso a la configuración del sistema.


-- Proceso de Registro de Usuarios:

-- Tablas involucradas: usuarios
-- Funciones:
-- Registrar nuevos usuarios en la tabla usuarios, incluyendo detalles como nombre, apellido, usuario, teléfono, email, contraseña y nivel de permisos.

-- Registro de un Nuevo Usuario en la Tabla usuarios
INSERT INTO usuarios (nombre, apellido, usuario, telefono, email, contrasena, nivel_permisos)
VALUES ('Nombre', 'Apellido', 'nombreusuario', '123456789', 'correo@ejemplo.com', 'contrasena', 3); -- Reemplaza con los valores específicos

-- Se registra un nuevo usuario con su información personal y nivel de permisos.



-- Proceso de Registro de Vehículos:

-- Tablas involucradas: vehiculos
-- Funciones:
-- Registrar información detallada de vehículos en la tabla vehiculos, incluyendo nombre, descripción, marca, modelo, año, placa, color, capacidad y disponibilidad.

-- Registro de un Nuevo Vehículo en la Tabla vehiculos
INSERT INTO vehiculos (nombre, descripcion, marca, modelo, ano, placa, color, capacidad, disponible)
VALUES ('Vehículo 1', 'Descripción del vehículo 1', 'Marca 1', 'Modelo 1', 2023, 'XYZ123', 'Rojo', 5, 1); -- Reemplaza con los valores específicos

-- Se registra un nuevo vehículo con información detallada, incluyendo nombre, descripción, marca, modelo, año, placa, color, capacidad y disponibilidad.


-- Procedimientos:

-- Proceso de Registro de Niveles de Usuario:

-- Tablas involucradas: niveles_de_usuario
-- Funciones:
-- Registrar los niveles de usuario en la tabla niveles_de_usuario con descripciones específicas de cada nivel, como "Administrador" o "Cliente".

-- Registro de Nuevos Niveles de Usuario en la Tabla niveles_de_usuario
INSERT INTO niveles_de_usuario (descripcion)
VALUES
    ('Chofer');

-- Se registran los diferentes niveles de usuario con descripciones específicas en la tabla niveles_de_usuario.


-- Proceso de Gestión de Clientes:

-- Tabla involucrada: clientes
-- Funciones:
-- Registrar información de clientes, como nombre, contacto, teléfono, email, dirección y relacionarlos con usuarios en la tabla clientes.

-- Registro de un Nuevo Cliente en la Tabla clientes
INSERT INTO clientes (nombre, contacto, telefono, email, direccion, id_usuario)
VALUES ('Nombre del Cliente', 'Contacto del Cliente', '123-456-7890', 'cliente@email.com', 'Dirección del Cliente', 1);

-- En el ejemplo anterior, se ha registrado un nuevo cliente en la tabla clientes. 
-- Puedes personalizar los valores según la información del cliente que deseas registrar.

-- También puedes relacionar este cliente con un usuario existente a través de la columna "id_usuario".


-- Proceso de Facturación:

-- Tablas involucradas: factura
-- Funciones:
-- Registrar facturas emitidas en la tabla factura con detalles como número de factura, fecha de emisión y monto total.

-- Registro de una Nueva Factura en la Tabla factura
INSERT INTO factura (numero_factura, fecha_emision, descripcion, monto_total, id_cliente)
VALUES ('FAC-001', '2023-10-13', 'Descripción de la factura', 1000.00, 1);

-- En el ejemplo anterior, se ha registrado una nueva factura en la tabla factura. 
-- Puedes personalizar los valores según los detalles de la factura que deseas registrar.

-- Proceso de Pagos:

-- Tablas involucradas: pagos, estado_de_cuenta, historial_de_pagos
-- Funciones:
-- Registrar pagos recibidos en la tabla pagos con detalles como número de pago, fecha de pago y monto pagado.
-- Mantener un registro del estado de cuenta de los clientes en la tabla estado_de_cuenta, actualizando el saldo pendiente.
-- Registrar el historial de pagos en la tabla historial_de_pagos para un seguimiento detallado.

-- Registro de un Nuevo Pago en la Tabla pagos
INSERT INTO pagos (numero_pago, fecha_pago, monto_pagado, id_factura)
VALUES ('PAGO-001', '2023-10-20', 500.00, 1);

-- Actualización del Saldo Pendiente en la Tabla estado_de_cuenta
-- El siguiente procedimiento SQL asume que tienes una columna "saldo_pendiente" en la tabla "estado_de_cuenta".

UPDATE estado_de_cuenta
SET saldo_pendiente = saldo_pendiente - 500.00
WHERE id_cliente = 1;

-- Registro del Pago en el Historial de Pagos en la Tabla historial_de_pagos
INSERT INTO historial_de_pagos (fecha_pago, monto_pagado, id_cliente)
VALUES ('2023-10-20', 500.00, 1);

-- En los ejemplos anteriores, se ha registrado un nuevo pago en la tabla pagos y se ha actualizado el saldo pendiente
-- del cliente en la tabla estado_de_cuenta. También se ha registrado el pago en el historial de pagos en la tabla 
-- historial_de_pagos.

-- Asegúrate de personalizar los valores según los detalles de la factura y el pago que deseas registrar.


-- Proceso de Asignación de Vehículos:

-- Tablas involucradas: movimientos_vehiculos
-- Funciones:
-- Registrar movimientos de asignación de vehículos en la tabla movimientos_vehiculos con detalles como tipo de movimiento, fecha, cantidad de combustible y usuario responsable.

-- Registro de una Asignación de Vehículo en la Tabla movimientos_vehiculos
INSERT INTO movimientos_vehiculos (id_vehiculo, tipo_movimiento, fecha_movimiento, cantidad_combustible, id_usuario)
VALUES (1, 'Asignación', NOW(), 50.00, 2);

-- En el ejemplo anterior, se ha registrado una asignación de vehículo en la tabla movimientos_vehiculos. Puedes personalizar los valores según los detalles de la asignación.

-- Proceso de Desasignación de Vehículos:

-- Tablas involucradas: movimientos_vehiculos
-- Funciones:
-- Registrar movimientos de desasignación de vehículos en la tabla movimientos_vehiculos con detalles como tipo de movimiento, fecha, cantidad de combustible y usuario responsable.

-- Registro de una Desasignación de Vehículo en la Tabla movimientos_vehiculos
INSERT INTO movimientos_vehiculos (id_vehiculo, tipo_movimiento, fecha_movimiento, cantidad_combustible, id_usuario)
VALUES (1, 'Desasignación', NOW(), 10.00, 2);

-- En el ejemplo anterior, se ha registrado una desasignación de vehículo en la tabla movimientos_vehiculos. Personaliza los valores según los detalles de la desasignación.

-- Asegúrate de utilizar los valores adecuados para los campos y las tablas según tus necesidades y los detalles específicos de los movimientos de asignación y desasignación de vehículos.







-- ***********************************************************************

-- Registro de Compras:

-- Tablas involucradas: compras, productos
-- Funciones:
-- Registrar compras de productos en la tabla compras, incluyendo proveedor, cantidad, precio de compra y detalles de los productos adquiridos.

-- Registro de una Compra en la Tabla compras
INSERT INTO compras (fecha_compra, id_proveedor, total_compra, id_usuario, precio_compra, cantidad_compra, id_producto)
VALUES (NOW(), 1, 500.00, 2, 5.00, 100, 1);

-- En el ejemplo anterior, se ha registrado una compra en la tabla compras. Personaliza los valores según los detalles de la compra.


-- Registro de Ventas:

-- Tablas involucradas: ventas, productos
-- Funciones:
-- Registrar ventas de productos en la tabla ventas, incluyendo cantidad, precio de venta y detalles de los productos vendidos.

-- Registro de una Venta en la Tabla ventas
INSERT INTO ventas (fecha_venta, id_producto, cantidad, precio_venta, cantidad_venta, precio_unitario, total, id_usuario)
VALUES (NOW(), 1, 50, 10.00, 50, 10.00, 500.00, 2);

-- En el ejemplo anterior, se ha registrado una venta en la tabla ventas. Personaliza los valores según los detalles de la venta.

-- Gestión de Proveedores:

-- Tabla involucrada: proveedores
-- Funciones:
-- Administrar y gestionar la información de proveedores en la tabla proveedores, incluyendo nombre, contacto, teléfono, email y dirección.

-- Registro de un Nuevo Proveedor en la Tabla proveedores
INSERT INTO proveedores (nombre, contacto, telefono, email, direccion, id_usuario)
VALUES ('Nombre del Proveedor', 'Contacto del Proveedor', '123-456-7890', 'proveedor@email.com', 'Dirección del Proveedor', 2);

-- En el ejemplo anterior, se ha registrado un nuevo proveedor en la tabla proveedores. Personaliza los valores según los detalles del proveedor.

-- Gestión de Facturas y Pagos:

-- Tablas involucradas: factura, pagos, estado_de_cuenta, historial_de_pagos
-- Funciones:
-- Registrar facturas emitidas en la tabla factura y pagos recibidos en la tabla pagos, con un seguimiento detallado en el estado de cuenta y el historial de pagos de los clientes.

-- Registro de una Factura en la Tabla factura
INSERT INTO factura (numero_factura, fecha_emision, descripcion, monto_total, id_cliente)
VALUES ('F2023-001', '2023-10-01', 'Factura de ejemplo', 1000.00, 1);

-- Registro de un Pago en la Tabla pagos
INSERT INTO pagos (numero_pago, fecha_pago, monto_pagado, id_factura)
VALUES ('P2023-001', '2023-10-15', 500.00, 1);

-- Registro de un Estado de Cuenta en la Tabla estado_de_cuenta
INSERT INTO estado_de_cuenta (fecha_actualizacion, saldo_pendiente, id_cliente)
VALUES ('2023-10-15', 500.00, 1);

-- Registro de un Historial de Pagos en la Tabla historial_de_pagos
INSERT INTO historial_de_pagos (fecha_pago, monto_pagado, id_cliente)
VALUES ('2023-10-15', 500.00, 1);

-- En los ejemplos anteriores, se ha registrado una factura, un pago, un estado de cuenta y un historial de pagos. Personaliza los valores según los detalles de la factura y el pago.

-- Seguimiento de Flujo de Efectivo:

-- Tabla involucrada: flujo_de_efectivo
-- Funciones:
-- Registrar transacciones de flujo de efectivo en la tabla flujo_de_efectivo, incluyendo fecha, tipo de transacción, descripción y monto.

-- Registro de una Transacción de Flujo de Efectivo en la Tabla flujo_de_efectivo
INSERT INTO flujo_de_efectivo (fecha_transaccion, tipo_transaccion, descripcion, monto)
VALUES ('2023-10-15', 'Ingreso', 'Venta de Productos', 1000.00);

-- En el ejemplo anterior, se ha registrado una transacción de flujo de efectivo en la tabla flujo_de_efectivo. Personaliza los valores según los detalles de la transacción.

