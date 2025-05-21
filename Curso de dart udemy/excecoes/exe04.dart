import 'dart:io';
/**
 * 4. Lendo um arquivo com File
Crie uma função que recebe o nome de um arquivo .txt e imprime seu conteúdo.
Use try-catch para lidar com o erro caso o arquivo não exista.
📌 Dica: use File('caminho').readAsStringSync() e importe dart:io.
 */

void main() {
  leitorArquivos('excecoes/texto.txt');
}

void leitorArquivos(String caminho) {
  try {
    var result = File(caminho).readAsStringSync();
    print(result);
  } catch (e) {
    print(e);
  }
}
