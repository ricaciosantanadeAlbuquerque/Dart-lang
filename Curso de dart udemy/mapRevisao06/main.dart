void main(){
  linkedHashMap();
}


void linkedHashMap(){
  List<String> listNomes = ['ricacio','lucas','Ana'];
  Map<int,String> listNomesMap = listNomes.asMap(); // convertendo uma litsa [] em map {}
  print('\n $listNomesMap'); 
  listNomesMap.forEach((chave,valo) => print('Chave: $chave, valor:$valo'));

  Map<String?,dynamic> frutas = new Map();
  frutas['banana'] = 'Amarelo';
  frutas['banana'] = 'Verde'; // sobreposição
  frutas['goiaba'] = 'amarelo';
  frutas['maca'] = 'Vermelho';

  print('\n $frutas');
  print(frutas.containsKey('banana')); // faz uma varredura no map() procurando a chave passada como argumento, caso encontre, retorna true
  print(frutas.containsValue('azul')); // faz uma varredura no map() procurando o valor passado como argumento,caso encontre,retorna true
  print(frutas['banana']); // revela o valor da chave banana
  frutas.clear(); // limpa todo o map()
  frutas[null] = null;
  print('$frutas \n');

  Map<String,dynamic> usuario = new Map.from({'nome':'ricacio','idade':30,'peso':65});
  usuario.update('nome',(value) => '$value Santana', ifAbsent: () => 'indefinido' );
  usuario.update('idade',(value) => ++value,ifAbsent:() => 'indefinido');
  usuario.update('peso',(value) => 70,ifAbsent:() => 'indefinido');
  usuario.removeWhere((key,value) => key == 'peso' && value == 70); // se true então remove
  usuario.update('peso',(value) => 70, ifAbsent:() => 'indefinido');
  usuario.putIfAbsent('altura',() => 1.73);
  usuario.addAll({'sexo':'Masculino','casado':false});
  print('$usuario');

print('');
print('Chaves:${usuario.keys} \n valor:${usuario.values}');

 Map<int,dynamic> numeros = {0:'zero',1:'um',2:'dois',3:'tres'};
 
 for(var chave in numeros.keys){
  print('Chave:$chave');
 }

 for(var valor in numeros.values){
  print('Valor:$valor');
 }

 for(var key in numeros.keys){
  final valor = numeros[key];
  print('chave:$key, valor:$valor');
 }

}