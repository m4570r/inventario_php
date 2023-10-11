/*********************************************************************************************************

     ██╗███████╗
     ██║██╔════╝                                       Nombre del archivo            : cart.js
     ██║███████╗                                       Nombre del Programador        : Miguel Angel Gonzalez   
██   ██║╚════██║                                       Lenguaje de programación      : JavaScript
╚█████╔╝███████║                                       Versión                       : 1.0
 ╚════╝ ╚══════╝
░█▀▀░█▀█░█▀▄░▀█▀░░░░▀▀█░█▀▀
░█░░░█▀█░█▀▄░░█░░░░░░░█░▀▀█
░▀▀▀░▀░▀░▀░▀░░▀░░▀░░▀▀░░▀▀▀

Descripción:
El archivo cart.js es un archivo JavaScript que se utiliza para implementar la funcionalidad de un 
carrito de compras en la aplicación. Un carrito de compras es una parte esencial de muchas 
tiendas en línea y sitios web de comercio electrónico, ya que permite a los usuarios agregar productos, 
ver su selección actual, realizar cambios en la cantidad o eliminar productos, y finalmente proceder 
al proceso de compra.

Agregar productos al carrito: cart.js proporciona la capacidad de agregar productos a un carrito de 
compras. Cuando un usuario hace clic en "Agregar al carrito" en un producto, este se agrega al carrito.

Visualización del carrito: Los usuarios pueden ver los productos que han agregado al carrito, junto con 
detalles como el nombre del producto, la cantidad seleccionada, el precio unitario y el precio total 
por producto.

Modificar la cantidad: Los usuarios pueden ajustar la cantidad de productos en el carrito. Pueden 
aumentar o disminuir la cantidad o incluso eliminar productos por completo.

Calcular el subtotal: cart.js realiza cálculos para determinar el subtotal de la compra en función de 
los productos en el carrito y sus cantidades seleccionadas.

Manejo de descuentos y cupones: Si es aplicable, cart.js permite que se apliquen descuentos o cupones
a la compra y refleja automáticamente el precio actualizado.

Cálculo del total: El archivo JavaScript calcula el total de la compra, incluidos los impuestos y 
gastos de envío si corresponde.

Finalización de la compra: Los usuarios pueden proceder al proceso de pago desde el carrito. 
Esto puede implicar pasar a una página de pago, proporcionar información de envío y pago, y confirmar 
la compra.

Persistencia del carrito: cart.js puede implementar la capacidad de guardar el estado del carrito 
entre sesiones o incluso entre visitas al sitio web, lo que permite a los usuarios continuar su compra 
en otro momento.

Gestión de eventos: El archivo puede manejar eventos como hacer clic en botones de eliminar productos, 
aplicar descuentos o actualizar la cantidad de productos de manera reactiva.

Compatibilidad con múltiples navegadores: Es importante que cart.js sea compatible con una variedad de 
navegadores web y dispositivos para que los usuarios puedan utilizar el carrito sin problemas.

Optimización de rendimiento: Debe estar optimizado para manejar de manera eficiente tanto carritos con 
pocos productos como carritos con una gran cantidad de productos.

*********************************************************************************************************/
// cart.js
// Este ejemplo agrega y gestiona productos en un carrito de compras

const carrito = [];

function agregarProducto(producto) {
  carrito.push(producto);
  console.log(`Producto "${producto}" agregado al carrito.`);
}

function verCarrito() {
  console.log("Productos en el carrito:");
  carrito.forEach((producto) => {
    console.log(`- ${producto}`);
  });
}

agregarProducto("Camisa");
agregarProducto("Zapatos");
verCarrito();
