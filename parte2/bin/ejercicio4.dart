class Cuenta {
  String titular;
  double _saldo;

  Cuenta(this.titular, this._saldo);

  double get saldo {
    return _saldo;
  }

  void depositar(double cantidad) {
    if (cantidad > 0) {
      _saldo = _saldo + cantidad;
      print('Deposito realizado correctamente.');
    } else {
      print('Error: la cantidad debe ser positiva.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad <= 0) {
      print('Error: la cantidad debe ser positiva.');
    } else if (cantidad > _saldo) {
      print('Error: fondos insuficientes.');
    } else {
      _saldo = _saldo - cantidad;
      print('Retiro realizado correctamente.');
    }
  }
}

void main() {
  Cuenta cuenta = Cuenta('Raul', 500.00);

  print('Titular: ${cuenta.titular}');
  print('Saldo inicial: \$${cuenta.saldo.toStringAsFixed(2)}');

  cuenta.depositar(200.00);

  cuenta.retirar(100.00);

  print('Saldo final: \$${cuenta.saldo.toStringAsFixed(2)}');
}
