import 'dart:io';

void main(List<String> rags) {
  print('Digite uma frase Palíndroma por favor');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    if (isPalindromo(frase: entrada)) {
      print('Sim á frase é palíndroma.  Normail: ${entrada}, ao contrário: ${entrada.split('').reversed.join()}');
    } else {
      print('Não é palíndroma. Normal: ${entrada}, ao contrário ${entrada.split('').reversed.join()}');
    }
  } else {
    print('Digite valores válidos');
  }
}

bool isPalindromo({required String frase}) {
  // Removendo espaços e pontuações e convertendo pata minusculo.
  String fraseLimpa = frase.toLowerCase().replaceAll(RegExp(r'[^a-zA-Z]'), '');

  return fraseLimpa == fraseLimpa.split('').reversed.join();
}
