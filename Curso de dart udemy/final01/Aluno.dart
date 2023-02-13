class Aluno {
  String _nome;
  final int matricula;
  int _idade;

  Aluno(this._nome, this._idade, this.matricula) {
    print(" Matrícula normal ");
  }

  Aluno.bolsista(this._nome, this._idade, this.matricula) {
    print("Bolsista !");
  }

  String get getNome => this._nome;

  void set setNome(String nome) => this._nome;

  int get getIdade => this._idade;

  void set setIdade(int idade) => this._idade = idade;

  int get getMatricula => this._idade;

  /* void set setMatricula(int matricula) => this._matricula = matricula;
  * variáveis finais  não podem ter seu valor alterado uma vez que fora inicializada.
 */
}
