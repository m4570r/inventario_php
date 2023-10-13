<?php
class ApiController {
    public function getVersion() {
        
    // Establece la cabecera de respuesta como JSON
    header('Content-Type: application/json');

    // Crea un arreglo asociativo con los datos que deseas incluir en tu respuesta JSON
    $response = array(
        "status" => "En linea",
        "nombre" => "Sistema de Inventario",
        "arquitectura" => "API",
        "lenguaje" => "PHP",
        "version" => "1.0"
    );

    // Convierte el arreglo en una cadena JSON
    $json_response = json_encode($response);

    // Imprime la respuesta JSON
    echo $json_response;

    }

    public function cmdError() {
        // Establece la cabecera de respuesta como JSON
        header('Content-Type: application/json');

        // Define el arreglo de respuesta con el mensaje de error
        $response = array(
            "error" => "Comando no válido",
            "message" => "El comando proporcionado no es válido. Verifica tu solicitud."
        );

        // Convierte el arreglo en una cadena JSON
        $json_response = json_encode($response);

        // Establece el código de respuesta HTTP 400 (Bad Request)
        http_response_code(400);

        // Imprime la respuesta JSON
        echo $json_response;
    } 
}

?>
