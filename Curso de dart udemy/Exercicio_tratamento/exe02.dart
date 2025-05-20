/**
 * 2. Usando on para tratar exceção específica
 * Crie uma função que converta uma String para int usando int.parse().
Use on FormatException para capturar o erro quando a conversão falhar.
Exemplo de entrada que deve causar erro: "abc"


 */
void main() {
  conversao('pp');
}

void conversao(String entrada) {
  try {
    int valor = int.parse(entrada);
    print('Valor da conversão $valor');
  } on FormatException {
    print('ERRO !!! de formatação, $entrada não é um número');
  } catch (e) {
    print('Exception:$e');
  }
}
