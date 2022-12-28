/**
 *  Reserva de cadeiras no cinema 
 */
import "dart:io";

void main() {
  var cinema = ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10"];
  print("----------------------------------------------------------------------------");
  String opcao = "s";

  do {
    // enquanto  for true

    print("Informe a cadeira que você deseja resevar");
    String? reserva = stdin.readLineSync();
    bool verdadeira = false;
    for (int j = 0; j < cinema.length; j++) {
      if (reserva! != null) {
        print("é");
        if (reserva.toUpperCase() == cinema[j]) {
          print("éee");
          verdadeira = true;
          cinema[j] = "----";
          break;
        }
      }
    }

    //

    if (verdadeira == true) {
      print("Reserva feita com sucesso! ");
      print(cinema);
    } else {
      print("A Cadeira já está reservada,\n ou a cadeira não existe");
      print(cinema);
    }
    // ===============================================================================
    print("Digite [s] para continuar ou [n] para sair");
    String? op = stdin.readLineSync();
    // conversao ===============================
    opcao = op!;
  } while (opcao == "s");
}
