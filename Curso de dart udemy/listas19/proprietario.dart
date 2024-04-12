import 'carro.dart';

class Proprietario {
  String? nome, endereco;
  List<Carro> listCarro = [];
  Proprietario({required this.nome, required this.endereco, required this.listCarro});
}
