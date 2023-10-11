<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
██████╗ ██╗   ██╗██████╗  ██████╗██╗  ██╗ █████╗ ███████╗██╗███╗   ██╗ ██████╗ 
██╔══██╗██║   ██║██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝██║████╗  ██║██╔════╝ 
██████╔╝██║   ██║██████╔╝██║     ███████║███████║███████╗██║██╔██╗ ██║██║  ███╗
██╔═══╝ ██║   ██║██╔══██╗██║     ██╔══██║██╔══██║╚════██║██║██║╚██╗██║██║   ██║
██║     ╚██████╔╝██║  ██║╚██████╗██║  ██║██║  ██║███████║██║██║ ╚████║╚██████╔╝
╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
░█▀▀░█▀▄░▀█▀░▀█▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀▀░█░█░░█░░░█░░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀░░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : edit.view.php
Directorio                  : purchasing
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "edit.view.php" se encuentra en el directorio "purchasing" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario que permite a los usuarios editar registros de compras y adquisiciones existentes.

Funcionalidades Principales:
1. Formulario de Edición: Contiene un formulario interactivo que muestra los detalles de 
una compra existente y permite al usuario modificarlos, como cambiar proveedores, 
productos adquiridos, fechas, cantidades, precios, etc.

2. Carga de Datos: Carga los datos existentes de una compra desde la base de datos para 
su edición.

3. Validación de Datos: Implementa la validación de datos para garantizar que las 
modificaciones cumplan con los requisitos y que los datos ingresados sean válidos.

4. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "PurchasingController.php," para procesar la actualización de la 
información de la compra en la base de datos a través del modelo asociado.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de edición, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>