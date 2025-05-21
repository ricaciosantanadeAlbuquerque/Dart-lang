void main() {
  converterDividir('20','pp');
}

void converterDividir(String numero1, String numero2) {

  try {
    num valor1 = int.parse(numero1);
    num valor2 = int.parse(numero2);

    num divisao = valor1 / valor2;
    print('Divisão $divisao');
  } catch (e,s) {
    print('Eception: $e');
    print('Stack Trace $s');
  }

}
