import 'interface_produto.dart';

class Produto implements InterfaceProduto {
  String? _nome;
  double? _preco;
  int? _quantidade;

  Produto(
      {required String nome, required double preco, required int quantidade}) {
    this.nome = nome;
    this.preco = preco;
    this.quantidade = quantidade;
  }

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  double? get preco => this._preco;

  void set preco(double? preco) => this._preco = preco;

  int? get quantidade => this._quantidade;

  void set quantidade(int? qtd) => this._quantidade = qtd;

  // interface ==========================================================

  @override
  void alterarNome({required String nome}) {
    this.nome = nome;
  }

  @override
  void alterarPreco({required double preco}) {
    this.preco = preco;
  }

  @override
  void alterarQuantidade({required int quantidade}) {
    this.quantidade = quantidade;
  }

  @override
  String toString() => 'Nome: $nome, Preço: $preco, Quantidade: $quantidade';
}
