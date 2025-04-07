void main() {
  print(palindromo(frase: "Ame o poema"));
}

bool palindromo({required String frase}) {
  String novaFrase = frase.toLowerCase().replaceAll(RegExp(r'\s+'),'');
  print(novaFrase);
  return novaFrase == novaFrase.split('').reversed.join(); // 
}
