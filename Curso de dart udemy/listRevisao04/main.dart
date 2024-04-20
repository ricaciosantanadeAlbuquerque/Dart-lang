// ignore_for_file: unnecessary_type_check

void main(){
  List<int> idade = [12,20,8,18,23,17,45,36,30,72,42,80,100];
  // filtando pelo tipo,
  print(idade.where((e) =>  e is int)); // foi gerada uma coleção de Iterable de mesmo tamanho da lista;

  print('Resultado Iterable: ${idade.whereType().toList()}');
  print('');
  List<int> adultos = idade.where((element) => element >= 18).toList();
  print(adultos);
  print(adultos.every((e) => e >= 18) ? 'Sim ! Todos são adultos.' : 'Não ! Nem todos');
  var crianca = idade.singleWhere((e) => e < 12, orElse: () => 0);
  print(crianca);

  final menor = idade.lastWhere((e) => e.toString().startsWith('4'),orElse: () => 0);
  print(menor);
}