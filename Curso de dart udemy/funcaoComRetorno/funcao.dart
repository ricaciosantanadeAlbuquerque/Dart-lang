import 'dart:io';

int menu() {
  int op = 0;
  print("=======Menu======");
  print("Digite uma valor entre 1 e 7");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    op = int.parse(entrada);
  } else {
    print("preencha o campo");
  }
   
  return op;
}

void main() {
  int valor = menu();// o valor de retorno do menu é utilizado  como argumento da funcao diasDaSemana() que tem seu valor retornado ee mostra pela funçao print()
  print(diasDaSemana(valor));
}

String diasDaSemana(int op) {
  var resultado;
  switch (op) {
    case 1:
      resultado = "Domingo";
      break;

    case 2:
      resultado = "Segunda";

      break;
    case 3:
      resultado = "Terça";
      break;
    case 4:
      resultado = "quarta";
      break;
    case 5:
      resultado = "quinta";
      break;
    case 6:
      resultado = "sexta";
      break;
    case 7:
      resultado = "sábado";
      break;
    default:
      print("Valor fora da faixa ");
  }
  return resultado;
}
