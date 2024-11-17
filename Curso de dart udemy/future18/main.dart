/**
 * Crie uma função que simula o download de um arquivo:

Use Future para retornar o progresso do download a cada 1 segundo, como "10%", "20%", ..., "100%".
Exiba o progresso no console até que o download seja concluído.
 */

void main() {
  download(tempo: 10);
}

void download({int tempo = 0}) async {
  print('Carregando...');

  for (var i = 1; i <= tempo; i++) {
    await Future.delayed(Duration(seconds: 1), () {
      print('${i * 10}%');
    });

    if (i == tempo) print('Download Conluído');
  }
}
