import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';

void main() {
  Gato gato = Gato(nome: 'Nina', dono: 'Vó', idade: '7', sexo: 'Fêmea');
  Animal cachorro =
      Cachorro(nome: 'Zé', dono: 'João', idade: '3', sexo: 'macho');

  /**
   * Porque Animal recebeu uma instância de Gato e cachorro ? 
   * porque tanto gato como cachorro são do tipo animal eles herda essa ligação
   * por herança.
   * Animal é a super classe de gato e cachorro, por tanto aceita objetos de suas subclasses
   * {Relacionamento é um} gato é um animal e cachorro é um animal.
   * Porém fazendo isso não será enchergado os atributos de gato e cachorro, só da super classe.
   */

  gato.fazSom();
  cachorro.fazSom();

 // gato.nome = 'alla'; não pode sobrepor  atributos finais
}
