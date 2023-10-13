<?php /*********************************************************************************************************

██╗      ██████╗  ██████╗ 
██║     ██╔═══██╗██╔════╝
██║     ██║   ██║██║  ███╗
██║     ██║   ██║██║   ██║
███████╗╚██████╔╝╚██████╔╝
╚══════╝ ╚═════╝  ╚═════╝ 
░█░█░█▀▄░▀█▀░▀█▀░█▀▀░█░░░█▀█░█▀▀░░░░█▀█░█░█░█▀█
░█▄█░█▀▄░░█░░░█░░█▀▀░█░░░█░█░█░█░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : writeLog.php
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "writeLog.php" es un componente esencial de una aplicación escrita en PHP, diseñado para 
facilitar la escritura de registros (logs) en la aplicación. Los registros son registros detallados 
de eventos, errores y actividades que ocurren en la aplicación, lo que es esencial para el monitoreo 
y la resolución de problemas.

Funcionalidades Principales:
1. Escritura de Registros: "writeLog.php" se utiliza para escribir registros en un archivo específico, 
lo que permite rastrear eventos y actividades en la aplicación.

2. Control de Niveles de Registro: Puede configurar diferentes niveles de registro (por ejemplo, 
informativos, advertencias, errores) para registrar eventos de diferentes gravedades. Esto facilita 
la clasificación y búsqueda de registros.

3. Fecha y Hora: El archivo "writeLog.php" registra la fecha y la hora de cada evento, lo que facilita 
el seguimiento de cuándo ocurrieron los eventos.

4. Gestión de Errores: Permite capturar y registrar errores en la aplicación, lo que es esencial para 
la depuración y la solución de problemas.

5. Personalización: Puede personalizar la ubicación y el formato de los archivos de registro según 
las necesidades de la aplicación.

6. Auditoría y Seguimiento: Los registros también se pueden utilizar para auditar la actividad de 
los usuarios y rastrear el comportamiento de la aplicación.

Este archivo es fundamental para garantizar la estabilidad y el rendimiento de la aplicación, ya 
que ayuda a identificar problemas y rastrear eventos importantes. Además, es una herramienta esencial 
para solucionar problemas y mantener un registro de la actividad en la aplicación web. El uso 
adecuado de "writeLog.php" es esencial para el desarrollo y la gestión de aplicaciones PHP de alta 
calidad.

*********************************************************************************************************/ ?>
<?php
// log_functions.php (debe incluirse en tus archivos de controlador)
include('appLog.php');
include('apiLog.php');
include('webLog.php');

function writeLog($logType, $level, $message) {
    switch ($logType) {
        case 'api':
            writeApiLog($level, $message);
            break;
        case 'app':
            writeAppLog($level, $message);
            break;
        case 'web':
            writeWebLog($level, $message);
            break;
        default:
            // Puedes manejar un caso por defecto o mostrar un error.
            break;
    }
}


?>