import 'package:atividade2/atividade2.dart';
import 'package:test/test.dart';

void main() {
  test('Teste de depósito e saque', () {
    final conta = Conta<int>(1000);
    conta.depositar(300);
    conta.sacar(200);
    expect(conta.obterSaldo(), 1100);
  });

  test('Teste com saldo inicial zero', () {
    final conta = Conta<int>(0);
    conta.depositar(1000);
    expect(conta.obterSaldo(), 1000);
  });

  test('Teste saque sem saldo suficiente', () {
    final conta = Conta<int>(500);
    conta.sacar(600);
    expect(conta.obterSaldo(), 500); 
  });
}