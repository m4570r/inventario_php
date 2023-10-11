/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del archivo            : tables.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░▀█▀░█▀█░█▀▄░█░░░█▀▀░█▀▀░░░░▀▀█░█▀▀
░░█░░█▀█░█▀▄░█░░░█▀▀░▀▀█░░░░░░█░▀▀█
░░▀░░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀░░▀▀░░▀▀▀    

Descripción:
El archivo tables.js es un archivo JavaScript que se utiliza para mejorar la funcionalidad y la 
interacción de las tablas en la aplicaión. Las tablas son elementos comunes en las páginas web
que se utilizan para mostrar datos tabulares, y este archivo se encarga de agregar características 
adicionales para hacer que las tablas sean más interactivas y funcionales. 

Ordenamiento de columnas: tables.js permite a los usuarios ordenar las filas de una tabla en función 
del contenido de una columna específica. Puede permitir la ordenación ascendente o descendente.

Paginación: Si la tabla contiene una gran cantidad de datos, tables.js puede dividirlos en páginas y 
agregar controles de paginación, como botones para ir a la página siguiente o anterior.

Búsqueda y filtrado: Puede incluir funciones de búsqueda que permitan a los usuarios buscar y filtrar 
datos dentro de la tabla para encontrar información específica.

Selección de filas: tables.js puede permitir a los usuarios seleccionar una o varias filas de la tabla
para llevar a cabo acciones como eliminación, exportación o análisis detallado.

Resaltado de filas: Puede destacar visualmente filas específicas de la tabla en función de ciertos 
criterios, como resaltar las filas que cumplen con ciertas condiciones.

Ajuste de columnas: tables.js puede permitir a los usuarios ajustar el ancho de las columnas o incluso
ocultar columnas que no son relevantes para ellos.

Exportación de datos: Es posible incluir la funcionalidad de exportación que permite a los usuarios 
descargar los datos de la tabla en diferentes formatos, como CSV o Excel.

Comportamientos condicionales: Dependiendo del contenido de la tabla o de otras interacciones del 
usuario, tables.js puede ajustar su comportamiento. Por ejemplo, puede deshabilitar ciertas opciones 
de filtrado o exportación en función de ciertas condiciones.

Interacciones personalizadas: Puede agregar interacciones personalizadas, como hacer clic en una fila 
para abrir un cuadro de diálogo con información adicional o ejecutar una función específica al 
seleccionar una fila.

Compatibilidad con múltiples navegadores: Es importante que tables.js sea compatible con una variedad 
de navegadores web y dispositivos para que los usuarios puedan acceder a la funcionalidad de la tabla 
sin problemas.

Optimización de rendimiento: Para garantizar un rendimiento óptimo, tables.js debe estar optimizado 
para manejar grandes conjuntos de datos de manera eficiente y proporcionar respuestas rápidas a las 
interacciones del usuario.

**********************************************************************************************************/
// tables.js
// Este ejemplo agrega funcionalidad de ordenamiento a una tabla HTML

// Obtener la tabla
const table = document.getElementById("miTabla");

// Obtener todas las filas excepto la primera (encabezado)
const rows = Array.from(table.querySelectorAll("tr")).slice(1);

// Agregar un evento de clic al encabezado de la columna de "Nombre" para ordenar
const nombreHeader = document.getElementById("headerNombre");
nombreHeader.addEventListener("click", () => {
  rows.sort((a, b) => {
    const nombreA = a.cells[0].textContent.trim();
    const nombreB = b.cells[0].textContent.trim();
    return nombreA.localeCompare(nombreB);
  });

  // Limpiar la tabla
  rows.forEach((row) => table.removeChild(row));

  // Agregar las filas ordenadas nuevamente a la tabla
  rows.forEach((row) => table.appendChild(row));
});
