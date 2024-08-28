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

  // Constructor que inicializa todas las propiedades, incluyendo las heredadas
  Electronico({
    required String nombre,
    required double precio,
    required String categoria,
    required this.garantia,
  }) : super(nombre: nombre, precio: precio, categoria: categoria);

  // Sobrescribir el método mostrarDetalles para incluir información adicional
  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia meses');
  }
}

void main() {
  // Crear una instancia de Electronico
  Electronico laptop = Electronico(
    nombre: 'Laptop',
    precio: 1500.0,
    categoria: 'Electrónicos',
    garantia: 24,
  );

  // Mostrar detalles del producto electrónico
  laptop.mostrarDetalles();
}
