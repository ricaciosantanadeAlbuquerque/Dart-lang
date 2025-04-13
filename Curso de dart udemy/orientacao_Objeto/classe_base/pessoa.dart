class Pessoa {
  String? nome;
  String? idade;
  String? cidade;

   // construtor padrão
  Pessoa({String? nome, String? idade, String? cidade}) {
    this.nome = nome != null ? nome : 'Indefinido';
    this.idade = idade != null ? idade : 'Indefinido';
    this.cidade = cidade != null ? cidade : 'Desconhecida';
  }
// construtor nomeado
  Pessoa.resumida({required this.nome,required this.idade,this.cidade = 'Desconhecida'});

  @override
  String toString() => 'Nome:$nome, Idade:$idade, Cidade:$cidade';
}
