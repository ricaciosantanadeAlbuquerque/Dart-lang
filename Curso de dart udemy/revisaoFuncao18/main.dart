import 'dart:io';

void main() {
  executar(() {// função Anônima passa como argumento para uma função Arrow executar() => p()
    var maior = 0;
    var menor = 10000;
    for (var i = 0; i < 4; i++) { // 0 a 3
      print("Digite sua idade ");
      String? entradaIdade = stdin.readLineSync();

      if (entradaIdade != null) {
        if (entradaIdade.isNotEmpty) {
          try {
            int idade = int.parse(entradaIdade);
            if (idade > maior) {
              maior = idade;
            }
            if (idade < menor) {
              menor = idade;
            }
          } catch (NumberFormatException) {
            throw Exception('erro ($entradaIdade) não é um número ');
          }
        } else {
          print("Digite um valor válido");
          break;
        }
      } else {
        print("Digite valores válidos");
        break;
      }
    }
    if (maior > 0 && menor < 1000) {
      print("O maior Idade é $maior\n");
      print("A menor idade é $menor\n");
    }
  });
}

void executar(Function p) => p();
/**
 * Esta função só executa a função  passada como parâmetro, e nada mais. 
 */
