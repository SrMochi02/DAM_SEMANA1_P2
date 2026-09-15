import 'dart:io';

void main() {
  final nombres = <String>['Ana', 'Luis', 'Marta'];

  for (int i = 0; i < nombres.length; i++) {
    print('$i: ${nombres[i]}');
  }

  for (final nombre in nombres) {
    print(nombre.toUpperCase());
  }
}
