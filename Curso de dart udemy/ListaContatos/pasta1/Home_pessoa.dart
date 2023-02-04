class HomePessoa {
  // atribultos de classe

  String? nome;
  int? telefone;
  String? endereco;
  String? sexo;
  int? idade;
  String? nivelScolaridade;

  // construtor Padrão

  HomePessoa();

// construtor nomeado

  HomePessoa.dados({String? nome, int? telefone, String? endereco, String? sexo, int? idade, String? nivelScolaridade}) {
    this.nome = (nome != null) ? nome : 'Valor não informado';
    this.telefone = (telefone != null) ? telefone : 0;
    this.endereco = (endereco != null) ? endereco : 'Não informado';
    this.sexo = (sexo != null) ? sexo : 'Não informado';
    this.idade = (idade != null) ? idade : 0;
    this.nivelScolaridade = (nivelScolaridade != null) ? nivelScolaridade : ' Não informado ';
  }

  String toString() => "\nNome: $nome, Telefone: $telefone, Sexo: $sexo, Idade: $idade, Nível de Escolaridade: $nivelScolaridade\n";
}
