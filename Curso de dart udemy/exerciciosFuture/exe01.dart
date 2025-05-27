/**
 * 01 ) Crie uma função que retorna um Future<String> com uma mensagem após 2 segundos.
 */
void main() async {
  var result = await mensagem();
  print(result.isEmpty ? 'Indefinido' : '$result');

}

Future<String> mensagem() =>
    Future.delayed(Duration(seconds: 2), () => ' Boa Tarde, vamos a luta.');



