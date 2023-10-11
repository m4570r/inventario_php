<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░▄▀▄░█░█░█▀█░█░░░▀█▀░▀█▀░█░█░░░░░█▀▀░█▀█░█▀█░▀█▀░█▀▄░█▀█░█░░
░█\█░█░█░█▀█░█░░░░█░░░█░░░█░░░░░░█░░░█░█░█░█░░█░░█▀▄░█░█░█░░
░░▀\░▀▀▀░▀░▀░▀▀▀░▀▀▀░░▀░░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░▀░░▀░▀░▀▀▀░▀▀▀
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.view.php
Directorio                  : quality_control
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.view.php" se encuentra en el directorio "quality_control" y forma 
parte de una aplicación web desarrollada en PHP. Su función principal es proporcionar 
una interfaz de usuario para registrar nuevos datos relacionados con el control de 
calidad.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles sobre las inspecciones y controles de calidad realizados, incluyendo 
información sobre los productos, fechas, resultados, observaciones, etc.

2. Validación de Datos: Implementa la validación de datos para asegurar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "QualityControlController.php," para procesar la creación de nuevos 
registros de control de calidad y almacenar la información en la base de datos a través 
del modelo asociado.

4. Generación de Registros: Tras la validación, genera un nuevo registro de control de 
calidad y lo registra en la base de datos, lo que permite mantener un historial de los 
controles realizados.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>