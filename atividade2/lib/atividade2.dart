class Conta<T extends num> {
  T saldo;

  Conta(this.saldo);

  void depositar(T valor) {
    saldo = (saldo + valor) as T;
  }

  void sacar(T valor) {
    if (valor > saldo) {
      print('Saque não permitido. Saldo insuficiente.');
    } else {
      saldo = (saldo - valor) as T;
    }
  }

  T obterSaldo() {
    return saldo;
  }
}

void main() {
  final conta = Conta<int>(1000);
  conta.depositar(300);
  conta.sacar(200);
  print('Saldo após saque: ${conta.obterSaldo()}'); 
  
  conta.sacar(1500); 
}
