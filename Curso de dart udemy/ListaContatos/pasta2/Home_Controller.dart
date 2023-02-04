import '../model/Home_pessoa.dart';

class HomeController {
  
  List<HomePessoa> lista = [];

  void adicionar(HomePessoa p) {
    lista.add(p);
  }

  void remover(HomePessoa p) {
    lista.remove(p);
  }

  void listar() {
    for (var elemento in lista) {
      print(elemento.toString());
    }
  }
}
