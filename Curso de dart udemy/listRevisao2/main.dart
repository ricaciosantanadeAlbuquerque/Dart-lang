/// com a função map() podemos criar uma lista nova apartir de outra previamente existente.
void main(){
  List<String> frutas = ['Banana','Morango','Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta.').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1,5,10];
  var incrementar = (int e) => ++e;
  final  dobro = (int e) => e * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);
  
  List<double> doubles = [2.75,5.5,7.25];
  final triplo =  (e) => e * 3;
  final Function(dynamic) moeda = (element) => 'R\$ ${element.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';
   dynamic Function(dynamic) porcentagem(desconto) => (valor) => desconto * valor;
   List<dynamic> doublesMapeados =  doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
   print(doublesMapeados);
}