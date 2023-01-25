void main(List<String> args) {
  Carro fusca = new Carro(); // fusca é um objeto da classe carro por tanto pode acessar  todos os seus atribultos e métodos

  fusca.cor = "verde"; // passando valores para o atribulto nome através do  objeto fusca
  fusca.velocidade = 220;

  fusca.informacao();

  Carro gol = new Carro(); // gol é um novo objeto carro

  gol.cor = "Vermelho";
  gol.velocidade = 180;
  gol.informacao();

  if (fusca == gol) {
    print("Sim");
  } else {
    print("Não");
  }
}

class Carro {
  String? cor;
  double? velocidade;

  void informacao() {
    print("Cor: ${this.cor} velocidade: ${this.velocidade}");
  }
}
