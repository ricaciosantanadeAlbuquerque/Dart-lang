// Objeto de instância imutável.
/**
 * O construtor deve ser constante.
 * os atribultos devem ser final ou static const
 */
class Brasil {

  final double latitude;
  final double longitude;
  static const String capital = "Brasília"; // const não munda static atribulto de classe
  static const estado = ["SP", "RJ", "MG"];

  const Brasil(this.latitude, this.longitude); // inicializados em tempo de execução  uma vez que  latitude e longitude tiverem seus valores definidos não poderam mais ser alterados.

}
