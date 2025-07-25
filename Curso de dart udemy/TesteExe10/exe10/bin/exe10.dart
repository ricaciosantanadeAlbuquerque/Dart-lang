import 'package:exe10/exe10.dart' as exe10;

void main(List<String> arguments) {
  print(
    'Na frase " O rato roeu a roupa do rei de Roma " contem a palavra rato ? ${exe10.contemPalavra(frase: 'O rato roeu a roupa do rei de Roma', palavra: 'rato') ? 'Sim' : 'Nao'}',
  );
}
