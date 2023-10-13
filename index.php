<?php 
/*******************************************************************************************************

███████╗██╗███████╗████████╗███████╗███╗   ███╗ █████╗     ██████╗ ██╗  ██╗██████╗ 
██╔════╝██║██╔════╝╚══██╔══╝██╔════╝████╗ ████║██╔══██╗    ██╔══██╗██║  ██║██╔══██╗
███████╗██║███████╗   ██║   █████╗  ██╔████╔██║███████║    ██████╔╝███████║██████╔╝
╚════██║██║╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║██╔══██║    ██╔═══╝ ██╔══██║██╔═══╝ 
███████║██║███████║   ██║   ███████╗██║ ╚═╝ ██║██║  ██║    ██║     ██║  ██║██║     
╚══════╝╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝     
░▀█▀░█▀█░█▀▄░█▀▀░█░█░░░░█▀█░█░█░█▀█
░░█░░█░█░█░█░█▀▀░▄▀▄░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░▀░░▀░░░▀░▀░▀░░

Nombre del archivo        : index.php
Nombre del Programador    : Miguel Angel Gonzalez
Lenguaje de programación  : PHP
Versión                   : 1.0

Descripción               : El archivo `index.php` es un componente fundamental en esta aplicacion 
desarrollada en PHP. Es el punto de entrada principal la aplicación y se ejecuta cuando un usuario
accede a la raíz de tu sitio o ejecuta una URL sin una ruta específica. Su función principal es 
gestionar las solicitudes HTTP entrantes, procesarlas y dirigirlas a las partes apropiadas de la 
aplicación.

1. Inclusión de archivos: Por lo general, el archivo `index.php` comienza incluyendo otros archivos 
PHP necesarios para la aplicación, como configuraciones, enrutadores y bibliotecas. 
Esto se hace usando declaraciones `require` o `include`, por ejemplo:

   
   require_once 'app/config/config.php';
   require_once 'app/routes/appRoute.php';

   <!--  <button onclick="mostrarAlerta()">Mostrar Alerta</button>   -->
   

2. Configuración y inicialización: En este archivo, a menudo se realiza la configuración inicial de la
aplicación, como la conexión a la base de datos y la inicialización de variables globales. 
También puede haber código que establezca la zona horaria, configure el entorno de desarrollo o 
realice otras tareas de configuración.

3. Gestión de solicitudes: El archivo `index.php` se encarga de procesar la solicitud HTTP entrante. 
Esto implica obtener la URL solicitada y determinar qué acción tomar en función de la URL y el método 
HTTP (GET, POST, etc.).

4. Enrutamiento: En este punto, el archivo `index.php` a menudo llama al enrutador de la aplicación, 
que se encarga de mapear la URL a un controlador y una acción específicos. Esto permite que la 
aplicación sepa cómo manejar la solicitud del usuario.

5. Llamada al controlador: Una vez que se ha determinado qué controlador y acción deben manejar la 
solicitud, se llama al controlador correspondiente. El controlador se encargará de ejecutar la lógica 
de la aplicación y preparar la respuesta.

6. Generación de respuesta: Después de que el controlador haya realizado su trabajo, el archivo 
`index.php` suele manejar la generación de la respuesta final que se enviará al navegador del usuario.
Esto puede incluir la construcción de páginas HTML, la carga de plantillas, la creación de respuestas
JSON, etc.

7. Envío de la respuesta: Finalmente, el archivo `index.php` envía la respuesta al navegador del 
usuario mediante las funciones adecuadas de PHP, como `echo`, `header` o `json_encode`.

8. Control de errores: Además de gestionar solicitudes exitosas, el archivo `index.php` también puede 
contener lógica para manejar errores, como errores 404 (página no encontrada) o errores 500 
(error interno del servidor).

9. Cierre de recursos: En algunos casos, es importante liberar recursos, como cerrar conexiones de 
bases de datos o realizar limpieza antes de que el script finalice.

********************************************************************************************************/
?>
<?php 
/*
// En tus controladores o en cualquier otro lugar de la aplicación
include_once(__DIR__ . '/log/writeLog.php');

writeLog('app', 'ALL', 'Este es un mensaje para log de app.');
writeLog('api', 'ALL', 'Este es un mensaje para log de api.');
writeLog('web', 'ALL', 'Este es un mensaje para log de web.');
*/


// Captura la URL solicitada
// Clase base para el enrutamiento
class Router {
    public function route($route) {
        switch ($route) {
          case 'web':
            // Enrutamiento para la parte web
            include 'routes/webRoute.php';
            break;
          case 'api':
            // Enrutamiento para la API
            include 'routes/apiRoute.php';
            break;
          case 'app':
            // Enrutamiento para la aplicación de escritorio
            include 'routes/appRoute.php';
            break;
          default:
            // Ruta no válida
            echo "Ruta no válida";
            break;
        }
    }
}

// Captura el valor del parámetro 'route' de la URL
$route = $_GET['route'];

// Instancia el enrutador y enruta la solicitud
$router = new Router();
$router->route($route);
?>


<?php
/*
// Incluye el archivo header.php
require_once('templates/header.php');
*/
?>


<?php
/*
// Incluye el archivo header.php
require_once('templates/footer.php');
*/
?>