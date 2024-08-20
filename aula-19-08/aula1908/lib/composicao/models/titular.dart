import 'package:aula1908/composicao/models/enums/tipo_pessoa.dart';
import 'package:aula1908/composicao/models/pessoa.dart';

class Titular implements Pessoa {

  late TipoPessoa _tipoPessoa;
  final String _nome; 

  Titular(this._nome, this._tipoPessoa);

  Titular.pessoaFisica(this._nome,){
    _tipoPessoa = TipoPessoa.fisica;
  }

  Titular.pessoaJuridica(this._nome,){
    _tipoPessoa = TipoPessoa.juridica;
  }

  @override
  getTipoPessoa() {
    return _tipoPessoa;
  }

  @override
  String getNome(){
    return _nome;
  }

}