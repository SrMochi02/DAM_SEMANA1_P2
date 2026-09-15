//ejemplo 3 clase, constructor, geter y metodo

class Estudiante {
  final String nombre;
  final List<double> notas;

  Estudiante({required this.nombre, required this.notas});
  double get promedio =>
      notas.fold(0.0, (suma, nota) => suma + nota) / notas.length;
  bool get aprobado => promedio >= 7;
}

void main() {
  final estudiante = Estudiante(nombre: 'Lucía', notas: [8.0, 7.5, 9.0]);

  print('${estudiante.nombre}: ${estudiante.promedio.toStringAsFixed(2)}');
  print(estudiante.aprobado ? 'Aprobada' : 'Reprobada');
}
