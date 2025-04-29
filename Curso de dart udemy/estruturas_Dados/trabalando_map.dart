/**
 * 7️⃣ Trabalhando com Map
Crie um Map<String, int> que representa o estoque de um mercado, onde:
As chaves são os nomes dos produtos
Os valores são a quantidade em estoque
Exiba: Todos os produtos com menos de 5 unidades.
A soma total de produtos em estoque.
 */

void main() {
  Map<String, int> estoque = {
    'Banana': 200,
    'Peixe': 100,
    'Feijao': 300,
    'Arroz': 450,
    'Lula': 50,
    'Polvo': 40,
    'Carne de Sol': 75,
    'Sabonete': 4,
    'Pasta de Dente': 4,
    'Lampada': 3,
    'Água Sanitária': 2,
  };

  // Exiba: Todos os produtos com menos de 5 unidades.
  estoque.forEach((key, value) {
    if (value < 5) {
      print('Produto:$key, Qtd:$value');
    }
  });

  // soma total do estoque

  int somaTotal = estoque.values.reduce((atu, prx) => atu += prx);

  /**
   * Map para poder usar o método reduce() ou fold(), deve chamar sua propiedade
   * values ou key, só então podemos aparti do operador de acesso evocar método reduce()
   */

  print('A soma total dos valores no estoque é de [${somaTotal}]');
} 
