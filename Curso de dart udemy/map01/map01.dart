

void main(){
 linkedHashMap();
}

linkedHashMap(){
  List<String> nome = ['Ana','Lucas'];
  Map<int,String> mapNome = nome.asMap();
  print('');
  print('\n${mapNome}');
  print('');
  mapNome.forEach((chave,valor) => print('Chave:$chave, Valor:$valor')); // para forEach() devemos passar uma função com dois parametros (chave,valor) =>

  Map<String?,dynamic> frutas = Map(); // linha de instânciamento

  frutas['banana'] = 'amarelo'; // declaro a chave do map e inicializo com valor.
  frutas['banana'] = 'verde';
  frutas['goiaba'] = 'amarelo';
  frutas['maca'] = 'vermelhor';

  print(frutas.containsKey('banana')); // busca a chave banana no map frutas
  print(frutas.containsValue('azul')); // busca o valor azul no map frutas
// para mostra o valor do map na chave banana basta refêrenciar esta chave
 print(frutas['banana']);
 frutas.clear(); // limpar a coleção map
 frutas[null] = null;

Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':30,'peso':65}); // construtor nomeado Map.from()
// atualizando map
 usuario.update('nome',(valor) => '$valor Santana', ifAbsent:() => 'indefinido');
 usuario.update('idade',(valor) => ++valor, ifAbsent: () => 'indefinido');
 usuario.update('peso',(value) => 70, ifAbsent: () => 'indefinido');
 usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70);// se true remove
 // caso não haja  a chave pose ela será criada com o valor de ifAbsent 
 usuario.update('peso',(value) => 70, ifAbsent:() => 'indefinido');
 // inserindo chave com valor, atraves da função putIfAbsent()
 usuario.putIfAbsent('altura',() => 1.73);
 // estamos inserindo uma nova chave com valor no map usuario
 usuario.putIfAbsent('salario',() => 1670);
 usuario.addAll({'sexo':'Masculino','casado':true});
 print('\n $usuario');
 // mostrando chaves e valores pelo print()

 print('Chaves${usuario.keys}\n ${usuario.values}');
 print('');
 Map<int,dynamic> numero = {0:'zero',1:'um',2:'dois'};
 print(numero);

 for(var key in numero.keys){
  print(key);
 }

 print('');

 for(var value in numero.values){
  print(value);
 }

 for(var map in numero.entries){
  print('chave:${map.key}, valor:${map.value}');
 }

 // outro jeito de pegar os dois valores ky value
 for(var key in numero.keys){
   final valor = numero[key];
   print('chave:$key, valor $valor');
 }
 
}