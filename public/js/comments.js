/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del Archivo            : comments.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de Programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▀▀░█▀█░█▄█░█▄█░█▀▀░█▀█░▀█▀░█▀▀░░░░▀▀█░█▀▀
░█░░░█░█░█░█░█░█░█▀▀░█░█░░█░░▀▀█░░░░░░█░▀▀█
░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀░░▀▀░░▀▀▀    
Descripción:

El archivo "comments.js" es un componente JavaScript diseñado para implementar y gestionar un 
sistema de comentarios en una aplicación web. Su propósito principal es permitir que los usuarios 
interactúen con el contenido del sitio web al dejar comentarios y proporcionar retroalimentación. 

Sistema de Comentarios: "comments.js" proporciona una interfaz para que los usuarios escriban, 
envíen y vean comentarios en las páginas web.

Formulario de Comentarios: Incluye un formulario de comentarios que permite a los usuarios escribir 
sus comentarios, proporcionar un nombre o pseudónimo y, en algunos casos, ingresar su dirección de 
correo electrónico.

Validación de Comentarios: Puede incluir funciones de validación para garantizar que los comentarios 
cumplan con ciertos criterios, como la longitud mínima o la ausencia de contenido no deseado.

Administración de Comentarios: Los administradores del sitio web pueden tener acceso a una interfaz 
de administración que les permite revisar, moderar y aprobar los comentarios antes de que se publiquen
en la página.

Clasificación y Respuestas: Puede admitir funciones de clasificación de comentarios por relevancia o 
fecha, así como respuestas a comentarios individuales para fomentar la conversación.

Integración con Redes Sociales: Puede incluir opciones para que los usuarios inicien sesión o 
compartan sus comentarios a través de sus cuentas en redes sociales como Facebook o Twitter.

Personalización: Los desarrolladores pueden personalizar la apariencia y el comportamiento del 
sistema de comentarios para que se ajuste al diseño y la funcionalidad de su sitio web.

Compatibilidad con Múltiples Páginas: "comments.js" se puede utilizar en varias páginas del sitio web 
para permitir la interacción de los usuarios en diferentes secciones.

Compatibilidad con Dispositivos Móviles: Está diseñado para ser receptivo y funcionar correctamente en 
dispositivos móviles, lo que garantiza una experiencia de usuario consistente en diferentes plataformas.

Seguridad: El archivo "comments.js" debe implementar medidas de seguridad para proteger contra spam, 
ataques de inyección de código y otros tipos de amenazas.
*********************************************************************************************************/
// comments.js
// Este ejemplo muestra y permite a los usuarios agregar comentarios

const comentarios = [];

function agregarComentario(comentario) {
  comentarios.push(comentario);
  console.log("Nuevo comentario agregado:", comentario);
}

function mostrarComentarios() {
  console.log("Comentarios:");
  comentarios.forEach((comentario, indice) => {
    console.log(`${indice + 1}: ${comentario}`);
  });
}

agregarComentario("¡Excelente sitio web!");
agregarComentario("Me gusta mucho este contenido.");
mostrarComentarios();
