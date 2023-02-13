class Pessoa {

  String _nome;
  final dynamic _familiares;

  Pessoa(this._nome, this._familiares); // inicializando os atribultos da classe diretamente pelo construtor!

  /**
   * Uma vez que a variável final é inicalizada  ela não pode ter seu valor alterado, sendo constante sempre em tempo de  * execução.
   *
   */
  String get getNome => this._nome;

  void set setNome(String nome) => this._nome = nome;

  dynamic get getFamiliares => this._familiares;

  //void set setFamiliares(dynamic familiares) => this._familiares = familiares;
  // variáveis final não podem ser alteradas uma vez que seu favor já foi inicializado. como se diz ela é final
}
