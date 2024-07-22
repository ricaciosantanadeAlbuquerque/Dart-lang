void main(){
  linkedHashMap();
}

void linkedHashMap(){
  List<String> listNomes = ['Lucas','ricacio','Ana'];
  print(listNomes);
  Map<int,String> listNomesMap = listNomes.asMap(); // asMap() converte uma lista em Map()
  print('$listNomesMap\n ');
  listNomesMap.forEach((int key,String value){
      print('Chave:$key, valor:$value');
  });
/**
 * A função asMap() converte uma tipo List() em Map(). 
 * Os index viram chave [key] e os valores dos index viram os valores das chave ou key
 * 
 * MANEIRAS DE DECLARAR UM MAP()
 * asMap()
 * Map()
 * Map.from()
 * {}
 */

/// temos o Map() frutas,  porém não temos as chaves nem os valores. É necessário declarar as chaves, e inicializa-las com os valores.
Map<String,dynamic> frutas = Map();
frutas['banana'] = 'amarelo';
frutas['banana'] = 'verde'; // sobrepondo o valor da chave.
frutas['goiaba'] = 'amarelo';
frutas['maca'] = 'vermelho'; // declarando a chave [maca] e inicializando com o valor = vermelho.
print('\n $frutas');

/// contaisKey() procura uma chave de acordo com o valor passado retornando true ou false,  faz uma busca no Map().
print(frutas.containsKey('banana'));
print('A chave banana existe no map frutas ? ${frutas.containsKey('banana') ? 'SIM' : 'nÃO !!'}');



}