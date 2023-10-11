<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
 ██████╗██╗     ██╗███████╗███╗   ██╗████████╗███████╗
██╔════╝██║     ██║██╔════╝████╗  ██║╚══██╔══╝██╔════╝
██║     ██║     ██║█████╗  ██╔██╗ ██║   ██║   ███████╗
██║     ██║     ██║██╔══╝  ██║╚██╗██║   ██║   ╚════██║
╚██████╗███████╗██║███████╗██║ ╚████║   ██║   ███████║
 ╚═════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.views.php
Directorio                  : clients
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.views.php" se encuentra en el directorio "clients" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario para crear nuevos registros de clientes.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar los detalles de un nuevo cliente, como nombre, dirección, contacto, etc.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
requeridos se completen correctamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "ClientsController.php," para procesar la creación de nuevos registros 
de clientes y almacenar la información en la base de datos a través del modelo asociado.

4. Registro de Clientes: Después de la validación, registra el nuevo cliente en el 
sistema y asocia la información con la gestión de clientes.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>