import 'carro.dart';

class Propietario{
  String? nome,endereco;
  List<Carro>? listCarro;

  Propietario({required this.nome,required this.endereco,required this.listCarro});

  @override
  String toString() => 'nome:$nome, endereço:$endereco,  carros:$listCarro';

}