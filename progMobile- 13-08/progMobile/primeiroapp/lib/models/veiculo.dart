class Veiculo {
  int id;
  String marca;
  String modelo;
  late int ano;
  double valor;

  Veiculo(
    this.id,
    this.marca,
    this.modelo,
    this.ano,
    this.valor,
  );

  Veiculo.ano2024(
    this.id,
    this.marca,
    this.modelo,
    this.valor,
  ){
    ano=2024;
  }

  Veiculo.ano2023(
    this.id,
    this.marca,
    this.modelo,
    this.valor,
  ){
    ano=2023;
  }

  //com o required no metodo pode inverter a ordem (required tem que existir, ? nao precisa ter)
  String historia(String abreviacao,{String? nomeCriador}){
    return "$marca - $abreviacao, foi criado por: $nomeCriador"; 
  }


  int getId() => id;
  void setId(int id) => id = id;

  String getMarca() => marca;
  String getModelo() => modelo;
  int getAno() => ano;
  double getValor() => valor;
}
