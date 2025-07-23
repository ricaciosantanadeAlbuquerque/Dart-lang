/**
 *  Classe Produto com propriedades nome e preco
Crie um construtor e getter para nome/preço.

Use assert(preco > 0)

Teste se a instância criada está correta com expect(..., isA<Produto>())
 */

class Produto {
  late String _nome;
  late double _preco;

  Produto({required String nome, required double preco}) {
    setNome = nome;
    setPreco = preco;
  }

  String get getNome => this._nome;

  void set setNome(String nome) => this._nome = nome;

  double get getPreco => _preco;

  void set setPreco(double preco) => this._preco = preco;

  @override
  String toString() => 'Nome:$_nome, Preço: $_preco';
}
