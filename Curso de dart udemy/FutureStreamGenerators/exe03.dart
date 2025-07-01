/**
 * ✅ Simulação de erro com Future.error
Lance erro "Usuário não encontrado" se nome for "admin"
 */

Future<void> main() async {
  try {
    final result = await buscarUsuario(nome: 'admin');
    print('Resultado: $result');
  } catch (e, s) {
    print('ERRO: $e');
    print('Stack Trace: $s');
  }
}

Future<String> buscarUsuario({required String nome}) {
  if (nome == 'admin') {
    return Future.error('Usuário não encontrado');
  }

  return Future.value('Usuário encontrado: $nome');
}
