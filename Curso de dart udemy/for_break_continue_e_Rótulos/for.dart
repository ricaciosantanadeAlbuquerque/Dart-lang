void main() {
/**  for (int i = 0; i < 2; i++) {
    for (var j = i; j < 2; j++) {
      for (num x = j; x < 2; x++) {
        print("$i == $j == $x ");
      }
    }
  }

  //============================================================================================
  loopExterno:
  for (var i = 0; i < 3; i++) {
    print("LoopExterno i: $i");

    loopInterno: // rotulo de identificação
    for (var j = 0; j <= 3; j++) {
      print("LoopInterno i: $i j: $j");

      if (j > 2) break;
      if (i == 1) break loopInterno; // o break só quebra o loop mais interno neste caso
      if (i == 2) break loopExterno;
      print("loopCompleto");
    }
  } */
// ===========continue==============================================================================
  loopExterno:
  for (int i = 0; i <= 2; i++) {
    print("loopExterno  i: $i");
    loopInterno:
    for (int j = 0; j <= 3; j++) {
      
      print("loopInterno i: $i j: $j");

      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print("XXXXXXXXXXXXXXXXXX");
    }
  }
}
