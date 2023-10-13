<?php /*********************************************************************************************************

 ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗   
██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
 ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
░█░░░█▀█░█▀▀░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░░░░█▀█░█░█░█▀█
░█░░░█░█░█░█░░░░░█░░░█░█░█░█░█▀▀░░█░░█░█░░░░█▀▀░█▀█░█▀▀
░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : log_config.php
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "log_config.php" es un componente fundamental de una aplicación web escrita en PHP. Su principal 
función es configurar y gestionar los registros (logs) de la aplicación. Los registros son registros detallados 
de eventos, errores y actividad que ocurren en la aplicación, lo que es esencial para el monitoreo y la 
resolución de problemas.

Funcionalidades Principales:
1. Configuración de Registros: El archivo "log_config.php" contiene configuraciones relacionadas con la generación 
y el almacenamiento de registros. Esto incluye la especificación de la ubicación del archivo de registro, el nivel 
de detalle de los registros y el formato en el que se almacenan.

2. Gestión de Errores: Puede configurar este archivo para manejar la captura y el registro de errores en la aplicación, 
lo que facilita la detección y solución de problemas.

3. Registro de Eventos: Los eventos significativos en la aplicación se registran en los archivos de registro, lo que 
proporciona un historial de lo que ha sucedido y cuándo.

4. Auditoría y Seguimiento: Los registros también se pueden utilizar para auditar la actividad de los usuarios y 
rastrear el comportamiento de la aplicación.

5. Respaldo de Datos: En algunos casos, los registros pueden ser útiles para respaldar datos históricos y cumplir 
con requisitos de cumplimiento.

Este archivo es fundamental para garantizar la estabilidad y el rendimiento de la aplicación, ya que ayuda a 
identificar problemas y rastrear eventos importantes. Además, es una herramienta esencial para solucionar problemas 
y mantener un registro de la actividad en la aplicación web.

*********************************************************************************************************/ ?>
<?php
// log_config.php
$logFiles = [
    'app' => 'register/appLog.log',
    'api' => 'register/apiLog.log',
    'web' => 'register/webLog.log',
];

$logLevels = [
    'CRITICAL' => 5,
    'ERROR' => 4,
    'WARNING' => 3,
    'INFO' => 2,
    'DEBUG' => 1,
    'UNSET' => 0,
    'DISABLED' => -1,
    'ALL' => -2,
];

?>