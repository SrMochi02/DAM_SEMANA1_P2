import 'dart:io';

void main() {
  final producto = <String, dynamic>{
    'nombre': 'teclado',
    'precio': 25.50,
    'stock': 8,
  };
  final nombre = producto['nombre'] as String ?? 'sin nombre';
  final stock = producto['stock'] as int ?? 0;
  print('$nombre - ${stock > 0 ? 'disponible' : 'agotado'}')
    
}
