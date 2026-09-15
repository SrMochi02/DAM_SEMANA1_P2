void main() {
  List<Map<String, dynamic>> productos = [
    {'nombre': 'Martillo', 'precio': 15.00, 'cantidad': 10, 'disponible': true},
    {'nombre': 'Taladro', 'precio': 75.00, 'cantidad': 5, 'disponible': true},
    {
      'nombre': 'Destornillador',
      'precio': 8.50,
      'cantidad': 0,
      'disponible': false,
    },
  ];
  double valorTotal = 0;
  print('PRODUCTOS DISPONIBLES');
  print('---------------------');
  for (Map<String, dynamic> producto in productos) {
    if (producto['disponible'] == true) {
      print('Producto: ${producto['nombre']}');
      print('Precio: \$${producto['precio'].toStringAsFixed(2)}');
      print('Cantidad: ${producto['cantidad']}');
      print('');
      valorTotal = valorTotal + (producto['precio'] * producto['cantidad']);
    }
  }
  print('Valor total del inventario: \$${valorTotal.toStringAsFixed(2)}');
}
