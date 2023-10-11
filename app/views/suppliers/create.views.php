<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
███████╗██╗   ██╗██████╗ ██████╗ ██╗     ██╗███████╗██████╗ ███████╗
██╔════╝██║   ██║██╔══██╗██╔══██╗██║     ██║██╔════╝██╔══██╗██╔════╝
███████╗██║   ██║██████╔╝██████╔╝██║     ██║█████╗  ██████╔╝███████╗
╚════██║██║   ██║██╔═══╝ ██╔═══╝ ██║     ██║██╔══╝  ██╔══██╗╚════██║
███████║╚██████╔╝██║     ██║     ███████╗██║███████╗██║  ██║███████║
╚══════╝ ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : suppliers
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "suppliers" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario para crear nuevos registros de proveedores.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles sobre la creación de un nuevo proveedor, como nombre, dirección, 
información de contacto, entre otros.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
obligatorios se completen correctamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "SuppliersController.php," para procesar la creación de registros de 
proveedores y almacenar la información en la base de datos a través del modelo asociado.

4. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>