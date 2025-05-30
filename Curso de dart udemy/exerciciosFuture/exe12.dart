import 'dart:io';

void main() async {
  /**
  *  print('Bom dia  Brasil');
  futureSync();
  print('Está tarde');
  */

  // test

  // microtask();
  
  /**
   * 
  try {
    final String result = await leituraArquivo('exerciciosFuture/poema.txt');
    print(result);
  } catch (e) {
    print(e);
  }
   */

  // ===========================================================================

  leituraTexto('exerciciosFuture/poema.txt')
      .then((value) {
        print(value);
      })
      .catchError((value) {
        print(value);
      })
      .whenComplete(() {
        print('Sempre será executado');
      });
}

void futureSync() {
  Future.sync(() {
    for (var i = 0; i < 10; i++) {
      print(i);
    }
    return ' Future objeto';
  }).then((value) {
    print(value);
  });
}

/**
 * Primeiro é executado todos os processos  sincronas para depois  ser executado
 * os processos assincronas
 */

void microtask() {
  /**
   * Future.microtask()  tem maior prioridade e agilidade do que a  Future() 
   * padrão
   * Ordem de execução.
   *  1) sincrona
   *  2) assincrona Future.microtask()
   *  3) assincrona Future()
   */

  print('Main()1');
  Future(() => 'Retornar Future padrão').then((v) => print(v));
  Future.microtask(() => 'Future microtask 02').then((v) => print(v));
  Future.microtask(() => 'Future microtask 01').then((v) => print(v));
  print('Main() 2');
}

Future<String> leituraArquivo(String path) => Future.microtask(() {
  return File(path).readAsStringSync();
});

Future<String> leituraTexto(String path) {
  return File(path)
      .readAsString()
      .then((onValue) {
        return onValue;
      })
      .catchError((onError) {
        return onError;
      });
}
