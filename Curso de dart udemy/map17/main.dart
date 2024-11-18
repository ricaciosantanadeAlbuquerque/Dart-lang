/**
 * Crie um Map que armazene o nome de funcionários e seus salários. Some todos os salários e imprima o resultado.
 * Dica: Use o método .values para acessar os valores do Map.
 */
import 'dart:io';

void main() {
  String? op = 'nao';
   Map<String, double> usuario = Map();
  var map;
  do {
    print('--------------Olá seja Bem vindo !!! ---------------');
    print('Digite seu nome por favor');
    String? entradaNome = stdin.readLineSync();
    print('Digite seu salário liquido');
    String? entradaSalario = stdin.readLineSync();

    if (entradaNome != null && entradaSalario != null) {
      if (entradaNome.isNotEmpty && entradaSalario.isNotEmpty) {
        try {
          map = criandoMap(
              usuario: usuario,
              nome: entradaNome,
              salario: double.tryParse(
                      double.parse(entradaSalario).toStringAsFixed(2)) ??
                  0);
        } catch (e, s) {
          print('Excecao:$e');
          print('Stack Trace:$s');
        }
      } else {
        print('ERRO! valor  Vazio!');
      }
    } else {
      print("ERRO! valor nulo !");
    }
    print('Deseja continuar ?? Digite [sim] ou [não]');
    op = stdin.readLineSync();
  } while (op != 'nao');

  print(map);
}

Map<String, double> criandoMap( {required Map<String, double> usuario ,required String nome, required double salario}) {
 

  usuario.putIfAbsent(nome, () => double.parse(salario.toStringAsFixed(3)));
  /** 
   * putIfAbsent() cria uma chave com valor eeee aloca no map
   */

  return usuario;
}
