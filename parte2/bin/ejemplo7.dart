//ejemplo 4 herencia y polimorfismo para calcular pagos

abstract class Empleado {
  final String nombre;
  Empleado(this.nombre);
  double calcularPago();
}

class Administrativo extends Empleado {
  final double salarioBase;
  final double bonificacion;
  Administrativo({
    required String nombre,
    required this.salarioBase,
    required this.bonificacion,
  }) : super(nombre);
  @override
  double calcularPago() => salarioBase + bonificacion;
}

class EmpleadoPorHora extends Empleado {
  final double horas;
  final double tarifa;
  EmpleadoPorHora({
    required String nombre,
    required this.horas,
    required this.tarifa,
  }) : super(nombre);
  @override
  double calcularPago() => horas * tarifa;
}

void main() {
  final empleados = <Empleado>[
    Administrativo(nombre: 'Laura', salarioBase: 700, bonificacion: 85),
    EmpleadoPorHora(nombre: 'Carlos', horas: 42, tarifa: 6.5),
  ];
  double total = 0;
  for (final empleado in empleados) {
    final pago = empleado.calcularPago();
    total += pago;
    print('${empleado.nombre}: \$${pago.toStringAsFixed(2)}');
  }
  print('Planilla total: \$${total.toStringAsFixed(2)}');
}
