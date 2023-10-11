<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░▀█▀░█▀█░█░█░█▀▀░█▀█░▀█▀░█▀█░█▀▄░█░█░░░░░█▄█░█▀█░█▀█░█▀█░█▀▀░█▀▀░█▄█░█▀▀░█▀█░▀█▀
░░█░░█░█░▀▄▀░█▀▀░█░█░░█░░█░█░█▀▄░░█░░░░░░█░█░█▀█░█░█░█▀█░█░█░█▀▀░█░█░█▀▀░█░█░░█░
░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░▀░▀░▀░▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : inventory_management
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "inventory_management" y es 
parte de una aplicación web desarrollada en PHP. Su función principal es proporcionar 
una interfaz de usuario para la creación de nuevos registros relacionados con la 
gestión del inventario.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con la gestión del inventario, como fecha, cantidad, 
tipo de movimiento, productos involucrados, etc.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "InventoryManagementController.php," para procesar la creación de 
nuevos registros de gestión del inventario y almacenar la información en la base de 
datos a través del modelo asociado.

4. Registro de Movimientos en el Inventario: Luego de la validación, registra el nuevo 
movimiento relacionado con la gestión del inventario y actualiza la cantidad de 
productos en el inventario en consecuencia.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>