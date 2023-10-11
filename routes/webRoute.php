<?PHP /*******************************************************************************************************

██████╗  ██████╗ ██╗   ██╗████████╗███████╗             
██╔══██╗██╔═══██╗██║   ██║╚══██╔══╝██╔════╝             Nombre del archivo          : webRoute.php
██████╔╝██║   ██║██║   ██║   ██║   █████╗               Nombre del Programador      : Miguel Angel Gonzalez
██╔══██╗██║   ██║██║   ██║   ██║   ██╔══╝               Lenguaje de programación    : PHP 
██║  ██║╚██████╔╝╚██████╔╝   ██║   ███████╗             Versión                     : 1.0
╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
░█░█░█▀▀░█▀▄░█▀▄░█▀█░█░█░▀█▀░█▀▀░░░░█▀█░█░█░█▀█
░█▄█░█▀▀░█▀▄░█▀▄░█░█░█░█░░█░░█▀▀░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀▀▀░▀▀░░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░░▀░░░▀░▀░▀░░       
Descripción:
El archivo webRoute.php es un archivo PHP que se utiliza para el enrutamiento y la gestión de 
solicitudes para esta aplicacion web desarrollada en PHP puro, es decir, sin utilizar un marco de 
desarrollo PHP como Laravel o Symfony. Su función principal es gestionar las rutas de URL y dirigir 
las solicitudes a los controladores correspondientes según la URL solicitada por el usuario.

Inclusión de archivos: En este archivo, se suelen incluir otros archivos PHP que contienen la lógica 
de la aplicación, como los controladores que manejan las solicitudes del usuario. Por ejemplo, 
puedes incluir tus controladores como require_once 'controllers/UsuariosController.php';.

Definición de rutas: Se definen las rutas URL que la aplicación web debe gestionar. 
Cada ruta se mapea a un controlador y una acción específicos que se ejecutarán cuando un usuario 
acceda a esa URL en particular.

Captura de la URL solicitada: Se obtiene la URL solicitada por el usuario desde la superglobal 
$_SERVER y se procesa para determinar qué controlador y acción deben manejar la solicitud.

Enrutamiento: El enrutador, que es parte de este archivo, analiza la URL solicitada y la compara con 
las rutas definidas. Cuando encuentra una coincidencia, llama al controlador y la acción 
correspondientes.

Manejo de parámetros: Los enrutadores suelen ser capaces de manejar parámetros dinámicos en las URL. 
Por ejemplo, una URL como /usuarios/1 podría representar una solicitud para ver el perfil del usuario 
con ID 1. Los enrutadores pueden extraer estos parámetros de la URL y pasarlos al controlador 
correspondiente.

Control de errores y redirecciones: En este archivo, también se pueden implementar funciones para 
controlar errores, como mostrar una página de error 404 si no se encuentra una ruta coincidente,
o realizar redirecciones si es necesario.

Inicio de la aplicación: Finalmente, el archivo webroute.php suele contener el código que inicia la 
aplicación web. Esto puede incluir la creación de una instancia de la aplicación y la llamada al 
enrutador para gestionar la solicitud actual.

En resumen, el archivo webroute.php es esencial para la gestión de rutas y solicitudes en aplicaciones
web desarrolladas en PHP puro. Su función principal es garantizar que las solicitudes se dirijan a los
controladores adecuados y que la aplicación responda de manera apropiada a las acciones del usuario en 
función de la URL solicitada.

*******************************************************************************************************/
?>