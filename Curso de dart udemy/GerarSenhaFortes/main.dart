/**
 * Crie uma função que gere uma senha aleatória com 12 caracteres contendo: 
 * Letras maiúsculas e minúsculas 
 * Números 
 * Caracteres especiais (@, #, !, etc.)
 * A senha deve ser única a cada execução
 *  PS !!  o usuário pode digitar a senha .
 */
import 'dart:math';
import 'dart:io';

void main() {
  print(
      'Digite a quantidade de letras simbolos e números que esta senha deve ter.'
      'Exemplo (12)');

  String? tamanhoSenha = stdin.readLineSync();

  if (tamanhoSenha != null && tamanhoSenha.isNotEmpty) {
    try {
      int tamanho = int.parse(tamanhoSenha);
      String result = gerarSenhaForte(length: tamanho);
      print('\nSenha gerada $result \n');
    } catch (e, s) {
      print('Excecao: $e');
      print('Stack Trace: $s');
    }
  } else {
    stdout.write('ERRO! Digite um valor válido');
  }
}

/// Gerador de Senha únicas e fortes
String gerarSenhaForte({int length = 12}) {
  const String letrasMaiusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String letrasMinusculas = 'abcdefghijklmnopqrstuvwxyz';
  const String numeros = '0123456789';
  const String especiais = '@#?!%&*';

  final String caracteresTotais =
      letrasMaiusculas + letrasMinusculas + numeros + especiais;

  /** 
   *  Criamos uma String para letras Maiúsculas [A-Z] para letras Minúsculas [a-z] e para numeros [0-9] e 
   *  caracteres especiais.
   *  A variável final caracteresTotais recebe as 4 constantes  concatenadas para gerar uma String com todos os
   *  caracteres possíveis 
   */

  Random random = Random();

  // Garante que a Senha Tenha Pelo Menos um Caractere de Cada Tipo
  // concatenado senha aleatóriamente
  String senha = '';

  senha += letrasMaiusculas[random.nextInt(letrasMinusculas.length)];
  senha += letrasMinusculas[random.nextInt(letrasMinusculas.length)];
  senha += numeros[random.nextInt(numeros.length)];
  senha += especiais[random.nextInt(numeros.length)];

  senha += List.generate(length - 4,
          (index) => caracteresTotais[random.nextInt(caracteresTotais.length)])
      .join();

  // join() converte uma lista de String em uma String.
  /**
   * Random permite escolher caracteres de forma aleatória. tornando cada senha~
   * única a cada chamada
   */
  return String.fromCharCodes(senha.runes.toList()..shuffle()); // senha embaralhada
  // posições da String senha embaralhadas
}
