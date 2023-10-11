<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░█▀█░█▀▄░█▀▄░█▀▀░█▀▄░░░░░█▀█░█▀▄░█▀▀░█▀█░█▀█░█▀▄░█▀█░▀█▀░▀█▀░█▀█░█▀█
░█░█░█▀▄░█░█░█▀▀░█▀▄░░░░░█▀▀░█▀▄░█▀▀░█▀▀░█▀█░█▀▄░█▀█░░█░░░█░░█░█░█░█
░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░▀▀▀░▀░░░▀░▀░▀▀▀░▀░░░▀░▀░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀░▀
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : order_preparation
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "order_preparation" y forma 
parte de una aplicación web desarrollada en PHP. Su función principal es proporcionar 
una interfaz de usuario para la creación de nuevas órdenes de preparación.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con la orden de preparación, como el número de orden, la 
fecha, el producto, la cantidad, la ubicación de almacenamiento, entre otros.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "OrderPreparationController.php," para procesar la creación de nuevas 
órdenes de preparación y almacenar la información en la base de datos a través del 
modelo asociado.

4. Generación de Órdenes: Tras la validación, genera una nueva orden de preparación y 
registra la información en la base de datos, lo que permite un seguimiento eficiente de 
las operaciones de almacenamiento y preparación de productos.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>