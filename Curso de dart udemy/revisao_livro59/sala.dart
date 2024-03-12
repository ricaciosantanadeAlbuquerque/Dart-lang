import 'mesa.dart';

class Sala {
  final int metrosQuadradosSala;
  List<Mesa> listMesa = [];

  Sala({required this.metrosQuadradosSala});

 // Na agregação o objeto vem de fora,

  void adicionarMesa({required Mesa mesa}) {
    this.listMesa.add(mesa); // adicionando na lista de Mesa o objeto agregado mesa
  }

  void excluirMesas() {
    this.listMesa.clear();
  }

  void listarMesas() {
    for (var mesa in listMesa) {
      print(mesa.toString());
    }
  }

  @override
  String toString() {
    return 'Metros Quadrados da sala:$metrosQuadradosSala,  Mesas:${listMesa}';
  }
}
