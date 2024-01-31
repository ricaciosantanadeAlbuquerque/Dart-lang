import 'dart:io';

// Faça uma função anonima que calcula a area de um retangulo.  A=b⋅h.
void main() {
  /// call Function executar
  executar();
}

void executar() {
  print( 'Digite a base');
  String? entradaBase = stdin.readLineSync();
  print('Digite a Altura');
  String? entradaAltura  = stdin.readLineSync();

  if (entradaAltura != null && entradaBase != null) {
    if (entradaAltura.isNotEmpty && entradaBase.isNotEmpty) {
      try {
        num altura = num.tryParse(entradaAltura) ?? 0;
        num base = num.tryParse(entradaBase) ?? 0;

        var funcao = ([num altura = 0, num base = 0]) { // funcao anônima passada para variável 
          // parâmetros posicionados e default

          var area = base * altura;

          print('A área de um retangulo é $area ');
        };

        /// call function
        funcao(altura, base); // variável sendo usada como se fosse uma função

      } catch (e) {
        throw Exception('ERRO! $entradaAltura ou $entradaBase não são valores numericos!');
      }
    } else {
      print('ERRO! vazio');
    }
  } else {
    print('ERRO! valor nulo');
  }
}
