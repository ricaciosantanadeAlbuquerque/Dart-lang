import 'dart:io';

void main() {
  Map<String, num> relatorioAluno = Map<String, num>();

  for (var i = 0; i < 5; i++) {
    print('Digite seu nome !');
    String? entradaNome = stdin.readLineSync();

    print('Digite sua notra');
    String? entradaNota = stdin.readLineSync();

    if (entradaNome != null && entradaNota != null) {
      relatorioAluno[entradaNome] = num.parse(entradaNota);
    }
  }

  print('Relátorio: $relatorioAluno');
}
