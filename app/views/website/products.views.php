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
░█▀█░█▀▄░█▀█░█▀▄░█░█░█▀▀░▀█▀░█▀▀░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀▀░█▀▄░█░█░█░█░█░█░█░░░░█░░▀▀█░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀░░░▀░▀░▀▀▀░▀▀░░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : products.view.php
Directorio                  : website
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "products.view.php" se encuentra en el directorio "website" y forma parte de 
una aplicación web desarrollada en PHP. Su función principal es mostrar una página que 
presenta productos o servicios que la empresa ofrece a los visitantes.

Funcionalidades Principales:
1. Listado de Productos o Servicios: Muestra una lista de productos o servicios, 
incluyendo detalles, imágenes y precios.

2. Filtrado y Categorización: Puede permitir a los visitantes filtrar productos por 
categoría, precio o características.

3. Detalles de Producto: Permite a los visitantes ver información detallada sobre un 
producto o servicio específico al hacer clic en él.

4. Compra o Contacto: Proporciona enlaces o botones para que los visitantes puedan 
comprar productos en línea o ponerse en contacto para obtener más información.

Estos archivos son componentes clave de la interfaz de usuario de un sitio web y 
desempeñan un papel importante en la presentación de información y la interacción 
con los visitantes.

*********************************************************************************************************/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Productos - Nombre de tu Empresa</title>
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
        <h1>Productos</h1>
        <p>
            Bienvenido a nuestra página de productos. Aquí encontrarás una amplia gama de productos de alta calidad.
        </p>

        <!-- Agrega una lista de productos o información detallada sobre tus productos -->

        <p>
            Si deseas más información sobre alguno de nuestros productos, no dudes en ponerte en contacto con nosotros.
        </p>
    </div>

    <?php include 'templates/footer.php'; ?> <!-- Incluye el pie de página común a todas las páginas -->

    <script src="public/js/main.js"></script>
    <!-- Agrega otros enlaces a archivos JavaScript si es necesario -->
</body>
</html>
