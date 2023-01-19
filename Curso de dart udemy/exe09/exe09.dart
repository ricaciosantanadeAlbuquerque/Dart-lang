// a soma de todos os números impares entre 1 e 1000

void main() {
  int soma = 0;
  for (var i = 1; i <= 1000; i++) {
    if (i % 2 != 0) {
      // se i  divido por 2 o resto não é  0 então é impar
      print("${i}");
      soma += i;
    }
  }
  print("O valor total de soma é ${soma}");
}
