import 'automovel.dart';
import 'aviao.dart';

void main() {
  Aviao novoAviao = Aviao();
  novoAviao
    ..ligar() // ligamos
    ..mostrarStatus() // mostramos se estava ligado
    ..acelerar(); //
  novoAviao.desligado(); // Este método pertece aveículo, porém Aviao herda tudo  de veículo, Assim um objeto aviao,  tem tudo que sua super classe tem,  TUDO !! mesmo que não esteja disponível ele herda.
  print('================================');
  var fusca = Automovel();

  fusca..acelerar();
  fusca
    ..ligar()..mostrarStatus()
    ..acelerar()
    ..desligado()
    ..mostrarStatus();
}
