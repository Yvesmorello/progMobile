import 'package:aula1908/composicao/models/conta_bancaria.dart';

class ContaBancariaPoupanca extends ContaBancaria{

  ContaBancariaPoupanca(super.titular);

  @override
  void depositar(double valor) {
    super.depositar(valor + 1);
  }

}