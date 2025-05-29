import 'dart:io';

class Contato {
  final String nome;
  final String numero;

  Contato(this.nome, this.numero);

  @override
  String toString() => '{$nome : $numero}';
}

void main(List<String> args) async {
  final names = await readFile('exerciciosFuture/nomes.txt');
  final phones = await readFile('exerciciosFuture/numero.txt');

  List<Contato> listContatos = [];

  for (int i = 0; i < names.length; i++) {
    listContatos.add(Contato(names[i], phones[i]));
  }

  listContatos.forEach((value) {
    print(value);
  });


  /// retorna o contúdo de forma direta != readAsString() == Future<String>

  print(lendoArquivos('exerciciosFuture/nomes.txt'));
}

Future<List<String>> readFile(String path) {
  /// Objeto  da classe File == arquivo
  final file = File(path);

  /// Future<String>
  return file
      .readAsString()
      .
      /// captura o conteúdo da Future
      then(
        (String value) =>
            /// split() converte uma String em uma array de String
            value.split(','),
      )
      .then(
        (List<String> value) => value.map((value) => value.trim()).toList(),
      );
}

String lendoArquivos(String path) => File(path).readAsStringSync();
