class Loja {
  // atribultos ==========================
  List<String>? descricao = [];
  List<double>? precoUnitario = []; // neste caso foi necessário inicializar a lista  para poder utiliza-lá no main
  List<int>? quantidadeComprada = [];
  List<int> numeroItem = []; //  como foi inicializado não precisamos  torna o tipo receptível para null
  double valorTtal = 0;

  //=====================================================================================================================
  String informacao() => "\nDescrção: ${this.descricao ?? 'valor não informado'} Preço por Unidade: ${this.precoUnitario ?? 'valor não informado '} Número do produto ${this.numeroItem} \n";

//=====================================================================================================================

  void compra({required int quantidadeComprada, required double precoUnitario, required String descricao, required int numeroItem}) {
    this.descricao!.add(descricao);
    this.quantidadeComprada!.add(quantidadeComprada); // lista em dart são dinamicas cresce conforme vamos adicionando valores
    this.precoUnitario!.add(precoUnitario);
    this.numeroItem.add(numeroItem);

    fatura(this.quantidadeComprada, this.precoUnitario, this.descricao, this.numeroItem);
  }

  //=====================================================================================================================

  void fatura([List<int>? arrayQuanti, List<double>? ArrayPreco, List<String>? arrayDescricao, List<int>? numeroItem]) {
    List<double> valor = [];

    if (arrayQuanti != null && ArrayPreco != null && arrayDescricao != null && numeroItem != null) {
      for (var i = 0; i < ArrayPreco.length; i++) {
        print("===================================================================================");
        print("${numeroItem[i]} == ${arrayDescricao[i]} == ${arrayQuanti[i]} ==  ${ArrayPreco[i]}");
        print("===================================================================================\n");
        valor.add(arrayQuanti[i] * ArrayPreco[i]);
      }
    } else {
      print("Existe uma Array com valor nulo! ");
    }

    for (var produto in valor) {
      this.valorTtal += produto;
    }
    print("O valor total da Fatura é ${this.valorTtal}\n");
  }
}
