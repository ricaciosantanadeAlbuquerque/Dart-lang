/**
 * Faça uma função que recebe, por parâmetro, um valor inteiro e positivo e retorna o número de divisores desse valor.
 */
void main() {
  print("\n O número de divisores é ${divisores(20)}\n");
}

int divisores(int valor) {
  int cont = 0;

  for (int j = 1; j <= valor; j++) {
    if (valor % j == 0) {
      print(j);
      cont++;
    }
  }

  return cont;
}
