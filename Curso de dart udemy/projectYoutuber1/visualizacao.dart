import 'gafanhoto.dart';
import 'video.dart';

class Visualizacao {
  
  Gafanhoto1? _espectador;
  Video1? _filme;

  Visualizacao({required Gafanhoto1? gafanhoto, required Video1? filme}) {
    if (gafanhoto != null && filme != null) {
      this._espectador = gafanhoto;
      this._filme = filme;
    } else {
      print("ERRO! os parâmetros não foram passados");
    }
  }

  Gafanhoto1? get espectador => this._espectador;

  void set espectador(Gafanhoto1? espectador) {
    this._espectador = espectador;
  }

  Video1? get filme => this._filme;

  void set filme(Video1? filme) {
    this._filme = filme;
  }

  void avaliacao({required int? nota, required double? porcentagem}) {
    if (nota == null && porcentagem == null) {
      this._filme!.avaliacao = 5;
    }

    if (nota != null && nota.isNaN == false && porcentagem == null) {
      print(nota);
      this._filme!.avaliacao = nota;
    }

    if (porcentagem != null && porcentagem.isNaN == false && nota == null) {
      int valor = 0;

      if (porcentagem <= 20) {
        valor = 3;
      } else if (porcentagem <= 50) {
        valor = 5;
      } else if (porcentagem <= 80) {
        valor = 8;
      } else {
        valor = 10;
      }

      this._filme!.avaliacao = valor;
    }
  }
}
