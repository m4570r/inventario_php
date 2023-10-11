/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del Archivo            : lightbox.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez
██   ██║╚════██║                                       Lenguaje de Programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█░░░▀█▀░█▀▀░█░█░▀█▀░█▀▄░█▀█░█░█░░░░▀▀█░█▀▀
░█░░░░█░░█░█░█▀█░░█░░█▀▄░█░█░▄▀▄░░░░░░█░▀▀█
░▀▀▀░▀▀▀░▀▀▀░▀░▀░░▀░░▀▀░░▀▀▀░▀░▀░▀░░▀▀░░▀▀▀    

Descripción:
El archivo "lightbox.js" es una parte esencial de una aplicación web que implementa una funcionalidad
de "lightbox". Un "lightbox" es un componente de interfaz de usuario que se utiliza para mostrar 
imágenes, videos u otro contenido multimedia de manera destacada y enfocada en una superposición 
modal sobre el contenido principal de la página. 

Visualización de Contenido Multimedia: "lightbox.js" se encarga de mostrar contenido multimedia, 
como imágenes y videos, de manera elegante y centrada en la pantalla. Este contenido se muestra en 
una ventana emergente que suele estar acompañada de una capa de fondo semitransparente para enfocar 
la atención en el elemento multimedia.

Interfaz de Usuario Intuitiva: Proporciona controles de navegación que permiten al usuario avanzar o 
retroceder entre las imágenes o contenido multimedia en la vista "lightbox". Esto se logra típicamente 
mediante botones de "anterior" y "siguiente", junto con la capacidad de cerrar la vista "lightbox".

Compatibilidad con Gestos: En dispositivos táctiles, "lightbox.js" puede admitir gestos táctiles, 
como deslizar el dedo hacia la izquierda o hacia la derecha para cambiar de imagen, lo que mejora la 
experiencia del usuario en dispositivos móviles.

Escalado de Imágenes: Si se muestran imágenes, "lightbox.js" puede implementar capacidades de escalado 
para permitir que el usuario amplíe o reduzca la imagen para ver detalles con mayor claridad.

Animaciones Suaves: Puede incluir transiciones y animaciones suaves al abrir y cerrar la vista 
"lightbox", lo que crea una experiencia visual agradable.

Personalización: Es posible personalizar el aspecto y el comportamiento del "lightbox" según las 
necesidades de la aplicación. Esto puede incluir cambios en los estilos, el tamaño y los efectos de 
transición.

Carga Asíncrona: Para mejorar el rendimiento de la página, "lightbox.js" puede cargar el contenido 
multimedia de manera asíncrona, lo que significa que solo se carga cuando se abre la vista "lightbox", 
en lugar de cargar todas las imágenes o videos al cargar la página principal.

Integración con Galerías de Imágenes: A menudo, "lightbox.js" se utiliza en conjunción con galerías de 
imágenes para permitir a los usuarios ver una serie de imágenes de manera consecutiva.

Eventos Personalizados: Puede proporcionar eventos personalizados que permitan a los desarrolladores 
de la aplicación realizar acciones específicas cuando se abre o cierra la vista "lightbox", como 
actualizaciones en la base de datos o análisis de seguimiento.

Compatibilidad Multiplataforma: Se esfuerza por garantizar que la vista "lightbox" sea compatible 
con una variedad de navegadores y dispositivos, incluidos dispositivos móviles y tabletas.

Optimización de Rendimiento: Considera la optimización del rendimiento para garantizar que la vista 
"lightbox" se cargue de manera eficiente y funcione sin problemas, incluso en conexiones de Internet 
lentas.
*********************************************************************************************************/
// lightbox.js
// Código para mostrar imágenes en un lightbox cuando se hace clic en ellas
function abrirLightbox(imagen) {
     // Lógica para mostrar la imagen en un lightbox
   }
   
   // Evento de clic en una imagen
   document.querySelectorAll(".imagen").forEach((imagen) => {
     imagen.addEventListener("click", () => {
       abrirLightbox(imagen);
     });
   });
   