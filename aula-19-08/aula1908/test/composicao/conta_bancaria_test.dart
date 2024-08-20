import 'package:aula1908/composicao/models/conta_bancaria.dart';
import 'package:aula1908/composicao/models/conta_bancaria_poupanca.dart';
import 'package:aula1908/composicao/models/titular.dart';
import 'package:test/test.dart';

void main() {
  test('Deve criar conta bancaria com saldo incial zero!', () {

    var contaBancaria = ContaBancaria(
      Titular.pessoaFisica("Jorge"),
    );
    expect(contaBancaria.getSaldo(), 0.0);


    contaBancaria.depositar(150.0);
    expect(contaBancaria.getSaldo(), 150.0);

  });

  test('Deve criar conta bancaria poupanca', () {
    
    var poupanca = ContaBancariaPoupanca(
      Titular.pessoaFisica("Manuel")
      );

    expect(poupanca.getSaldo(), 0.0);

    poupanca.depositar(20.0);
    expect(poupanca.getSaldo(), 21.0);

  });
}
