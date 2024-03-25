/// Map transforma/Seleciona os elementos de uma coleção criando uma nova coleção de mesmo tamanho.
void main(List<String> args) {
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  // Mapeando listas;

  List<String> frutasMapeadas = frutas.map((element) {
    return '$element é uma fruta';
  }).toList();

  print(frutasMapeadas);

  // Mapeando para int

  List<int> num1 = frutas.map((element) => 10).toList();

  print('');
  print(num1);
  /**
   * Geramos uma lista com 3 elementos 10 baseados nos 3 elementos Strings da lista frutas.
   */

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int element) => ++element; // pré-incremento;
  final dobro = (int element) => element * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (element) => element * 3;
  final moeda = (e) => 'RS ${e.toStringAsFixed(2).replaceFirst('.', ',')}';

  Function(dynamic) porcentagem(double desconto) => (valor) => desconto * valor; // closure

  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);

  int cont = 0;

  List<String> nomes = ['Ana', 'Lucas', 'ricacio'];
  final listNome = nomes.map((element) {
    return '${cont++}: $element';
  }).toList();

  print(listNome);

  // Mapeando uma lista de int para double;

  List<int> valoresInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final listMape = valoresInt.map((e) {
    return e.toDouble();
  }).toList();

  print(listMape);

  /**
   * A função  map() nos permite gerar uma nova lista de um tipo totalmente diferente ou igual e de mesmo tamanho.
   * Criando novas coleções apartir das já existentes.
   * PS!! é necessário passar uma função anonima com parametro como argumento para função map(), sendo que o parametro da função 
   * anônima retorna para o corpo da mesma os elementos da lista. 
   */

  print(listMape.map((e) => e.toString()).toList().runtimeType);
}
