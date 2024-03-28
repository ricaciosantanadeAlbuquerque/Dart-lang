void main() {
  List<String> frutas = ['Manga', 'Morango', 'Banana', 'Tomate'];
  frutas.forEach((e) => print(e));

  print('');
  print('===============================================================Map=====================================================');
  print('');

  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  frutasMapeadas.forEach((element) => print(element));
  print('');

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  print('');
  print('===============================================================Map=====================================================');
  print('');

  List<double> doubles = [2.5, 5.5, 7.25];
  final triplo = (double e) => e * 3;
  
  final String Function(dynamic) moeda = (e) => 'Rs ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  Function(dynamic) porcentagem(desconto) => (valor) => desconto * valor;

  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);

}
