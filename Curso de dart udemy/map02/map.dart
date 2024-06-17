void main(){
  mapMap();
}

void mapMap(){
 List<String> nomes = ['ricacio','Dora','lucas'];
 Map<int,String> mapNomes = nomes.asMap(); // a função asMap() converte uma lista em Map()
 print('\n');
 mapNomes.forEach((chave,valor) => print('Chave:$chave, Valor:$valor'));

 Map<String?,dynamic> frutas = Map();
 frutas['banana'] = 'Amarela';
 frutas['banana'] = 'verde'; // o Valor da chave banana foi alterado para verde;
 frutas['goiba'] = 'amarelo';
 frutas['maca'] = 'vermelho';
 print('');
 print(frutas);
 /**
  * containsKey() realiza buscas no map(). caso o valor seja encontrado retorna true. se não retorna false
    containsKey() realiza uma busca no map atras das chaves
    containsValue() realiza uma busca atras dos valores
  */
 print(frutas.containsKey('banana')); // true
 print(frutas.containsValue('amarelo')); // true
 print(frutas.containsKey('laranja')); // false
 print(frutas.containsValue('azul')); // false
frutas.clear();
frutas[null] = null;
print('');
print(frutas);

Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':30,'peso':65});
// atualizando valores

usuario.update('nome',(valor) => '$valor Santana', ifAbsent:() => 'indefinido');
usuario.update('idade',(valor) => ++valor,ifAbsent: () => 'indefinido');
usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
print('');
print(usuario);
print('');

usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70);
usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
print('');
print(usuario);
print('');
usuario.putIfAbsent('altura',() => 1.73); // adiciona uma nova chave com valor dentro do map()
usuario.addAll({'sexo':'Masculino','casado':true});
print('');
print(usuario);
print('');
print('chave:${usuario.keys}, \n valor:${usuario.values}');

Map<int,dynamic> numeros = {0:'zero',1:'um',2:'dois'};
print(numeros);
print(numeros.map((chave,valor) => MapEntry(chave,
'${valor.toUpperCase()}'
))); // estamos mapeando o valor

for(var key in numeros.keys){
   print('Chave:$key');
}

for(var valor in numeros.values){
   print(valor);
}


for(var key in numeros.keys){
  final valor = numeros[key]; // map() na chave zero retorna o valor da chave zero.
  print('chave:$key, valor:$valor');
}

}