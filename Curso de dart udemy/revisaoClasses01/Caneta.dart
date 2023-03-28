class Caneta {
  String? modelo;
  String? cor;
  double? ponta;
  int? carga;
  bool tampada = true;

  void rabiscar() {
    
      if (this.tampada == true) {
        print("ERRO! não podemos rabiscar !");
        print("\n A caneta está tampada.");
      } else {
        print("Rabiscando");
      }
    
  }

  void status() {
    print("Modelo: ${this.modelo ?? 'Não informado'}");
    print("Cor: ${this.cor ?? 'Não iformado'}");
    print("Ponta: ${this.ponta ?? 'Não informado'}");
    print("Carga: ${this.carga ?? 'Não informado'} % ");
    print("tampada: ${this.tampada}");
  }

  void tampar() {
    
      if (this.tampada == false) {
        // se estiver destampada então podemos tampar !

        this.tampada = true;
      }
    
  }

  void destampar() {
  
      if (this.tampada == true) {// se estiver tampada então podemos destampar
        this.tampada = false;
      }
    
  }
}
