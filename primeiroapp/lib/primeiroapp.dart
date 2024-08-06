import 'package:primeiroapp/models/veiculo.dart';

void main(){
  metodoColecao();
}

void calculate(){
}

num somar(double a, int b){
  return a+b;
}


void metodoColecao(){

  List<int> numeros = [1,2,3,4,5,20,12];
  numeros.add(85);
  print("Numeros da lista: $numeros");

//SET N REPETE NUMEROS (USA {})
  Set<int> numeroPares = {2, 4, 6, 8};
  numeroPares.add(8);
  print("Numeros Set $numeroPares");

  Map<int, List<String>> compras = {
    1: ['Carne', 'Carvão', 'Farofa'],
    5: ['Gelatina', 'Docê de Leite', 'Brigadeiro']
  };
  print("Cardapio: $compras");

  Veiculo onix = Veiculo(312, "Chevrolet", "Onix", 2024, 89000.00);
  Veiculo polo = Veiculo(313, "VolksWagen", "Polo", 2024, 94000.00);
  Veiculo hb20 = Veiculo(322, "Hyundai", "HB20", 2024, 96100.00);
  Veiculo estrada = Veiculo(319, "Fiat", "Estrada", 2024, 92000.00);

  List<Veiculo> listaVeiculos = [onix, polo, hb20, estrada];

 List<Veiculo> carrosOrcamento = listaVeiculos.where((carro) => carro.getValor() <= 95000.00).toList();
  carrosOrcamento.forEach((carro){
    print(carro.getMarca());
  });

}
