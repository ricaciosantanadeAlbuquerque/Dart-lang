class Caneta {
  String cor;
  String modelo;
  double ponta;
  int carga;
  bool tampada = true;
  
// construtor nomeado ==================================
  Caneta.fabrica({
    required this.cor,
    required this.modelo,
    required this.ponta,
    required this.carga,
  }) {
    print("instância ${this.toString()}");
  }

  void escrever() {
    if (this.tampada == false) {
      print("Escrevendo !!");
    } else {
      print("Para escrever destampe a caneta ! ");
    }
  }

  void tampar() {
    if (this.tampada == false) {
      this.tampada = true;
    }
  }

  void destampar() {
    if (this.tampada == true) {
      this.tampada = false;
    }
  }

  @override
  String toString() => 'Cor: $cor, Modelo: $modelo, Ponta: $ponta, Carga: $carga, Tampada: $tampada';
}
