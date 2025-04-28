import 'dart:collection';

/**
 * 2️⃣ Filtros em List
Crie uma lista de String com nomes de frutas.

Filtre e exiba apenas as frutas que começam com a letra "M".

Transforme todas as frutas para maiúsculas e exiba a nova lista.
 */
void main() {
  List<String> frutas = [
    'Abacate',
    'Abacaxi',
    'Açaí',
    'Acerola',
    'Amora',
    'Banana',
    'Caju',
    'Carambola',
    'Cereja',
    'Coco',
    'Cupuaçu',
    'Figo',
    'Goiaba',
    'Graviola',
    'Jabuticaba',
    'Jaca',
    'Kiwi',
    'Laranja',
    'Limão',
    'Lichia',
    'Maçã',
    'Mamão',
    'Manga',
    'Maracujá',
    'Melancia',
    'Melão',
    'Mirtilo',
    'Morango',
    'Nectarina',
    'Pera',
    'Pêssego',
    'Pitanga',
    'Romã',
    'Tangerina',
    'Uva',
    'Abiu',
    'Abricó',
    'Abrunho',
    'Alfarroba',
    'Atemoia',
    'Bacaba',
    'Barbatimão',
    'Cacau',
    'Cupuaçu',
    'Damasco',
    'Framboesa',
    'Gojiberry',
    'Graviola',
    'Marmelo',
    'Pitanga',
    'Tamarindo',
    'Açaí',
    'Acerola',
    'Araçá',
    'Bacuri',
    'Caja',
    'Cupuaçu',
    'Graviola',
    'Jabuticaba',
    'Jaca',
    'Mangaba',
    'Murici',
    'Pinha',
    'Pitanga',
    'Ameixa',
    'Cereja',
    'Damasco',
    'Framboesa',
    'Maçã',
    'Pera',
    'Uva',
    'Abacate',
    'Nozes',
    'Coco',
    'Melancia',
    'Melão'
  ];

  SplayTreeSet<String> frutasUnicas = SplayTreeSet<String>.from(frutas);

  /// Filtre e exiba apenas as frutas que começam com a letra "M".

  var frutasComM = frutasUnicas
      .where((value) => value.startsWith('M')); // startsWith() == começar com

  print('Frutas com M $frutasComM');

  ///Transforme todas as frutas para maiúsculas e exiba a nova lista.

  var frutasMaiusculas =
      frutasComM.map((valeu) => valeu.toUpperCase()).toList();

  frutasMaiusculas.forEach(print);
}
