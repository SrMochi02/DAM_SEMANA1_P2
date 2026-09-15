import 'dart:io';

class Producto {
  final String nombre;
  final double precio;
  int stock;

  Producto({required this.nombre, required this.stock, required this.precio}) {
    if (precio < 0 || stock < 0) {
      throw ArgumentError('Precio y stock deben ser validos');
    }

    bool get disponible => stock > 0;

    double totalPorCantidad(int cantidad){
        if ( cantidad <= 0) return 0;
        return precio * cantidad;
    }
  }
}
