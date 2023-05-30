void main() {
  print("O valor da média ${media(a: 2,b:4)}");
}

String media({double a = 0, double b = 0, double c = 0, double d = 0}) {
  int cont = 0;

  if (a > 0) {
    cont++;
  }

  if (b > 0) {
    cont++;
  }

  if (c > 0) {
    cont++;
  }

  if (d > 0) {
    cont++;
  }
  var media = (a + b + c + d) / cont;
  return 'O valor médio: $media';
}
