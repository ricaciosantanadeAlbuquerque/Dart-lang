import 'carro.dart';

class Propietario{
  String? nome,endereco;
  List<Carro>? listCarro;

  Propietario({required this.nome,required this.endereco,required this.listCarro});

  @override
  String toString() => 'Nome:$nome, endereço:$endereco, lista de carros:$listCarro';
}