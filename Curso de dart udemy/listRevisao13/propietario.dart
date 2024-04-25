import 'carro.dart';

class Propietario{
  String? nome,endereco;
  List<Carro>? listCarro;

Propietario({required this.nome,required this.endereco,required listCarro});

@override
String toString() => 'Nome: $nome, Endereço:$endereco, carros:$listCarro ';
}