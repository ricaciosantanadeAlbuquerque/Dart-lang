import 'dart:convert';

void main() {
  String jsonData = '''

      {
      "nome":"ricacio",
      "idade":33,
      "email":"ricaciozz@gmail.com"
      }

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  //? Serialização
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('\n nome:${nome}, idade:${idade}, email:${email}\n');

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('\n toJson: $toJson \n');
}
