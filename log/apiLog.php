<?php /*********************************************************************************************************

██╗      ██████╗  ██████╗ 
██║     ██╔═══██╗██╔════╝
██║     ██║   ██║██║  ███╗   
██║     ██║   ██║██║   ██║
███████╗╚██████╔╝╚██████╔╝
╚══════╝ ╚═════╝  ╚═════╝        
░█▀█░█▀█░▀█▀░█░░░█▀█░█▀▀░░░░█▀█░█░█░█▀█
░█▀█░█▀▀░░█░░█░░░█░█░█░█░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░░▀░░░▀░▀░▀░░
Nombre del Archivo          : appLog.php
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "appLog.php" es un script en PHP diseñado para gestionar y registrar eventos relacionados 
con la parte de la aplicación móvil (app) de un sistema o servicio. Su principal objetivo es llevar un 
registro de actividades, errores y eventos importantes que ocurren en la aplicación móvil. 

Registro de Eventos: El script "appLog.php" permite registrar una amplia variedad de eventos que se 
producen dentro de la aplicación móvil, como acciones de usuario, procesos, errores y actividades del 
sistema. Cada evento se registra con una marca de tiempo para un seguimiento preciso.

Almacenamiento Flexible: Los registros pueden almacenarse en diferentes formatos, como archivos de 
texto o en una base de datos, según las preferencias del desarrollador. Esto facilita la gestión y el 
acceso a los registros registrados.

Niveles de Severidad: Los eventos pueden clasificarse en distintos niveles de severidad, como 
"informativos", "advertencias" o "errores críticos". Esta clasificación ayuda a categorizar y 
priorizar los eventos registrados para una mejor comprensión y resolución.

Formato Legible: Los registros se generan en un formato legible para los desarrolladores, lo que 
facilita la identificación y solución de problemas. Cada registro generalmente incluye detalles 
como el tipo de evento, la versión de la aplicación, el dispositivo utilizado y una descripción 
detallada del evento.

Seguridad: El script "appLog.php" se asegura de que los registros sean accesibles solo para usuarios 
autorizados y se almacenen de manera segura para evitar la manipulación no autorizada.

Rotación de Registros: Para evitar que los archivos de registro se vuelvan demasiado grandes, el 
script puede incluir funcionalidades para la rotación de registros, lo que significa que se crean 
nuevos archivos de registro periódicamente y se eliminan los registros más antiguos.

Auditoría y Monitoreo: Los registros generados por este script son esenciales para la auditoría de la 
aplicación móvil y el monitoreo del comportamiento de los usuarios y el rendimiento de la aplicación.

*********************************************************************************************************/ ?>
<?php
// apiLog.php
include_once(__DIR__ . '../../app/config/log_config.php');

function writeApiLog($level, $message) {
    global $logLevels, $logFiles;
    if ($logLevels[$level] <= $logLevels['ALL']) {
        $timestamp = date('Y-m-d H:i:s');
        $logMessage = "[$timestamp][$level] $message" . PHP_EOL;
        error_log($logMessage, 3, $logFiles['api']);
    }
}

?>