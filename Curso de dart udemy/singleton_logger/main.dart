import 'logger.dart';

void main() {
  var logger01 = new Logger();

  /// adicionando mensagens
  logger01.log(mensagem: 'Bom dia como você está ?');

  var logger02 = Logger();
  logger02.log(mensagem: 'Estou bem !! e você ?');

  logger01.log(mensagem: 'Graças a Deus vai tudo bem.');

  logger02.log(mensagem: 'Amém');

  /// mostrando as mensagens
  logger02.showLogs();

  print('------------------------------ -----------------------------------');

  logger01.showLogs();
}
