<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
██╗   ██╗███████╗███████╗██████╗ ███████╗
██║   ██║██╔════╝██╔════╝██╔══██╗██╔════╝
██║   ██║███████╗█████╗  ██████╔╝███████╗
██║   ██║╚════██║██╔══╝  ██╔══██╗╚════██║
╚██████╔╝███████║███████╗██║  ██║███████║
 ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : users
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "users" y forma parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario que permite a los usuarios crear nuevos usuarios en el sistema.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con la creación de un nuevo usuario, como nombre, 
dirección de correo electrónico, contraseña y otros datos relevantes.

2. Validación de Datos: Implementa la validación de datos para asegurarse de que los 
campos obligatorios estén completos y de que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "UsersController.php," para procesar la creación de registros de 
usuarios y almacenar la información en la base de datos a través del modelo asociado.

4. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>