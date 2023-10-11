/*********************************************************************************************************

     ██╗███████╗                                  
     ██║██╔════╝                                       Nombre del Archivo            : maps.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de Programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▄█░█▀█░█▀█░█▀▀░░░░▀▀█░█▀▀
░█░█░█▀█░█▀▀░▀▀█░░░░░░█░▀▀█
░▀░▀░▀░▀░▀░░░▀▀▀░▀░░▀▀░░▀▀▀    

Descripción:
El archivo "maps.js" es un componente JavaScript utilizado para integrar y personalizar mapas 
interactivos en una aplicación web. Estos mapas pueden mostrar ubicaciones geográficas, rutas, 
marcadores y otra información relacionada con la geolocalización. 

Integración de Mapas: "maps.js" permite la integración de mapas interactivos en una aplicación web 
mediante servicios de mapas populares como Google Maps, Mapbox, Leaflet, entre otros.

Visualización de Ubicaciones: Los mapas pueden mostrar ubicaciones geográficas específicas, como 
oficinas, tiendas, puntos de interés o cualquier otro lugar relevante para la aplicación.

Marcadores Personalizados: Se pueden agregar marcadores personalizados en el mapa para resaltar 
ubicaciones específicas. Estos marcadores pueden incluir iconos personalizados y ventanas emergentes 
con información adicional.

Rutas y Direcciones: "maps.js" puede mostrar rutas y direcciones entre dos o más puntos en el mapa, 
lo que es útil para aplicaciones de navegación y planificación de rutas.

Zoom y Pan: Los usuarios pueden acercar y alejar el mapa, así como arrastrarlo para explorar 
diferentes áreas geográficas.

Controles de Mapa: Se pueden agregar controles en la interfaz de usuario para permitir a los 
usuarios cambiar la vista del mapa, activar capas adicionales o realizar otras acciones relacionadas 
con la navegación.

Capas Personalizadas: Los mapas pueden incluir capas personalizadas con datos adicionales, como 
información geográfica, clima, tráfico u otra información relevante.

Compatibilidad con Dispositivos Móviles: "maps.js" está diseñado para ser receptivo y funcionar 
adecuadamente en dispositivos móviles, lo que garantiza una experiencia de usuario consistente en 
diferentes dispositivos.

Interacción del Usuario: Permite la interacción del usuario con el mapa, como hacer clic en marcadores 
para obtener más detalles, trazar rutas o buscar ubicaciones específicas.

Personalización: Los desarrolladores pueden personalizar la apariencia y el comportamiento del mapa 
según las necesidades de la aplicación, incluyendo colores, estilos y marcadores.

Integración de API: Puede integrarse con API de servicios de mapas para acceder a funcionalidades 
avanzadas, como geocodificación inversa, cálculo de distancias y tiempos de viaje, entre otros.

**********************************************************************************************************/
// maps.js
// Este ejemplo integra un mapa interactivo de Google Maps

function initMap() {
     const ubicacion = { lat: 40.7128, lng: -74.0060 }; // Coordenadas de Nueva York
     const mapa = new google.maps.Map(document.getElementById("mapa"), {
       zoom: 10,
       center: ubicacion,
     });
     const marcador = new google.maps.Marker({ position: ubicacion, map: mapa });
   }
   