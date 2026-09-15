//lista de maapas y validacion de claves

import 'dart:io';

void main() {
  final productos = <Map<String, dynamic>>[
    {'nombre': 'Teclado', 'precio': 25.5, 'stock': 8},
    {'nombre': 'Mouse', 'precio': 12.0, 'stock': 0},
    {'nombre': 'Monitor', 'precio': 180.0, 'stock': 3},
  ];

  for (final producto in productos) {
    final nombre = producto['nombre'] as String? ?? 'Sin nombre';
    final stock = producto['stock'] as int? ?? 0;
    if (stock > 0) print('$nombre: disponible');
  }
}
