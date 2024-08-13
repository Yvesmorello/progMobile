import 'models/veiculo.dart';

void main() {
  metodoColecao();
}

void calculate() {}

num somar(double a, int b) {
  return a + b;
}

void metodoColecao() {
  List<int> numeros = [1, 2, 3, 4, 5, 20, 12];
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
  Veiculo strada = Veiculo(319, "Fiat", "Strada", 2024, 92000.00);

  List<Veiculo> listaVeiculos = [onix, polo, hb20, strada];

  Veiculo hb20Sedan = Veiculo.ano2024(151, "Hyundai", "HB20", 85000.00);

  listaVeiculos.add(hb20Sedan);

  hb20Sedan.historia("h20S",
      nomeCriador: "Zé"); //com o required no metodo pode inverter a ordem
  hb20Sedan.historia("Zé");
/*
 List<Veiculo> carrosOrcamento = listaVeiculos.where((carro) => carro.getValor() <= 95000.00).toList();
  carrosOrcamento.forEach((carro){
    print(carro.getMarca());
  });
*/

  // Map<int, Map<List<Veiculo>, String>> carrosNovos = {
  //   2024: {[]: "Honda"} 
  // } ; 

  Map<int, List<Veiculo>> carrosNovos = {
    2024: [onix, polo, hb20, strada],
  }; 

   carrosNovos[2024]?.add(hb20Sedan);

}
