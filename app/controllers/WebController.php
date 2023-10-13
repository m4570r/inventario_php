<?php
/*
// Ejemplo 
class WebController {
    public function index() {
        // Esta es la acción para la página de inicio web

        // Aquí puedes realizar cualquier lógica específica para la página de inicio de la web
        // Por ejemplo, cargar datos desde la base de datos, preparar contenido, etc.

        // Luego, puedes incluir la vista para mostrar la página de inicio
        $directorio_actual = getcwd();
        echo "El directorio actual es: " . $directorio_actual;
        include_once ($directorio_actual . '/app/views/website/home.views.php');
    }

    // Puedes agregar más acciones y métodos según sea necesario para otras páginas web
}
*/

class WebController {
    public function index() {
        // Lógica para la página de inicio web
        // Carga datos, prepara contenido, etc.
        $directorio_actual = getcwd();
        //echo "El directorio actual es: " . $directorio_actual;
        include_once ($directorio_actual . '/app/views/website/home.views.php');
    }

    public function showAbout() {
        // Lógica para la página "Acerca de"
        // Carga datos, prepara contenido, etc.
        $directorio_actual = getcwd();
        //echo "El directorio actual es: " . $directorio_actual;
        include_once ($directorio_actual . '/app/views/website/about.views.php');
    }

    public function showContact() {
        // Lógica para la página de contacto
        // Carga datos, prepara contenido, etc.
        $directorio_actual = getcwd();
        //echo "El directorio actual es: " . $directorio_actual;
        include_once ($directorio_actual . '/app/views/website/contact.views.php');
    }

    public function showProducts() {
        // Lógica para la página de productos
        // Carga datos, prepara contenido, etc.
        $directorio_actual = getcwd();
        //echo "El directorio actual es: " . $directorio_actual;
        include_once ($directorio_actual . '/app/views/website/products.views.php');
    }
}

?>
