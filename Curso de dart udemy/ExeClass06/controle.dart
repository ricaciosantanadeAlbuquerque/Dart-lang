class Controle {
  // atribultos de classe

  String? cor;
  int? tamanho;
  String? marca;
  bool ligado = false;
  int volume = 50;
  int canal = 7;

  // métodos

  bool Ligar() {
    if (this.ligado == false) {
      // se desligado

      this.ligado = true; // ligar
    }

    return this.ligado;
  }

  bool desligar() {
    if (this.ligado == true) {
      // se ligado

      this.ligado = false; //  desliga

    }
    return this.ligado;
  }

  void mudo() {
    if (this.ligado == true) {
      // se ligado

      if (this.volume > 0) {
        // se não form mudo

        this.volume = 0; // fica mudo

        print("Volume  Mudu! ${this.volume}");
      } else {
        // so entra aqui se volume for zero ou seja se for mudo

        this.volume = 50; // deixa de ser mudo

        print("Volume: ${this.volume}");
      }
    }
  }

  void aumentarVolume() {
    if (this.ligado == true) {
      // se ligado

      this.volume += 10;
      print("Volume: $volume");
    }
  }

  void baixarVolume() {
    if (this.ligado == true) {
      // se ligado

      this.volume -= 10;
      print("Volume: $volume");
    }
  }

  void mainCanal() {
    if (this.ligado == true) {
      this.canal++;
      print("Canal Atual: $canal");
    }
  }

  void menosCanal() {
    if (this.ligado == true) {
      this.canal--;
      print("Canal Atual: $canal");
    }
  }

  void informacoes() {
    print("\nCor: $cor, Tamanho: $tamanho, marca: $marca, ligado: ${(ligado == false)? 'Desligado':'Ligado'}, volume: ${(ligado == true )? this.volume : 'Desligado'} canal: ${(ligado == true)? this.canal:' Desligado '}\n");
  }
}
