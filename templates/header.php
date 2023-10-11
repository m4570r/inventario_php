<?php
/*******************************************************************************************************

████████╗███████╗███╗   ███╗██████╗ ██╗      █████╗ ████████╗███████╗███████╗
╚══██╔══╝██╔════╝████╗ ████║██╔══██╗██║     ██╔══██╗╚══██╔══╝██╔════╝██╔════╝
   ██║   █████╗  ██╔████╔██║██████╔╝██║     ███████║   ██║   █████╗  ███████╗
   ██║   ██╔══╝  ██║╚██╔╝██║██╔═══╝ ██║     ██╔══██║   ██║   ██╔══╝  ╚════██║
   ██║   ███████╗██║ ╚═╝ ██║██║     ███████╗██║  ██║   ██║   ███████╗███████║
   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚══════╝
░█░█░█▀▀░█▀█░█▀▄░█▀▀░█▀▄░░░░█▀█░█░█░█▀█
░█▀█░█▀▀░█▀█░█░█░█▀▀░█▀▄░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░▀░░▀░░░▀░▀░▀░░

Nombre del archivo          : header.php
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de programación    : HTML (Hypertext Markup Language)
Versión                     : 1.0

Descripción                 : El archivo header.php es un componente esencial en la estructura de esta 
aplicacion web, especialmente en aquellos que utilizan una arquitectura de plantilla. 
Este archivo se encarga de generar la parte superior común de toda la aplicacion, que suele incluir 
elementos como la barra de navegación, el título de la página, los enlaces a hojas de estilo CSS y 
otros recursos comunes que deben cargarse en cada página.

Aquí hay una descripción más detallada de los elementos y contenido que podría encontrar en este 
archivo header.php:

Declaración del documento HTML: El archivo generalmente comienza con la declaración del tipo de 
documento y la versión de HTML que se está utilizando, como <!DOCTYPE html>.

Elemento <html>: Abre el elemento <html>, que envuelve todo el contenido HTML de la página.

Elemento <head>: Contiene metadatos y enlaces a recursos externos. Esto puede incluir etiquetas meta 
para la descripción y las palabras clave del sitio, enlaces a hojas de estilo CSS, enlaces a fuentes 
personalizadas, y otras etiquetas meta relevantes.

Elemento <title>: Define el título de la página web que aparece en la barra de título del navegador.

Enlaces a hojas de estilo CSS: Aquí se suelen incluir enlaces a hojas de estilo CSS externas que se 
aplicarán a toda la página. Por ejemplo, se pueden incluir enlaces a los archivos CSS que mencionaste 
previamente, como style.css, navbar.css, buttons.css, etc.

Elemento <body>: Abre el elemento <body>, que contiene el contenido principal de la página web. 
Esto podría incluir la barra de navegación, el encabezado de la página, el contenido específico de la 
página y el pie de página.

Barra de navegación: Si tu aplicación tiene una barra de navegación, este es un lugar común para 
incluirla. La barra de navegación generalmente contiene enlaces a diferentes secciones del sitio y 
puede ser un componente estático o dinámico, dependiendo de tu diseño.

Cierre de elementos: El archivo generalmente cierra los elementos <head> y <html> para completar el 
encabezado de la página.

El propósito principal de tener un archivo header.php separado es promover la reutilización y 
mantener una estructura coherente en todas las páginas de tu sitio web o aplicación. Cada vez que 
creas una nueva página, puedes simplemente incluir este archivo en la parte superior para garantizar 
que todos los elementos comunes se muestren correctamente.

********************************************************************************************************/
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Control de Inventario</title>
    <link rel="apple-touch-icon" sizes="57x57" href=".source/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href=".source/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href=".source/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href=".source/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href=".source/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href=".source/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href=".source/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href=".source/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href=".source/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href=".source/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href=".source/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href=".source/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href=".source/favicon/favicon-16x16.png">
    <link rel="manifest" href=".source/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content=".source/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
<!-- Coloca aquí tu banner del título del sistema -->
<h1>M4570R - Sistema de Control de Inventario</h1>
