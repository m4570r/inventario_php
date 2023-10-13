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
░█▀█░█▀▄░█▀█░█░█░▀█▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀█░█▀▄░█░█░█░█░░█░░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀▀░░▀▀▀░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : about.view.php
Directorio                  : website
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "about.view.php" se encuentra en el directorio "website" y forma parte de una 
aplicación web desarrollada en PHP. Su función principal es mostrar una página con 
información sobre la empresa o el sitio web, brindando a los visitantes una visión 
general de la organización.

Funcionalidades Principales:
1. Contenido Informativo: Contiene contenido descriptivo sobre la empresa, su historia, 
misión, visión u otros datos relevantes.

2. Elementos Visuales: Puede incluir imágenes, gráficos o elementos visuales que 
complementen la información y mejoren la presentación.

3. Navegación: Puede proporcionar enlaces de navegación que permitan a los visitantes 
acceder a otras secciones del sitio web.

*********************************************************************************************************/ ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Acerca de Nosotros - Nombre de tu Empresa</title>
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
        <h1>Acerca de Nosotros</h1>
        <p>
            Aquí puedes agregar información detallada sobre tu empresa, su historia, misión, visión y cualquier otro detalle relevante.
        </p>
        <p>
            ¡Gracias por visitar nuestra página de "Acerca de Nosotros"!
        </p>
    </div>

    <?php include 'templates/footer.php'; ?> <!-- Incluye el pie de página común a todas las páginas -->

    <script src="public/js/main.js"></script>
    <!-- Agrega otros enlaces a archivos JavaScript si es necesario -->
</body>
</html>
