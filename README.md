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


# Estructura de la APP PHP:

- **inventario_app/**
  - **app/**
    - **config/**
      - config.php (Configuración de la base de datos)
      - config.json (Configuración en formato JSON)
      - config.xml (Configuración en formato XML)
    - **controllers/**
      - UserLevelsController.php (Controlador para niveles de usuario)           
      - UsersController.php (Controlador para usuarios)                  
      - AccessConfigurationController.php (Controlador para configuración de acceso)    
      - TokenController.php (Controlador para tokens de autenticación)                  
      - ProductsController.php (Controlador para productos)               
      - HistoricalProductsController.php (Controlador para productos históricos)     
      - ReceptionOfGoodsController.php (Controlador para recepción de bienes)       
      - StorageController.php (Controlador para almacenamiento)                
      - InventoryManagementController.php (Controlador para gestión de inventario)    
      - ClientsController.php (Controlador para clientes)                
      - OrdersController.php (Controlador para pedidos)                 
      - OrderPreparationController.php (Controlador para preparación de pedidos)       
      - QualityControlController.php (Controlador para control de calidad)         
      - ReturnsManagementController.php (Controlador para gestión de devoluciones)      
      - DistributionDispatchController.php (Controlador para distribución y despacho)   
      - SecurityController.php (Controlador para seguridad)                
      - TeamsController.php (Controlador para equipos)                  
      - CostsController.php (Controlador para costos)                  
      - ReportsDocumentationController.php (Controlador para documentación de informes)
      - SuppliersController.php (Controlador para proveedores)               
      - PurchasingController.php (Controlador para compras)             
      - SalesController.php (Controlador para ventas)                  
      - InvoiceController.php (Controlador para facturas)                
      - PaymentsController.php (Controlador para pagos)               
      - AccountStatusController.php (Controlador para estado de cuentas)          
      - HistoricalPaymentController.php (Controlador para pagos históricos)      
      - CashFlowController.php (Controlador para flujo de efectivo)               
      - InventoryController.php (Controlador para inventario)               
      - ReturnsController.php (Controlador para devoluciones)                 
    - **models/**
      - UserLevelsModel.php (Modelo para niveles de usuario)
      - UsersModel.php (Modelo para usuarios)
      - AccessConfigurationModel.php (Modelo para configuración de acceso)
      - TokenModel.php (Modelo para tokens de autenticación)
      - ProductsModel.php (Modelo para productos)
      - HistoricalProductsModel.php (Modelo para productos históricos)
      - ReceptionOfGoodsModel.php (Modelo para recepción de bienes)
      - StorageModel.php (Modelo para almacenamiento)
      - InventoryManagementModel.php (Modelo para gestión de inventario)
      - ClientsModel.php (Modelo para clientes)
      - OrdersModel.php (Modelo para pedidos)
      - OrderPreparationModel.php (Modelo para preparación de pedidos)
      - QualityControlModel.php (Modelo para control de calidad)
      - ReturnsManagementModel.php (Modelo para gestión de devoluciones)
      - DistributionDispatchModel.php (Modelo para distribución y despacho)
      - SecurityModel.php (Modelo para seguridad)
      - TeamsModel.php (Modelo para equipos)
      - CostsModel.php (Modelo para costos)
      - ReportsDocumentationModel.php (Modelo para documentación de informes)
      - SuppliersModel.php (Modelo para proveedores)
      - PurchasingModel.php (Modelo para compras)
      - SalesModel.php (Modelo para ventas)
      - InvoiceModel.php (Modelo para facturas)
      - PaymentsModel.php (Modelo para pagos)
      - AccountStatusModel.php (Modelo para estado de cuentas)
      - HistoricalPaymentModel.php (Modelo para pagos históricos)
      - CashFlowModel.php (Modelo para flujo de efectivo)
      - InventoryModel.php (Modelo para inventario)
      - ReturnsModel.php (Modelo para devoluciones)
    - **views/**
      - **user_levels/**
        - index.views.php (Vista de listado de niveles de usuario)
        - create.views.php (Vista de creación de niveles de usuario)
        - edit.views.php (Vista de edición de niveles de usuario)
        - details.views.php (Vista de detalles de niveles de usuario
        - delete.views.php (Vista de eliminación de niveles de usuario)
        - search.views.php (Vista de búsqueda de niveles de usuario)
      - **users/**
        - index.views.php (Vista de listado de usuarios)
        - create.views.php (Vista de creación de usuarios)
        - edit.views.php (Vista de edición de usuarios)
	- details.views.php (Vista de detalles de usuarios)
        - delete.views.php (Vista de eliminación de usuarios)
        - search.views.php (Vista de búsqueda de usuarios)
        - reports.views.php (Vista de informes de usuarios)
        - profile.views.php (Vista de perfil de usuarios)
      - **access_configuration/**
        - index.views.php (Vista de configuración de acceso)
        - create.views.php (Vista de creación de configuración de acceso)
        - edit.views.php (Vista de edición de configuración de acceso)
      - **tokens/**
        - index.views.php (Vista de listado de tokens)
        - create.views.php (Vista de creación de tokens)
        - edit.views.php (Vista de edición de tokens)
      - **products/**
        - index.views.php (Vista de listado de productos)
        - create.views.php (Vista de creación de productos)
        - edit.views.php (Vista de edición de productos)
	- details.views.php (Vista de detalles de productos)
        - delete.views.php (Vista de eliminación de productos)
        - search.views.php (Vista de búsqueda de productos)
        - reports.views.php (Vista de informes de productos)
      - **historical_products/**
        - index.views.php (Vista de listado de productos históricos)
        - create.views.php (Vista de creación de productos históricos)
        - edit.views.php (Vista de edición de productos históricos)
      - **reception_of_goods/**
        - index.views.php (Vista de listado de recepción de bienes)
        - create.views.php (Vista de creación de recepción de bienes)
        - edit.views.php (Vista de edición de recepción de bienes)
      - **storage/**
        - index.views.php (Vista de listado de almacenamiento)
        - create.views.php (Vista de creación de almacenamiento)
        - edit.views.php (Vista de edición de almacenamiento)
      - **inventory_management/**
        - index.views.php (Vista de listado de gestión de inventario)
        - create.views.php (Vista de creación de gestión de inventario)
        - edit.views.php (Vista de edición de gestión de inventario)
      - **clients/**
        - index.views.php (Vista de listado de clientes)
        - create.views.php (Vista de creación de clientes)
        - edit.views.php (Vista de edición de clientes)
      - **orders/**
        - index.views.php (Vista de listado de pedidos)
        - create.views.php (Vista de creación de pedidos)
        - edit.views.php (Vista de edición de pedidos)
	- details.views.php (Vista de detalles de pedidos)
        - delete.views.php (Vista de eliminación de pedidos)
        - search.views.php (Vista de búsqueda de pedidos)
        - reports.views.php (Vista de informes de pedidos)
      - **order_preparation/**
        - index.views.php (Vista de listado de preparación de pedidos)
        - create.views.php (Vista de creación de preparación de pedidos)
        - edit.views.php (Vista de edición de preparación de pedidos)
      - **quality_control/**
        - index.views.php (Vista de listado de control de calidad)
        - create.views.php (Vista de creación de control de calidad)
        - edit.views.php (Vista de edición de control de calidad)
      - **returns_management/**
        - index.views.php (Vista de listado de gestión de devoluciones)
        - create.views.php (Vista de creación de gestión de devoluciones)
        - edit.views.php (Vista de edición de gestión de devoluciones)
      - **distribution_dispatch/**
        - index.views.php (Vista de listado de distribución y despacho)
        - create.views.php (Vista de creación de distribución y despacho)
        - edit.views.php (Vista de edición de distribución y despacho)
      - **security/**
        - index.views.php (Vista de listado de seguridad)
        - create.views.php (Vista de creación de seguridad)
        - edit.views.php (Vista de edición de seguridad)
      - **teams/**
        - index.views.php (Vista de listado de equipos)
        - create.views.php (Vista de creación de equipos)
        - edit.views.php (Vista de edición de equipos)
      - **costs/**
        - index.views.php (Vista de listado de costos)
        - create.views.php (Vista de creación de costos)
        - edit.views.php (Vista de edición de costos)
      - **reports_documentation/**
        - index.views.php (Vista de listado de documentación de informes)
        - create.views.php (Vista de creación de documentación de informes)
        - edit.views.php (Vista de edición de documentación de informes)
        - user_reports.views.php (Vista de informes de usuarios)
        - product_reports.views.php (Vista de informes de productos)
        - order_reports.views.php (Vista de informes de pedidos)
      - **suppliers/**
        - index.views.php (Vista de listado de proveedores)
        - create.views.php (Vista de creación de proveedores)
        - edit.views.php (Vista de edición de proveedores)
      - **purchasing/**
        - index.views.php (Vista de listado de compras)
        - create.views.php (Vista de creación de compras)
        - edit.views.php (Vista de edición de compras)
      - **sales/**
        - index.views.php (Vista de listado de ventas)
        - create.views.php (Vista de creación de ventas)
        - edit.views.php (Vista de edición de ventas)
      - **invoice/**
        - index.views.php (Vista de listado de facturas)
        - create.views.php (Vista de creación de facturas)
        - edit.views.php (Vista de edición de facturas)
      - **payments/**
        - index.views.php (Vista de listado de pagos)
        - create.views.php (Vista de creación de pagos)
        - edit.views.php (Vista de edición de pagos)
      - **account_status/**
        - index.views.php (Vista de listado de estado de cuentas)
        - create.views.php (Vista de creación de estado de cuentas)
        - edit.views.php (Vista de edición de estado de cuentas)
      - **historical_payment/**
        - index.views.php (Vista de listado de pagos históricos)
        - create.views.php (Vista de creación de pagos históricos)
        - edit.views.php (Vista de edición de pagos históricos)
      - **cash_flow/**
        - index.views.php (Vista de listado de flujo de efectivo)
        - create.views.php (Vista de creación de flujo de efectivo)
        - edit.views.php (Vista de edición de flujo de efectivo)
      - **inventory/**
        - index.views.php (Vista de listado de inventario)
        - create.views.php (Vista de creación de inventario)
        - edit.views.php (Vista de edición de inventario)
      - **returns/**
        - index.views.php (Vista de listado de devoluciones)
        - create.views.php (Vista de creación de devoluciones)
        - edit.views.php (Vista de edición de devoluciones)
      - **auth/**
        - login.views.php (Vista de inicio de sesión)
        - register.views.php (Vista de registro)
        - forgot_password.views.php (Vista de olvido de contraseña)
        - reset_password.views.php (Vista de restablecimiento de contraseña)
      - **profile/**
        - view_profile.views.php (Vista de visualización de perfil)
        - edit_profile.views.php (Vista de edición de perfil)
      - **website/**
        - home.views.php (Vista de página de inicio)
        - about.views.php (Vista de página "Acerca de")
        - contact.views.php (Vista de página de contacto)
        - products.views.php (Vista de página de productos)
    - **public/**
      - **css/**
        - style.css (Hoja de estilos CSS)
      - **js/**
        - main.js (Archivo JavaScript principal)
    - **templates/**
      - header.php (Plantilla de encabezado)
      - footer.php (Plantilla de pie de página)
    - index.php (Archivo principal de la aplicación)
  - **log/**
    - app.log (Archivo de registro de la aplicación)
  - **routes/**
    - web.php (Rutas web)
    - api.php (Rutas API REST)
