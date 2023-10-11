<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░█▀▄░█▀▀░▀█▀░█░█░█▀▄░█▀█░█▀▀░░░░░█▄█░█▀█░█▀█░█▀█░█▀▀░█▀▀░█▄█░█▀▀░█▀█░▀█▀
░█▀▄░█▀▀░░█░░█░█░█▀▄░█░█░▀▀█░░░░░█░█░█▀█░█░█░█▀█░█░█░█▀▀░█░█░█▀▀░█░█░░█░
░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀░▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : returns_management
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "returns_management" y forma 
parte de una aplicación web desarrollada en PHP. Su propósito principal es proporcionar 
una interfaz de usuario para crear nuevas entradas relacionadas con la gestión de 
devoluciones en el sistema.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles sobre la gestión de devoluciones, como la fecha, el estado, la 
descripción, el número de referencia, entre otros.

2. Validación de Datos: Implementa la validación de datos para garantizar que los 
campos obligatorios se completen correctamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "ReturnsManagementController.php," para procesar la creación de nuevas 
entradas de gestión de devoluciones y almacenar la información en la base de datos a 
través del modelo asociado.

4. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>