<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
 ██████╗ ██████╗ ███████╗████████╗███████╗
██╔════╝██╔═══██╗██╔════╝╚══██╔══╝██╔════╝
██║     ██║   ██║███████╗   ██║   ███████╗
██║     ██║   ██║╚════██║   ██║   ╚════██║
╚██████╗╚██████╔╝███████║   ██║   ███████║
 ╚═════╝ ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.views.php
Directorio                  : costs
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.views.php" se encuentra en el directorio "costs" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario para crear nuevos registros relacionados con costos.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar los detalles de un nuevo registro de costo, como descripción, monto, fecha, 
etc.

2. Validación de Datos: Implementa la validación de datos para garantizar que los campos 
requeridos se completen correctamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "CostsController.php," para procesar la creación de nuevos registros de 
costos y almacenar la información en la base de datos a través del modelo asociado.

4. Registro de Costos: Después de la validación, registra el nuevo costo en el sistema y 
lo relaciona con la gestión de costos.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>