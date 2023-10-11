<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
██╗███╗   ██╗██╗   ██╗ ██████╗ ██╗ ██████╗███████╗
██║████╗  ██║██║   ██║██╔═══██╗██║██╔════╝██╔════╝
██║██╔██╗ ██║██║   ██║██║   ██║██║██║     █████╗  
██║██║╚██╗██║╚██╗ ██╔╝██║   ██║██║██║     ██╔══╝  
██║██║ ╚████║ ╚████╔╝ ╚██████╔╝██║╚██████╗███████╗
╚═╝╚═╝  ╚═══╝  ╚═══╝   ╚═════╝ ╚═╝ ╚═════╝╚══════╝
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : invoice
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "invoice" y forma parte de 
una aplicación web desarrollada en PHP. Su función principal es proporcionar una 
interfaz de usuario para la creación de nuevas facturas.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con la factura, como el número de factura, la fecha, el 
cliente, los productos o servicios vendidos, el monto total, etc.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "InvoiceController.php," para procesar la creación de nuevas facturas y 
almacenar la información en la base de datos a través del modelo asociado.

4. Generación de Factura: Tras la validación, genera una nueva factura y registra la 
información en la base de datos, lo que permite el seguimiento de las transacciones de 
ventas.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>