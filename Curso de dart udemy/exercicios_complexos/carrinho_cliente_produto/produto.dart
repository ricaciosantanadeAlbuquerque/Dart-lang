///Objeto Imutável
class Produto {
  final String nome;
  final String preco;
  final String quantidade;

  const Produto({required this.nome, required this.preco, required this.quantidade});

  @override
  String toString() => 'Nome:$nome, Preço:$preco, Quantidade:$quantidade';
}
