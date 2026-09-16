class Estudiante {
  String nombre;
  String carrera;
  List<double> notas;
  Estudiante(this.nombre, this.carrera, this.notas);
  double get promedio {
    if (notas.isEmpty) {
      return 0;
    }
    double suma = 0;
    for (double nota in notas) {
      suma = suma + nota;
    }
    return suma / notas.length;
  }

  bool get aprobado {
    return promedio >= 6;
  }

  void agregarNota(double nota) {
    if (nota >= 0 && nota <= 10) {
      notas.add(nota);
      print('Nota agregada correctamente.');
    } else {
      print('Error: la nota debe estar entre 0 y 10.');
    }
  }
}

void main() {
  Estudiante estudiante = Estudiante('Raul', 'Desarrollo de Software', [
    8.0,
    7.5,
    9.0,
  ]);
  estudiante.agregarNota(8.5);
  print('Nombre: ${estudiante.nombre}');
  print('Carrera: ${estudiante.carrera}');
  print('Notas: ${estudiante.notas}');
  print('Promedio: ${estudiante.promedio.toStringAsFixed(2)}');
  print('Aprobado: ${estudiante.aprobado}');
}
