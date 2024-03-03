import 'andar.dart';
import 'interface_edificio.dart';

class Edificio implements InterfaceAndar {
  int? _altura;
  List<Andar> _qtdAndar = [];

  Edificio({required int metrosAndar}) {
    this.criarAndar(metros: metrosAndar);
    this.altura = _qtdAndar.length * 2;
  }

  int? get altura {
    return this._altura;
  }

  void set altura(int? altura) => this._altura = altura;

  List<Andar> get qtdAndar => this._qtdAndar;

  void set qtdAndar(List<Andar> qtdAndar) => this._qtdAndar = qtdAndar;

  // implementando a interfaceAndar

  @override
  void criarAndar({int metros = 500}) {
    for (var j = 0; j < 10; j++) {
      this._qtdAndar.add(Andar(metros: metros, numero: j));
    }
  }

  @override
  void excluirTodosAndares() {
    for (var item in qtdAndar) {
      // como só tem um item na lista qtdAndar então o laço só será chamado uma vez
      item.excluirSalas();
    }
    this.qtdAndar.clear();
    print(qtdAndar.isEmpty);
  }

  void mostrarTodosAndares() {
    for (var item in _qtdAndar) {
      print(item.toString());
    }
  }
}
