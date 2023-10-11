<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░█░█░▀█▀░█▀▀░▀█▀░█▀█░█▀▄░▀█▀░█▀▀░█▀█░█░░░░░░░█▀█░█▀▄░█▀█░█▀▄░█░█░█▀▀░▀█▀░█▀▀
░█▀█░░█░░▀▀█░░█░░█░█░█▀▄░░█░░█░░░█▀█░█░░░░░░░█▀▀░█▀▄░█░█░█░█░█░█░█░░░░█░░▀▀█
░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀░░▀▀▀░▀▀▀░░▀░░▀▀▀
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.views.php
Directorio                  : historical_products
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.views.php" se encuentra en el directorio "historical_products" y 
forma parte de una aplicación web desarrollada en PHP. Su función principal es 
proporcionar una interfaz de usuario para la creación de nuevos registros de productos 
históricos.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con un nuevo producto histórico, como nombre, descripción, 
fecha de creación, etc.

2. Validación de Datos: Implementa la validación de datos para asegurar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "HistoricalProductsController.php," para procesar la creación de nuevos 
productos históricos y almacenar la información en la base de datos a través del modelo 
asociado.

4. Registro de Productos Históricos: Luego de la validación, registra el nuevo producto 
histórico en el sistema y lo relaciona con la gestión de productos históricos.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>