import 'controle.dart';

void main() {
  Controle.instancia.ligar();
  var variavel = Controle.instancia;
  print(variavel.toString());

  // =============================

  Controle.instancia.desligar();
  print(Controle.instancia.toString());

  // verificando se é a mesma instância =================
  print(identical(variavel, Controle.instancia)? 'Sim  ! é a mesma instância ': 'Não ! são instâncias diferentes');
}
