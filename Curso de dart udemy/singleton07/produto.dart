class Produto {
  static final Produto instancia = Produto._nomeado(); // linha de instânciamento
  String? nomeProduto; // atribulto de instância 

  Produto._nomeado();
}
/**
 * Definimos o atribulto 'instancia' como um atribulto de classe 'static'  eeeeeeee 'constante final' não podendo ter seus valores      alterados, instancia deve ser do tipo "produto", justamento porque vai receber um objeto Produto_nomeado().
 * O objeto produto, pode visualizar  métodos e variváveis de instância.   
 * O construtor deve ser nomeado e privado  para que não seja possível ser acessado fora da classe   
 */