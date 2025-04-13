class Pessoa {
  String? nome;
  String? idade;
  String? cidade;

  Pessoa({String? nome, String? idade, this.cidade = 'Desconhecida"'}){
    this.nome = nome != null ? nome : 'Indefinido';
    this.idade = idade != null ? idade : 'Indefinido';
  }

  @override
  String toString() => 'Nome:$nome, Idade:$idade, Cidade:$cidade';
}
