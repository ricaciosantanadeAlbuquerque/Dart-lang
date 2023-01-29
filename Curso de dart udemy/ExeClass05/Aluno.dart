class Aluno {
  String? nome;
  int idade = 0;
  int? matricula;
  double? media;
  double? mensalidada;

  void getDados() => print("\nNome:${this.nome ?? 'Não informado '}, Idade: ${this.idade } Matricula: ${this.matricula ?? 'Não informado '} Media: ${this.media ?? 'Não informado '} Mensalidade ${this.mensalidada ?? 'Não informado '}\n");

  void fazerAnivesario() {
    this.idade++;
    print("$nome você vez aniversario! sua nova idade é de $idade");
  }

  void pagarMensalidada({required double valor}) {
    this.mensalidada = valor;
    print("Mensalidade paga com sucesso ! ${this.mensalidada}");
  }

  void mediaAluno({required double num1, required double num2, required double num3}) {
    this.media = (num1 + num2 + num3) / 3;
  }
}
