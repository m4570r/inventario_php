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



- **inventario_app/**
  - **app/**
    - **config/**
      - config.php (Configuración de la base de datos)
      - config.json (Configuración en formato JSON)
      - config.xml (Configuración en formato XML)
    - **controllers/**
      - UserLevelsController.php             
      - UsersController.php                  
      - AccessConfigurationController.php    
      - TokenController.php                  
      - ProductsController.php               
      - HistoricalProductsController.php     
      - ReceptionOfGoodsController.php       
      - StorageController.php                
      - InventoryManagementController.php    
      - ClientsController.php                
      - OrdersController.php                 
      - OrderPreparationController.php       
      - QualityControlController.php         
      - ReturnsManagementController.php      
      - DistributionDispatchController.php   
      - SecurityController.php                
      - TeamsController.php                  
      - CostsController.php                  
      - ReportsDocumentationController.php
      - SuppliersController.php               
      - PurchasingController.php             
      - SalesController.php                  
      - InvoiceController.php                
      - PaymentsController.php               
      - AccountStatusController.php          
      - HistoricalPaymentController.php      
      - CashFlowController.php               
      - InventoryController.php               
      - ReturnsController.php                 
    - **models/**
      - UserLevelsModel.php
      - UsersModel.php
      - AccessConfigurationModel.php
      - TokenModel.php
      - ProductsModel.php
      - HistoricalProductsModel.php
      - ReceptionOfGoodsModel.php
      - StorageModel.php
      - InventoryManagementModel.php
      - ClientsModel.php
      - OrdersModel.php
      - OrderPreparationModel.php
      - QualityControlModel.php
      - ReturnsManagementModel.php
      - DistributionDispatchModel.php
      - SecurityModel.php
      - TeamsModel.php
      - CostsModel.php
      - ReportsDocumentationModel.php
      - SuppliersModel.php
      - PurchasingModel.php
      - SalesModel.php
      - InvoiceModel.php
      - PaymentsModel.php
      - AccountStatusModel.php
      - HistoricalPaymentModel.php
      - CashFlowModel.php
      - InventoryModel.php
      - ReturnsModel.php
    - **views/**
      - **user_levels/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
		- details.views.php
        - delete.views.php
        - search.views.php
      - **users/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
		- details.views.php 
        - delete.views.php 
        - search.views.php 
        - reports.views.php 
        - profile.views.php 
      - **access_configuration/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **tokens/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **products/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
		- details.views.php 
        - delete.views.php 
        - search.views.php 
        - reports.views.php 
      - **historical_products/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **reception_of_goods/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **storage/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **inventory_management/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **clients/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **orders/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
		- details.views.php 
        - delete.views.php 
        - search.views.php 
        - reports.views.php 
      - **order_preparation/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **quality_control/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **returns_management/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **distribution_dispatch/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **security/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **teams/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **costs/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **reports_documentation/**
        - index.views.php 
        - create.views.php 
        - edit.views.php
        - user_reports.views.php 
        - product_reports.views.php 
        - order_reports.views.php 
      - **suppliers/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **purchasing/**
        - index.views.php 
        - create.views.php 
        - edit.views.php
      - **sales/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **invoice/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **payments/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **account_status/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **historical_payment/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **cash_flow/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **inventory/**
        - index.views.php 
        - create.views.php 
        - edit.views.php 
      - **returns/**
        - index.views.php
        - create.views.php
        - edit.views.php
	  - **auth/**
        - login.views.php
        - register.views.php
        - forgot_password.views.php
        - reset_password.views.php
      - **profile/**
        - view_profile.views.php
        - edit_profile.views.php
	  - **website/**
        - home.views.php 
        - about.views.php 
        - contact.views.php 
        - products.views.php 
    - **public/**
      - **css/**
        - style.css 
      - **js/**
        - main.js 
    - **templates/**
      - header.php
      - footer.php
    - index.php
  - **log/**
    - app.log
  - **routes/**
    - web.php (Rutas web)
    - api.php (Rutas API REST)


