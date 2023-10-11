<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
███████╗ █████╗ ██╗     ███████╗███████╗
██╔════╝██╔══██╗██║     ██╔════╝██╔════╝
███████╗███████║██║     █████╗  ███████╗
╚════██║██╔══██║██║     ██╔══╝  ╚════██║
███████║██║  ██║███████╗███████╗███████║
╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
░█▀▀░█▀▄░▀█▀░▀█▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀▀░█░█░░█░░░█░░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀░░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : edit.view.php
Directorio                  : sales
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "edit.view.php" se encuentra en el directorio "sales" y forma parte de una 
aplicación web desarrollada en PHP. Su objetivo principal es proporcionar una interfaz 
de usuario que permite a los usuarios editar las ventas existentes en el sistema.

Funcionalidades Principales:
1. Formulario de Edición: Contiene un formulario interactivo que muestra los detalles de 
una venta existente y permite al usuario modificarlos, como cambiar la fecha, el cliente, 
el producto, la cantidad, el precio, entre otros.

2. Carga de Datos: Carga los datos existentes de la venta desde la base de datos para su 
edición.

3. Validación de Datos: Implementa la validación de datos para garantizar que las 
modificaciones cumplan con los requisitos y que los datos ingresados sean válidos.

4. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "SalesController.php," para procesar la actualización de la información 
de la venta en la base de datos a través del modelo asociado.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de edición, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>