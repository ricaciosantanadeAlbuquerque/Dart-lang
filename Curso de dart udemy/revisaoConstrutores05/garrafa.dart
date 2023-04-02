class Garrafa {
  String tipoMaterial;
  int capacidade;
  double volume;

  Garrafa({required this.tipoMaterial, required this.capacidade, this.volume = 0}) {
    print("Instância de classe ${this.toString()}\n");
  }
  // está  classe  não aceita valores null

  void encher() {
    if (this.volume <= this.capacidade) {
      this.volume++;
    }
    print("A garrafa foi enchida com $volume Litros de água.\n");
  }

  void esvaziar() {
    print("A garrafa de $tipoMaterial está sendo esvaziada !");
    print("Capacidade $capacidade Litros, e o volume atutal: ${this.volume--} Litros de água\n");
  }

  void mostrar() {
    print("TipoMaterial: $tipoMaterial , Capacidade:$capacidade litros de água, volume:$volume litros de água.\n");
  }
}
