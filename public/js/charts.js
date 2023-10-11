/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del Archivo            : chart.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de Programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▀▀░█░█░█▀█░█▀▄░▀█▀░█▀▀░░░░▀▀█░█▀▀
░█░░░█▀█░█▀█░█▀▄░░█░░▀▀█░░░░░░█░▀▀█
░▀▀▀░▀░▀░▀░▀░▀░▀░░▀░░▀▀▀░▀░░▀▀░░▀▀▀    
Descripción:
El archivo "chart.js" es una biblioteca de JavaScript diseñada para crear gráficos y visualizaciones 
de datos interactivas en aplicaciones web. Su principal objetivo es proporcionar a los desarrolladores
una forma sencilla y eficiente de representar datos en forma de gráficos, como gráficos de barras, 
gráficos circulares, gráficos de líneas y más.

Gráficos Personalizables: "chart.js" permite crear una amplia variedad de gráficos personalizables, lo 
que significa que los desarrolladores pueden ajustar aspectos como colores, leyendas, etiquetas, 
tamaños y más para adaptar los gráficos a las necesidades específicas de su aplicación.

Compatibilidad con Diversos Tipos de Gráficos: Esta biblioteca admite varios tipos de gráficos, 
incluidos gráficos de barras, gráficos de líneas, gráficos circulares (también conocidos como gráficos 
     de tarta o dona), gráficos de radar y gráficos de dispersión, entre otros.

Interactividad: Los gráficos generados por "chart.js" son interactivos. Los usuarios pueden interactuar 
con los gráficos mediante el zoom, el desplazamiento y la capacidad de hacer clic en elementos para 
obtener información adicional. Esto mejora la experiencia del usuario y facilita la exploración de 
datos.

Escalabilidad: La biblioteca es escalable y puede manejar grandes conjuntos de datos, lo que la hace 
adecuada para aplicaciones que requieren representar información compleja y detallada.

Animaciones: "chart.js" admite animaciones suaves para la representación de datos. Esto ayuda a que 
los gráficos sean más atractivos visualmente y permite destacar cambios y tendencias en los datos a 
lo largo del tiempo.

API Documentada: La biblioteca cuenta con una documentación completa que proporciona ejemplos 
detallados, guías y referencias de API para ayudar a los desarrolladores a aprovechar al máximo las 
capacidades de "chart.js".

Compatibilidad Cruzada: "chart.js" es compatible con una variedad de navegadores web modernos, lo que 
garantiza que los gráficos funcionen de manera consistente en diferentes plataformas.

Integración Sencilla: Los desarrolladores pueden integrar fácilmente "chart.js" en sus aplicaciones 
web existentes mediante la inclusión del archivo JavaScript y la creación de instancias de gráficos 
según sea necesario.

*********************************************************************************************************/
// charts.js
// Este ejemplo utiliza la biblioteca Chart.js para crear un gráfico de barras

// Datos del gráfico
const datos = {
     labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo"],
     datasets: [
       {
         label: "Ventas mensuales",
         backgroundColor: "rgba(75, 192, 192, 0.2)",
         borderColor: "rgba(75, 192, 192, 1)",
         borderWidth: 1,
         data: [65, 59, 80, 81, 56],
       },
     ],
   };
   
   // Configuración del gráfico
   const config = {
     type: "bar",
     data: datos,
   };
   
   // Crear un gráfico en un elemento canvas con id "miGrafico"
   const ctx = document.getElementById("miGrafico").getContext("2d");
   new Chart(ctx, config);
   