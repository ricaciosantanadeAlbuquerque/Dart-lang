void main() {
  consultaCliente(id: 2).then((onValue) {
    print('Resultado: ${onValue}');
  }).catchError((onError) {
    print('ERRO!!! $onError');
  }).whenComplete(() {
    print("------------------Tarefa finalizada-------------------------");
  });

  /// provocando o erro
  print('-------------------------ERROR------------------------------');

  consultaCliente(id: -1).then((onValue) {
    print('Sucesso: $onValue');
  }).catchError(
    (onError) {
      print('Exceção Tratada ${onError}');
    },
  ).whenComplete(() {
    print('Sempre será  executando ');
  });
}

/**
 * 1. Simulação de Consulta de Banco de Dados
Crie uma função que simule uma consulta a um banco de dados usando Future.delayed para retornar um  usuários após 2 segundos.
 Se o ID do usuário for negativo, faça o Future terminar com um erro.

Dicas:

Use Future.delayed.
Utilize catchError para capturar o erro se o ID for inválido
 */

Future<dynamic> consultaCliente({int id = 0}) {
  Map<int, Map<String, dynamic>> mapListaDb = Map();
  mapListaDb[0] = {'nome': 'Ana', 'idade': 43, 'peso': 55};
  mapListaDb[1] = {'nome': 'Ricacio', 'idade': 28, 'peso': 65.2};
  mapListaDb[2] = {'nome': 'Lucas', 'idade': 29, 'peso': 75.8};

  return Future.delayed(Duration(seconds: 2), () {
    var resposta;
    if (id < 0) {
      resposta = Future.error('ID Não existe');
    } else if (id >= 0 && id <= 2) {
      resposta = mapListaDb[id];
    }

    return resposta;
  });
}
