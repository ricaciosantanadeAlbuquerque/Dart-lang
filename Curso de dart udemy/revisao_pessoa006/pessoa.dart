class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor != null) ? cor : 'indefinido';
    print('\nConstrutor resumido com parametros nomeados! ${this.toString()}\n');
  }

}
