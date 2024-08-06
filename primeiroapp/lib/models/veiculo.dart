class Veiculo {
  int _id;
  String _marca;
  String _modelo;
  int _ano;
  double _valor;

  Veiculo(
    this._id,
    this._marca,
    this._modelo,
    this._ano,
    this._valor,
  );

  int getId() => _id;
  void setId(int id) => _id = id;

  String getMarca() => _marca;
  String getModelo() => _modelo;
  int getAno() => _ano;
  double getValor() => _valor;
}
