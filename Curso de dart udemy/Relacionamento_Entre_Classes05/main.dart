import 'algas.dart';
import 'atum.dart';
import 'camarao.dart';
import 'sardinha.dart';
import 'tubarao.dart';

void main() {
  Algas algas = new Algas();
  Camarao camarao = new Camarao(tipo: 'Camarão krill', algas: algas);
  Sardinha sardinha = new Sardinha(tipo: 'Sardinha Sprattus', camarao: camarao);
  Atum atum = new Atum(tipo: 'Atum-Azul', sardinha: sardinha);
  Tubarao tubarao = Tubarao(tipo: 'Tubarão Branco', atum: atum);

  tubarao
    ..comer()
    ..atum.comer()
    ..atum.sardinha.comer()
    ..atum.sardinha.camarao.comer();

  tubarao.atum.sardinha.camarao.algas.produzAlimento();
  /**
   *  Tubarão  tem  um Atum,  que por sua Vez tem uma Sardinha, que tem um Camarão que possui uma alga.
   *  
   *  Agregação de objetos !!
   *  Tubarão  vê tudo de Atum, pois tem uma instância da classe Atum, logo Atum vê tudo e sardinha pois também tem uma     instância da mesma...
   * e por ai vai.
   * Assim somos capazes de fazer os objetos se relacionarem.
   *  
   * 
   * 
   */
}
