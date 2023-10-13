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
░█░█░█▀█░█▄█░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀█░█░█░█░█░█▀▀░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : home.view.php
Directorio                  : website
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "home.view.php" se encuentra en el directorio "website" y es parte de una 
aplicación web desarrollada en PHP. Su función principal es mostrar la página de inicio 
o portada del sitio web, proporcionando información general y una introducción a la 
plataforma.

Funcionalidades Principales:
1. Contenido Inicial: Muestra contenido inicial, como mensajes de bienvenida, 
promociones destacadas o elementos destacados del sitio web.

2. Elementos Visuales: Puede incluir imágenes, banners, carruseles u otros elementos 
visuales para atraer la atención de los visitantes.

3. Enlaces de Navegación: Proporciona enlaces a otras secciones clave del sitio web, 
lo que facilita la navegación.

4. Destacados: Puede destacar productos, servicios o información relevante para los 
visitantes.

*********************************************************************************************************/ ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nombre de tu Empresa</title>
    <link rel="stylesheet" type="text/css" href="public/css/style.css">
    <!-- Agrega otros enlaces a hojas de estilo si es necesario -->
</head>
<body>
    <?php include 'templates/header.php'; ?> <!-- Incluye el encabezado común a todas las páginas -->

    <div class="banner">
        <!-- Aquí puedes agregar tu banner -->
    </div>

    <nav>
        <!-- Aquí puedes agregar un menú de navegación -->
        <ul>
            <li><a href="index.php?route=web&page=inicio">Inicio</a></li>
            <li><a href="index.php?route=web&page=about">Acerca de</a></li>
            <li><a href="index.php?route=web&page=contact">Contacto</a></li>
            <li><a href="index.php?route=web&page=products">Productos</a></li>
            <!-- Agrega enlaces a otras secciones de tu sitio -->
        </ul>
    </nav>

    <div class="content">
      <p><h1>Pagina de Inicio</h1></p>
        <!-- Aquí puedes agregar contenido relacionado con noticias o cualquier cosa que desees mostrar en la página de inicio -->
    </div>

    <?php include 'templates/footer.php'; ?> <!-- Incluye el pie de página común a todas las páginas -->

    <script src="public/js/main.js"></script>
    <!-- Agrega otros enlaces a archivos JavaScript si es necesario -->
</body>
</html>
