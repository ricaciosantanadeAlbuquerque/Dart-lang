import 'dart:io';

void main() {
  lerArquivoTexto('excecao02/texto.txt');
}

void lerArquivoTexto(String path) {
  try {
    if (File(path).existsSync()) {
      var result = File(path).readAsStringSync();
      print(result);
    } else {
      print('Arquivo não encontrado');
    }
  } catch (e, s) {
    print('Excecao:$e');
    print('Statck Trace: $s');
  }
}
