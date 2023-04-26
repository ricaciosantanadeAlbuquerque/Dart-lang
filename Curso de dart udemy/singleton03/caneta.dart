class CanetaSingleton {

  static final CanetaSingleton instancia = CanetaSingleton._bick();

  String? cor;
  int? carga;
  double? ponta;

  CanetaSingleton._bick();

  // Padrão singleton 

  /**
   * A classe deve prover uma única instância da classe, e impedir a criação de novas instâncias, 
   * para tal, o construtor deve ser nomeado e privado,  e a instância deve ser final ('constante em tempo de execução')
   * deve ser static para ser acessível de forma direta pela classe.
   */
}
