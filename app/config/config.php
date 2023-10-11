<?php /*********************************************************************************************************

 ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝          Nombre del archivo          : config.php
██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗         Nombre del Programador      : Miguel Angel Gonzalez   
██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║         Lenguaje de programación    : PHP
╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝         Versión                     : 1.0
 ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█░█░█░█░█▀▀░░█░░█░█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░▀░░▀░░░▀░▀░▀░░        

Descripción:
El archivo config.php es un componente clave en una aplicación web escrita en PHP, y su función 
principal es almacenar y proporcionar información de configuración fundamental para la aplicación. 

Conexión a la base de datos: Uno de los usos más comunes del archivo config.php es almacenar la 
información necesaria para conectarse a la base de datos de la aplicación, como el nombre de host de 
la base de datos, el nombre de usuario y la contraseña. Estos datos son esenciales para que la 
aplicación interactúe con la base de datos y realice consultas y actualizaciones.

Definición de constantes: El archivo puede definir constantes que contienen valores que se utilizan 
en toda la aplicación. Por ejemplo, se pueden definir constantes para rutas de directorio, URLs base, 
claves de API y otros valores que deben ser consistentes en toda la aplicación.

Configuración de parámetros globales: Puede configurar parámetros globales de PHP utilizando el 
archivo config.php. Esto incluye configuraciones como la zona horaria, la configuración de sesiones, 
la gestión de errores y otros ajustes que afectan el comportamiento global de la aplicación.

Gestión de variables de entorno: En aplicaciones más avanzadas, el archivo config.php puede leer 
variables de entorno del sistema operativo o de un archivo de configuración externo para personalizar 
la configuración de la aplicación según el entorno (desarrollo, producción, pruebas, etc.).

Seguridad: El archivo puede contener configuraciones relacionadas con la seguridad de la aplicación, 
como configuraciones de cifrado, reglas de seguridad de la base de datos y configuraciones de CORS 
(Cross-Origin Resource Sharing).

Inclusión de otros archivos de configuración: En aplicaciones más grandes y complejas, el archivo 
config.php a menudo incluirá otros archivos de configuración específicos de módulos o componentes de 
la aplicación, como la configuración de autenticación, la configuración de correo electrónico, etc.

Documentación: Es importante incluir comentarios y documentación adecuada en el archivo config.php 
para que otros desarrolladores puedan entender fácilmente la configuración y cómo debe ser utilizada.

Modo de depuración: Puede incluir una configuración de "modo de depuración" que permita activar o 
desactivar la generación de mensajes de error detallados o registros de depuración según sea necesario, 
lo que facilita la solución de problemas.

*********************************************************************************************************/
?>