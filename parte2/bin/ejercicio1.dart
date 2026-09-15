void main() {
  List<double> ventas = [25.50, 75.00, 40.00, 120.00, 60.00];
  double total = 0;
  double mayor = ventas[0];
  for (double venta in ventas) {
    total = total + venta;
    if (venta > mayor) {
      mayor = venta;
    }
  }
  double promedio = total / ventas.length;
  List<double> ventasMayores = [];
  for (double venta in ventas) {
    if (venta > 50) {
      ventasMayores.add(venta);
    }
  }
  print('Lista de ventas: $ventas');
  print('Total de ventas: \$${total.toStringAsFixed(2)}');
  print('Promedio de ventas: \$${promedio.toStringAsFixed(2)}');
  print('Venta mayor: \$${mayor.toStringAsFixed(2)}');
  print('Ventas superiores a \$50: $ventasMayores');
}
