<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
░█░█░▀█▀░█▀▀░▀█▀░█▀█░█▀▄░▀█▀░█▀▀░█▀█░█░░░░░░░█▀█░█▀█░█░█░█▄█░█▀▀░█▀█░▀█▀
░█▀█░░█░░▀▀█░░█░░█░█░█▀▄░░█░░█░░░█▀█░█░░░░░░░█▀▀░█▀█░░█░░█░█░█▀▀░█░█░░█░
░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░░░▀░▀░░▀░░▀░▀░▀▀▀░▀░▀░░▀░
░█▀▀░█▀▄░█▀▀░█▀█░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█▀▄░█▀▀░█▀█░░█░░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : create.views.php
Directorio                  : historical_payment
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "create.views.php" se encuentra en el directorio "historical_payment" y forma 
parte de una aplicación web desarrollada en PHP. Su principal función es proporcionar 
una interfaz de usuario para la creación de nuevos registros de pagos históricos.

Funcionalidades Principales:
1. Formulario de Creación: Contiene un formulario interactivo que permite a los usuarios 
ingresar detalles relacionados con un nuevo pago histórico, como la fecha, monto, método 
de pago, etc.

2. Validación de Datos: Implementa la validación de datos para asegurar que los campos 
obligatorios se completen adecuadamente y que los datos ingresados sean válidos.

3. Comunicación con Controladores y Modelos: Este archivo se comunica con el controlador 
correspondiente, "HistoricalPaymentController.php," para procesar la creación de nuevos 
pagos históricos y almacenar la información en la base de datos a través del modelo 
asociado.

4. Registro de Pagos Históricos: Luego de la validación, registra el nuevo pago 
histórico en el sistema y lo relaciona con la gestión de pagos históricos.

5. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de creación, ya sea exitoso o con 
errores.

*********************************************************************************************************/ ?>