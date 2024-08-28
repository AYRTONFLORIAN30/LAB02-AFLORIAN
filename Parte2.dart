// Clase Producto
class Producto {
  String nombre;
  double precio;
  String categoria;

  // Constructor básico
  Producto({required this.nombre, required this.precio, required this.categoria});

  // Método para mostrar detalles del producto
  void mostrarDetalles() {
    print('Producto: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Categoría: $categoria');
  }
}

// Clase Electronico que hereda de Producto
class Electronico extends Producto {
  int garantia; // Propiedad adicional

  // Constructor principal
  Electronico({
    required String nombre,
    required double precio,
    required String categoria,
    required this.garantia,
  }) : super(nombre: nombre, precio: precio, categoria: categoria);

  // Constructor personalizado solo con nombre y precio
  Electronico.soloNombreYPrecio({
    required String nombre,
    required double precio,
  })  : garantia = 12, // Valor por defecto
        super(nombre: nombre, precio: precio, categoria: 'General'); // Categoría por defecto

  // Sobrescribir el método mostrarDetalles
  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia meses');
  }
}

void main() {
  // Crear una instancia de Electronico utilizando el constructor personalizado
  Electronico telefono = Electronico.soloNombreYPrecio(nombre: 'Teléfono', precio: 800.0);

  // Mostrar detalles del producto electrónico
  telefono.mostrarDetalles();
}
