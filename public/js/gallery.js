/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del Archivo            : gallery.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de Programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▀▀░█▀█░█░░░█░░░█▀▀░█▀▄░█░█░░░░▀▀█░█▀▀
░█░█░█▀█░█░░░█░░░█▀▀░█▀▄░░█░░░░░░░█░▀▀█
░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░▀░░▀░░▀▀░░▀▀▀    
Descripción:
El archivo "gallery.js" es un componente JavaScript diseñado para crear y administrar una galería de 
imágenes interactiva en una aplicación web. Su objetivo principal es permitir a los usuarios ver y 
explorar una colección de imágenes de manera conveniente y atractiva. 

Visualización de Imágenes: "gallery.js" proporciona una interfaz para mostrar imágenes en una galería,
permitiendo a los usuarios ver las imágenes en tamaño completo o en una vista de cuadrícula.

Navegación Intuitiva: Los usuarios pueden navegar por las imágenes de la galería de forma intuitiva 
mediante controles como botones de flecha, indicadores de paginación o gestos táctiles en dispositivos 
móviles.

Ampliación y Reducción: La galería permite a los usuarios hacer clic en una imagen para verla en 
tamaño completo y, si es necesario, reducirla nuevamente para volver a la vista de la galería.

Funciones de Diapositivas: "gallery.js" suele incluir funciones de presentación de diapositivas que 
permiten a los usuarios ver las imágenes automáticamente en un ciclo, con opciones para ajustar la 
velocidad y la pausa.

Descripciones de Imágenes: Se pueden incluir descripciones o leyendas debajo de cada imagen para 
proporcionar información adicional o contexto sobre la imagen.

Personalización: Los desarrolladores pueden personalizar la apariencia y el comportamiento de la 
galería de imágenes mediante opciones como colores, transiciones y efectos visuales.

Compatibilidad con Múltiples Formatos de Imágenes: La galería es compatible con una variedad de 
formatos de imágenes, incluidos JPG, PNG, GIF y más.

Integración Fácil: Los desarrolladores pueden integrar "gallery.js" en sus aplicaciones web existentes 
mediante la inclusión del archivo JavaScript y la configuración de la galería según sus necesidades.

Compatibilidad con Dispositivos Móviles: La galería está diseñada para ser receptiva y funcionar de 
manera eficiente en dispositivos móviles, lo que garantiza una experiencia de usuario consistente en 
diferentes plataformas.

**********************************************************************************************************/
// gallery.js
// Este ejemplo muestra una galería de imágenes con botones de siguiente y anterior

const imagenes = ["imagen1.jpg", "imagen2.jpg", "imagen3.jpg"];
let indiceActual = 0;

function mostrarImagen(indice) {
  const contenedor = document.getElementById("galeria");
  contenedor.innerHTML = `<img src="${imagenes[indice]}" alt="Imagen">`;
}

mostrarImagen(indiceActual);

document.getElementById("anterior").addEventListener("click", () => {
  indiceActual = (indiceActual - 1 + imagenes.length) % imagenes.length;
  mostrarImagen(indiceActual);
});

document.getElementById("siguiente").addEventListener("click", () => {
  indiceActual = (indiceActual + 1) % imagenes.length;
  mostrarImagen(indiceActual);
});
