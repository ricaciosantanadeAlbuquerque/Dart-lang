import 'controle.dart';
import 'pessoa.dart';
import 'tv.dart';

void main() {
  Controle controle = Controle();
  Pessoa pessoa1 = Pessoa(controle, nome: 'João', idade: 12);
  Pessoa pessoa2 = Pessoa(controle, nome: 'Matheus', idade: 18);
  Pessoa pessoa3 = Pessoa(controle, nome: 'Marte', idade: 10);
  TV tv1 = TV(usuario: pessoa1, controle: controle);

  pessoa1.apertarBotaoLigar();
  pessoa1.apertarBotaoAbrirMenu();
  pessoa1.apertarBotaoPlay();
  // pessoa1.apertarBotaoDesLigar();
  print('');
  pessoa1.apertarBotaoAbrirMenu();
  print("");
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  print("");

  tv1.sinal();
  print("");
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  print("");

  tv1.usuario = pessoa2;
  tv1.sinal();

  print("");
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  print("");

  tv1.usuario = pessoa3;
  tv1.sinal();
}
