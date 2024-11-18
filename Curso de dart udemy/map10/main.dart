/**
 * Descrição: Crie um mapa que armazene o nome de pessoas como chave e suas idades como valor.
Tarefa:

Adicione três pares de chave-valor ao mapa.
Acesse e imprima a idade de uma pessoa específica.
Exemplo:

css
Copiar código
Entrada: { "João": 25, "Ana": 30, "Carlos": 28 }
Saída esperada: Idade de Ana: 30
 */

void main() {
  var map01 = mapa(nome: 'Ricacio', idade: 28);
  var map02 = mapa(nome: 'Lucas', idade: 26);
  Map<dynamic, dynamic> map03 = mapa(nome: 'Guga', idade: 45);

  try {
    buscarUsuario(map01,
        'Ricacio'); // estou passando o map e a chave, que no caso é nome.
    buscarUsuario(map02, 'Lucas');
    buscarUsuario(map03, 'Guga');
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  }
}

Map<dynamic, dynamic> mapa({required String nome, required int idade}) {
  Map mapa = Map();

  try {
    mapa.putIfAbsent(nome, () => idade); // criando chave com valor para map
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  }

  return mapa;
}

void buscarUsuario(Map map, String nome) {
  String? result;
  for (var element in map.entries) {
    if (element.key == nome) {
      result = 'Idade de ${element.key} é ${element.value}';
      break;
    }
  }

  if (result != null) {
    print(result);
  } else {
    print('O Nome Não existe no Map');
  }
}

/**
 * putIfAbsent() recebe como argumento uma chave e uma função anônima sem parâmetro, esta função retorna um valor para a chave
 * (aloca valor na chave). A função putIfAbsent() adiciona uma chave com valor no map.
 *
 * 
 */
