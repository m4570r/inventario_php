<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
██████╗ ███████╗████████╗██╗   ██╗██████╗ ███╗   ██╗███████╗
██╔══██╗██╔════╝╚══██╔══╝██║   ██║██╔══██╗████╗  ██║██╔════╝
██████╔╝█████╗     ██║   ██║   ██║██████╔╝██╔██╗ ██║███████╗
██╔══██╗██╔══╝     ██║   ██║   ██║██╔══██╗██║╚██╗██║╚════██║
██║  ██║███████╗   ██║   ╚██████╔╝██║  ██║██║ ╚████║███████║
╚═╝  ╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝
░█▀▀░█▀▄░▀█▀░▀█▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀▀░█░█░░█░░░█░░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀░░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : edit.view.php
Directorio                  : returns
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "edit.view.php" se encuentra en el directorio "returns" y forma parte de una 
aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz de 
usuario que permite a los usuarios editar solicitudes de devolución existentes en el 
sistema.

Funcionalidades Principales:
1. Formulario de Edición: Contiene un formulario interactivo que muestra los detalles de 
la solicitud de devolución existente y permite al usuario modificarlos, como cambiar el 
motivo, la cantidad, la fecha, el producto, etc.

2. Carga de Datos: Carga los datos existentes de la solicitud de devolución desde la 
base de datos para su edición.

3. Validación de Datos: Implementa la validación de datos para garantizar que las 
modificaciones cumplan con los requisitos y que los datos ingresados sean válidos.

4. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "ReturnsController.php," para procesar la actualización de la 
información de la solicitud de devolución en la base de datos a través del modelo 
asociado.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de edición, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>