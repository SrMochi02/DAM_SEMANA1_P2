abstract class Figura {
  double calcularArea();
}

class Rectangulo extends Figura {
  double base;
  double altura;
  Rectangulo(this.base, this.altura);
  @override
  double calcularArea() {
    return base * altura;
  }
}

class Circulo extends Figura {
  double radio;
  Circulo(this.radio);
  @override
  double calcularArea() {
    return 3.1416 * radio * radio;
  }
}

void main() {
  List<Figura> figuras = [
    Rectangulo(10, 5),
    Circulo(4),
    Rectangulo(8, 3),
    Circulo(6),
  ];
  for (Figura figura in figuras) {
    print('Area: ${figura.calcularArea().toStringAsFixed(2)}');
  }
}
