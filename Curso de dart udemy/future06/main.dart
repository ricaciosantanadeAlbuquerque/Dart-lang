///
///Contrutores Nomeados
void main() {
  Future.value('Valor Imediato').then((onValeu) => print('Valor: ${onValeu}'));

  /// Future.error()

  Future.error('ERRO imediato')
      .catchError((onError) => print('ERRO!! ${onError}'));

  /// Future.delayed()

  Future.delayed(Duration(seconds: 2), () {
    print('Futuro Atrasado');
  });

  // -------------------- catchError------------------------

  minhaFuncaoError().then((onValue) {
    print('Sucesso');
  }).catchError((onError) {
    print('Erro Capturado: $onError');
  }).whenComplete(() {
    print('Sempre executado');
  });
}

Future<void> minhaFuncaoError() => Future.error('Algo deu errado');
