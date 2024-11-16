/**
 * Implemente uma função baixarArquivo que simula o download de um arquivo:

O download deve levar 5 segundos e retornar a mensagem "Download concluído!".
Use async e await para esperar o resultado e exibi-lo no console.
 */

void main()async{
  print( await baixarArquivo());
}

Future<String> baixarArquivo() {
  print('Carregando...');
  return Future.delayed(Duration(seconds: 5), () {
    return 'Download concluído';
  });
}
