<?php /*********************************************************************************************************

██╗   ██╗██╗███████╗██╗    ██╗███████╗
██║   ██║██║██╔════╝██║    ██║██╔════╝
██║   ██║██║█████╗  ██║ █╗ ██║███████╗
╚██╗ ██╔╝██║██╔══╝  ██║███╗██║╚════██║
 ╚████╔╝ ██║███████╗╚███╔███╔╝███████║
  ╚═══╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝
 █████╗ ██╗   ██╗████████╗██╗  ██╗
██╔══██╗██║   ██║╚══██╔══╝██║  ██║
███████║██║   ██║   ██║   ███████║
██╔══██║██║   ██║   ██║   ██╔══██║
██║  ██║╚██████╔╝   ██║   ██║  ██║
╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝ 
░█▀▄░█▀▀░█▀▀░█▀▀░▀█▀░░░░░█▀█░█▀█░█▀▀░█▀▀░█░█░█▀█░█▀▄░█▀▄░░░░█░█░▀█▀░█▀▀░█░█░█▀▀░░░░█▀█░█░█░█▀█
░█▀▄░█▀▀░▀▀█░█▀▀░░█░░░░░░█▀▀░█▀█░▀▀█░▀▀█░█▄█░█░█░█▀▄░█░█░░░░▀▄▀░░█░░█▀▀░█▄█░▀▀█░░░░█▀▀░█▀█░█▀▀
░▀░▀░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀░░▀░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░░░▀░▀░▀░░

Nombre del Archivo          : reset_password.views.php
Directorio                  : auth
Nombre del Programador      : Miguel Angel Gonzalez
Lenguaje de Programación    : PHP
Versión                     : 1.0

Descripción:
El archivo "reset_password.views.php" se encuentra en el directorio "auth" y es parte de 
una aplicación web desarrollada en PHP. Su función principal es proporcionar una interfaz 
de usuario que permite a los usuarios restablecer sus contraseñas después de haber 
solicitado una recuperación de contraseña.

Funcionalidades Principales:
1. Formulario de Restablecimiento de Contraseña: Contiene un formulario interactivo que 
permite a los usuarios ingresar una nueva contraseña para su cuenta después de haber 
solicitado una recuperación de contraseña.

2. Validación de Datos: Implementa la validación de datos para garantizar que la nueva 
contraseña cumple con los requisitos de seguridad y es válida.

3. Comunicación con Controladores y Modelos: Se espera que este archivo se comunique con 
el controlador correspondiente, "AuthController.php", para procesar el restablecimiento 
de contraseña y actualizar la información en la base de datos a través del modelo 
asociado.

4. Mensajes de Retroalimentación: Proporciona mensajes de retroalimentación para 
informar al usuario sobre el resultado del proceso de restablecimiento de contraseña, 
ya sea exitoso o con errores.

5. Seguridad: Implementa medidas de seguridad para proteger el proceso de 
restablecimiento de contraseña y garantizar que solo el usuario legítimo pueda realizar 
esta acción.

El archivo "reset_password.views.php" es esencial para permitir a los usuarios 
restablecer sus contraseñas de manera segura y eficiente después de haber solicitado 
una recuperación de contraseña.

*********************************************************************************************************/ ?>