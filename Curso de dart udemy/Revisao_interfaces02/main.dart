import 'candiddato.dart';

/**
 * Ao implementar uma classe como interface em dart, devemos sobrepor todos os seus métodos e atributos.
 * Toda classe concreta que estende uma classe abstrata, deve sobrepor os métodos sem escopo (métodos abstratos)
 * 
 */

void main() {
  Candidato candidata = new Candidato('Ana', ideologia: 'esquerda', partido: 'pdt');
  candidata
    ..objetivo = 'ganhar as eleições\n'
    ..objetivosPessoais()
    ..postagem = 'Mais Educação e igualdade\n'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
