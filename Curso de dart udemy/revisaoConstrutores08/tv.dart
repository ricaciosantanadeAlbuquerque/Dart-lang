class Tv2 {

  bool ligado = false;
  int canal = 0;
  int volume = 0;

  // construtor padrão com parâmetros nomeados
  Tv2({required this.canal, required this.volume}) {
    this.ligado = true;
    print("Instância ${this.toString()}");
  }
// construtor nomeado sem parâmetro algum
  Tv2.canal() {
    this.ligado = true;
    this.canal = 25;
    this.volume = 55;
  }

  void ligar() {
    if (this.ligado == false) {
      this.ligado = true;
    }
  }

  void desligar() {
    if (this.ligado == true) {
      this.ligado = false;
    }
  }

  void trocar(int canal) {
    if (canal >= 0 && canal <= 999) {
      this.canal = canal;
      print("O novo canal é ${this.canal}");
    }
  }

  void aumentarVolume() {
    if (this.ligado == true) {
      this.volume += 5;
    }
  }

  void baixarVolume() {
    if (this.ligado == true) {
      this.volume -= 5;
    }
  }

  void informacao() {
    if (this.ligado == true) {
      print("A TV está ligada !");
      print("Canal: $canal");
      print("Volume:$volume");
    }
  }
}
