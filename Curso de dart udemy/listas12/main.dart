// where() filtrando listas
void main(List<String> args) {
  List<int> idades = [12, 17, 22, 36, 55, 46, 70, 100, 18, 41, 14];
  print(idades.where((e) => e is int)); // Retorna uma coleção de iterable
  print(idades.whereType<int>().toList());

  // filtrando por idade

  List<int> adultos = idades.where((element) => element >= 30).toList();
  print(adultos);

  var crianca = idades.singleWhere((element) => element < 12, orElse: () => 0);
  print(crianca);

  int menor = idades.lastWhere((e) => e.toString().startsWith('1'));

  print(menor);

  List<double> salario = [1500.00, 800.00, 22.00, 1670.00, 5000.00, 450.00, 70.00, 350.00, 1879.00];

  // vamos  filtrar salario criando uma nova lista com os valores maiores que 1500 da lista salario

  List<double> novaSalario = salario.where((e) => e >= 1500).toList();
  print(novaSalario);

  var funcao = (double element) => element < 450;

  final List<double> menorSalario = salario.where(funcao).toList();
  print('');
  print(menorSalario);
}
