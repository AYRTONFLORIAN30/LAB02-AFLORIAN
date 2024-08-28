// Clase abstracta EmpleadoTienda
abstract class EmpleadoTienda {
  String nombre;
  int horasTrabajadas;

  EmpleadoTienda({required this.nombre, required this.horasTrabajadas});

  // Método abstracto
  double calcularSalario();

  // Método para mostrar detalles del empleado
  void mostrarDetalles() {
    print('Empleado: $nombre');
    print('Horas trabajadas: $horasTrabajadas');
    print('Salario: \$${calcularSalario().toStringAsFixed(2)}');
  }
}

// Clase concreta Vendedor
class Vendedor extends EmpleadoTienda {
  static const double tasaPorHora = 15.0;

  Vendedor({required String nombre, required int horasTrabajadas})
      : super(nombre: nombre, horasTrabajadas: horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

// Clase concreta Cajero
class Cajero extends EmpleadoTienda {
  static const double tasaPorHora = 12.0;

  Cajero({required String nombre, required int horasTrabajadas})
      : super(nombre: nombre, horasTrabajadas: horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

void main() {
  // Crear instancias de Vendedor y Cajero
  Vendedor vendedor = Vendedor(nombre: 'Juan', horasTrabajadas: 40);
  Cajero cajero = Cajero(nombre: 'Ana', horasTrabajadas: 35);

  // Mostrar detalles de cada empleado
  vendedor.mostrarDetalles();
  cajero.mostrarDetalles();
}
