class Pessoa {
  static final Pessoa instancia = new  Pessoa._construtorNomeado(); // linhas de instanciameto.
  String? nome;

  Pessoa._construtorNomeado();

  //O construtor Nomeado privado, impede que uma nova instância seja feita,  desde que não haja um construtor padrão e public declarado
  //no corpo da classe.
}
