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
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : purchasing
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "purchasing" y forma parte 
de una aplicación web desarrollada en PHP. Su función principal es proporcionar una 
interfaz de usuario para la creación de nuevos registros relacionados con compras y 
adquisiciones.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con una nueva compra, como proveedores, productos 
adquiridos, fechas, cantidades, precios, etc.

2. Validación de Datos: Implementa la validación de datos para garantizar que los 
campos obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "PurchasingController.php," para procesar la creación de nuevas compras 
y almacenar la información en la base de datos a través del modelo asociado.

4. Generación de Registros: Tras la validación, genera un nuevo registro de compra y lo 
registra en la base de datos, lo que permite llevar un seguimiento de las adquisiciones 
realizadas.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.









*********************************************************************************************************/ ?>