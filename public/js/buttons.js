/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del archivo            : buttons.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▀▄░█░█░▀█▀░▀█▀░█▀█░█▀█░█▀▀░░░░▀▀█░█▀▀
░█▀▄░█░█░░█░░░█░░█░█░█░█░▀▀█░░░░░░█░▀▀█
░▀▀░░▀▀▀░░▀░░░▀░░▀▀▀░▀░▀░▀▀▀░▀░░▀▀░░▀▀▀

Descripción:
El archivo buttons.js es un archivo JavaScript que se utiliza para agregar interactividad y 
funcionalidad a los botones en una página web. Su principal propósito es gestionar las acciones y 
eventos que ocurren cuando los usuarios interactúan con botones en el sitio web, como hacer clic en 
ellos.

Gestión de eventos: buttons.js utiliza JavaScript para registrar eventos de clic u otros eventos de 
interacción de usuario en los botones de la página. Esto permite definir qué sucede cuando un usuario 
hace clic en un botón en particular.

Validación de formularios: Si el sitio web incluye formularios, buttons.js puede realizar validaciones
de entrada antes de enviar los datos al servidor. Esto garantiza que los datos ingresados por el 
usuario sean correctos antes de procesarlos.

Abrir ventanas modales: Puede utilizar buttons.js para abrir ventanas emergentes (modales) que 
muestren contenido adicional, como formularios de inicio de sesión, información detallada o imágenes 
ampliadas, cuando un usuario hace clic en un botón específico.

Envío de datos al servidor: Si se requiere enviar datos al servidor, como al enviar un formulario, 
buttons.js puede gestionar la recopilación de datos de entrada del usuario y el envío de esos datos al
servidor utilizando técnicas como AJAX o Fetch API.

Animaciones y efectos visuales: buttons.js puede agregar animaciones o efectos visuales a los botones 
para proporcionar retroalimentación visual cuando se interactúa con ellos, como cambios de color, 
transiciones suaves o efectos de sombra.

Comportamientos condicionales: Dependiendo del contexto y el estado del sitio web, buttons.js puede 
ajustar el comportamiento de los botones. Por ejemplo, un botón podría deshabilitarse o cambiar su 
función en función de ciertas condiciones.

Acceso a otros componentes: buttons.js puede permitir a los botones interactuar con otros componentes 
de la página, como cambiar el contenido de un div o mostrar/ocultar elementos adicionales.

Compatibilidad con múltiples navegadores: Es importante que buttons.js sea compatible con una variedad 
de navegadores web y dispositivos, por lo que se deben tener en cuenta las diferencias en la 
implementación de JavaScript en distintos entornos.

Optimización de rendimiento: Para garantizar una respuesta rápida y suave, es esencial optimizar las 
operaciones realizadas por buttons.js y minimizar cualquier carga innecesaria en el navegador.

*********************************************************************************************************/
// buttons.js
// Obtener el botón por su ID
const boton = document.getElementById("boton");

// Agregar un evento de clic al botón
boton.addEventListener("click", () => {
     // Cambiar el color de fondo del cuerpo del documento
     document.body.style.backgroundColor = "lightblue";
});
   