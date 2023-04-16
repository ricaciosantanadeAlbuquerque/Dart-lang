import 'livro.dart';
import 'pessoa.dart';

void main() {
  List<Pessoa> listaP = [Pessoa("Ana", 32, "feminino"), Pessoa("Lucas", 28, 'Masculino'), Pessoa('Carmen', 39, 'Feminino')];
  // ==============================================
  List<Livro> listaL = [Livro('Java', 'Luiz fontes', 400, listaP[0]), Livro('Dart', 'ricacio', 650, listaP[1]), Livro('Flutter', 'RR', 200, listaP[2])];
  print("=============================================================");
  listaL[0].abrir();
  print(listaL[0].detalhes());
  listaL[0].folhear(150);
  print(listaL[0].detalhes());
  listaL[0].avancarPag();
  print("=============================================================");
  print(listaL[0].detalhes());
  listaL[0].voltaPag();
  print("=============================================================");
  print(listaL[0].detalhes());
}
