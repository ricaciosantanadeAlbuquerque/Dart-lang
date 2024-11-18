/**
 * Crie um Map de cidades e suas populações.
Utilize um laço for para imprimir todas as chaves e valores.
Utilize a função forEach para realizar a mesma tarefa e compare os dois métodos.
 */

void main() {
  Map<String, double> cidades = {
    'Joao Pessoa': 120000,
    'Natal': 250000,
    'Recife': 3000000,
    'Rio de Janeiro': 4000000,
    'São Paulo': 7000000
  };

  for (var element in cidades.entries) {
    print('Cidade:${element.key},\n População:${element.value}');
  }

  cidades.forEach((key, value) {
    print('Cidades ${key}, População:${value}');
  });
}
