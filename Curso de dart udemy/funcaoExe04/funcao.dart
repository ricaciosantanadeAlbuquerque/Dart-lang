// faça uma função chamada pegaMes que recebe uma data em formato de texto e no padrão dia/mês/ano e retorne apenas o numero inteiro refernte ao mês.
import 'dart:io';

void main() {
  print("Digite o dia mês e ano por favor ");
  String? entrada = stdin.readLineSync();
  int resposta = pegaMes(entrada);

  print("Mês: $resposta");
}

int pegaMes([dynamic texto]) {
  int valor = 0;
  // quando se usa uma variável do tipo dynamic ela pode ser nula,é necessario tratar
  if (texto != null && texto != " ") {
    var resultado = texto.substring(3, 5);
    valor = int.parse(resultado);
  }

  return valor;
}

/**
 * No que se diz respeito as funções posicionais  deve se obedeser aordem. 
 */
