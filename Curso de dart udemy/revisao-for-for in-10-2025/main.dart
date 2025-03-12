void main(List<String> rags) {
  for (int i = 0; i < 10; i++) {
    print('Contagem: ${i + 1}');
  }

  print('\n ==========Menu==========\n');
  // contagem regressiva de 1 em 1
  for (var j = 10; j >= 0; j--) {
    print('Cantagem: ${j}');
  }

  print('');

  // contagem regressiva de 5 em 5
  for (var x = 15; x >= 0; x -= 5) {
    print('Regrevisa $x');
  }

  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os numeros');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print(i);
    }
  }

  dynamic frutas = ['tomate', 'manga', 'pera', 'maca'];

  print('\n');

  for (int i = 0; i < frutas.length; i++) {
    print('for: $i ${frutas[i]}');
  }

// ============================= ===============================================
  print('\n');

  for (var element in frutas) {
    print('forin: $element');
  }

  testeLaco();
  test2();
}

void testeLaco() {
  for (var i = 0; i < 2; i++) {
    for (int j = i; j < 2; j++) {
      for (num k = j; k < 2; k++) {
        print('i: $i j: $j k: $k');
      }
    }
  }
}

void test2() {
  loopExterno:
  for (var i = 0; i < 3; i++) {
    // i = 3
    print('LoopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('loopInterno: i: $i j: $j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('loopCompleto');
    }
  }
}
