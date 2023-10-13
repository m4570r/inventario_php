<?php /*******************************************************************************************************
 
██████╗  ██████╗ ██╗   ██╗████████╗███████╗         
██╔══██╗██╔═══██╗██║   ██║╚══██╔══╝██╔════╝             
██████╔╝██║   ██║██║   ██║   ██║   █████╗               
██╔══██╗██║   ██║██║   ██║   ██║   ██╔══╝               
██║  ██║╚██████╔╝╚██████╔╝   ██║   ███████╗             
╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
░█▀█░█▀█░▀█▀░█▀▄░█▀█░█░█░▀█▀░█▀▀░░░░█▀█░█░█░█▀█
░█▀█░█▀▀░░█░░█▀▄░█░█░█░█░░█░░█▀▀░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀░░░▀▀▀░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del archivo          : apiRoute.php
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de programación    : PHP
Versión                     : 1.0

Descripción:
El archivo apiRoute.php es un archivo importante en esta aplicación web que ofrece una API REST. 
Su objetivo principal es definir las rutas y controladores de la API, lo que permite la comunicación 
con otras aplicaciones o servicios. La estructura y las funciones exactas pueden variar según la 
arquitectura específica que requiera la aplicación.
  
Definición de rutas de la API: En el archivo apiRoute.php, es probable que encuentres la definición de
las rutas y endpoints de la API REST que la aplicación web debe proporcionar. Esto incluiría las URL 
que los clientes de la API pueden usar para acceder a recursos específicos.

Métodos HTTP: Las rutas de la API pueden estar asociadas a métodos HTTP específicos, como GET, POST, 
PUT o DELETE, que determinan la acción que debe realizarse en un recurso específico. 
El archivo apiRoute.php podría definir qué controlador y método de controlador deben ejecutarse para 
cada ruta y método HTTP.

Controladores de la API: Es común que las rutas de la API se asocien a controladores específicos de la
API que gestionan la lógica de la API para esa ruta en particular. El archivo apiRoute.php podría 
importar o hacer referencia a estos controladores.

Parámetros de URL: Al igual que en una API REST típica, algunas rutas de la API pueden incluir 
parámetros de URL que se utilizan para consultar o modificar recursos específicos. 
El archivo apiRoute.php podría definir cómo se capturan y utilizan estos parámetros.

Middleware de la API: En aplicaciones web más complejas, podría haber referencias a middleware 
específico de la API en el archivo apiRoute.php. El middleware de la API se utiliza para realizar 
tareas intermedias, como la autenticación de clientes, la autorización o la validación de solicitudes.

Procesamiento de solicitudes y respuestas de la API: El archivo apiRoute.php puede definir cómo se 
procesan las solicitudes entrantes a la API y cómo se genera la respuesta que se envía de vuelta a los 
clientes, generalmente en formato JSON u otro formato de intercambio de datos.

Enrutamiento dinámico de la API: En algunas API, el enrutamiento puede ser dinámico, lo que significa 
que las rutas se generan automáticamente a partir de ciertos patrones. Esto también podría estar 
definido en el archivo apiRoute.php.

Comentarios y documentación: Es importante incluir comentarios y documentación en el archivo 
apiRoute.php para explicar el propósito y el funcionamiento de cada ruta de la API, así como cualquier
autenticación o autorización requerida y el formato de datos esperado en las solicitudes y respuestas.

 *******************************************************************************************************/ ?>
 
 <?php
 $directorio_actual = getcwd();
 include_once ($directorio_actual . '/app/controllers/ApiController.php');
 $apiController = new ApiController();
 
 if (isset($_GET['cmd'])) {
     $cmd = $_GET['cmd'];
     switch ($cmd) {
         case 'version':
             $apiController->getVersion();
             break;
         case 'otra_accion':
             $apiController->otraAccion();
             break;
         default:
              $apiController->cmdError();
             break;
     }
 } else {
    $apiController->cmdError();
     http_response_code(400);
     echo json_encode(array("message" => "Falta el comando (cmd) en la solicitud"));
 }
 
?>