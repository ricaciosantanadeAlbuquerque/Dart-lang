  // como toda a classe tem atribultos e métodos static  não há necessidade de se criar um objeto para ter acesso a seus dados e ções
  class Garrafa {
  static String tipoMaterial = "Vidro";
  static int capacidade = 10;

  static void encher() {
    print("Enchendo a garrafa de ${capacidade}ML em mais um litro");
  }

  static void esvaziar() {
    print("Esvaziando toda a garrafa de $capacidade ML ");
  }

  static void mostrar() {
    print("Material: ${tipoMaterial}, Capacidade: ${capacidade}");
  }
}
