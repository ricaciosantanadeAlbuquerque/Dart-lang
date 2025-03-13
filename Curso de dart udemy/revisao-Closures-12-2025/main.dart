void main(List<String> rags) {
  var somar10 = soma(20);
  print(somar10);
  print(somar10(18.8));
  var desconto = porcentagem(desconto: 15);
  print(desconto);
  print(desconto(1200));
}

Function soma(int valorA) {
  print(valorA);
  return (double valorB) {
    print(valorB);
    return valorA + valorB;
  };
}

Function(double valo) porcentagem({double desconto = 0}) => (double valor) => (desconto * valor) / 100;
