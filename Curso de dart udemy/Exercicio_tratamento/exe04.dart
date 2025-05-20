/**~
 * 4. Lendo um arquivo com File
Crie uma função que recebe o nome de um arquivo .txt e imprime seu conteúdo.
Use try-catch para lidar com o erro caso o arquivo não exista.
📌 Dica: use File('caminho').readAsStringSync() e importe dart:io.
 */
import 'dart:io';

void main() {
  leitorArquivo(caminho: 'Exercicio_tratamento/texto.txt');
}

void leitorArquivo({required String caminho}) {
  try {
    String leitura = File(caminho).readAsStringSync();
    print(leitura);
  } catch (e) {
    print('Excecao:$e');
  }
}
