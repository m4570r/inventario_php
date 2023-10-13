<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
██╗    ██╗███████╗██████╗ ███████╗██╗████████╗███████╗
██║    ██║██╔════╝██╔══██╗██╔════╝██║╚══██╔══╝██╔════╝
██║ █╗ ██║█████╗  ██████╔╝███████╗██║   ██║   █████╗  
██║███╗██║██╔══╝  ██╔══██╗╚════██║██║   ██║   ██╔══╝  
╚███╔███╔╝███████╗██████╔╝███████║██║   ██║   ███████╗
 ╚══╝╚══╝ ╚══════╝╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚══════╝
░█▀▀░█▀█░█▀█░▀█▀░█▀█░█▀▀░▀█▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█░█░█░█░░█░░█▀█░█░░░░█░░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀▀░▀░▀░░▀░░▀░▀░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : contact.view.php
Directorio                  : website
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "contact.view.php" se encuentra en el directorio "website" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es mostrar una página de 
contacto que permite a los visitantes ponerse en contacto con la empresa.

Funcionalidades Principales:
1. Formulario de Contacto: Contiene un formulario interactivo que permite a los 
visitantes ingresar su nombre, dirección de correo electrónico, asunto y mensaje para 
ponerse en contacto con la empresa.

2. Envío de Mensajes: Procesa los mensajes enviados por los visitantes y puede utilizar 
tecnologías como el correo electrónico o bases de datos para gestionar los mensajes.

3. Información de Contacto: Puede mostrar información de contacto, como dirección 
física, número de teléfono y dirección de correo electrónico de la empresa.

4. Confirmación de Envío: Proporciona una confirmación o mensaje de agradecimiento 
después de que se envía un mensaje.

*********************************************************************************************************/ ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contacto - Nombre de tu Empresa</title>
    <link rel="stylesheet" type="text/css" href="public/css/style.css">
    <!-- Agrega otros enlaces a hojas de estilo si es necesario -->
</head>
<body>
    <?php include 'templates/header.php'; ?> <!-- Incluye el encabezado común a todas las páginas -->

    <nav>
        <!-- Agrega un menú de navegación si es necesario -->
        <ul>
            <li><a href="index.php?route=web&page=inicio">Inicio</a></li>
            <li><a href="index.php?route=web&page=about">Acerca de</a></li>
            <li><a href="index.php?route=web&page=contact">Contacto</a></li>
            <li><a href="index.php?route=web&page=products">Productos</a></li>
            <!-- Agrega enlaces a otras secciones de tu sitio -->
        </ul>
    </nav>

    <div class="content">
        <h1>Contacto</h1>
        <p>
            ¿Tienes alguna pregunta o comentario? ¡No dudes en ponerte en contacto con nosotros!
        </p>

        <!-- Agrega un formulario de contacto o detalles de contacto, como dirección de correo electrónico o número de teléfono -->

        <p>
            Estamos aquí para ayudarte.
        </p>
    </div>

    <?php include 'templates/footer.php'; ?> <!-- Incluye el pie de página común a todas las páginas -->

    <script src="public/js/main.js"></script>
    <!-- Agrega otros enlaces a archivos JavaScript si es necesario -->
</body>
</html>
