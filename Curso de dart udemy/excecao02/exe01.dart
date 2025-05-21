/**
 * 1. Tratamento com múltiplos on e catch
Crie uma função chamada converterEdividir que:

Recebe dois parâmetros: String numero1, String numero2

Converte ambos para int com int.parse()

Divide numero1 / numero2

Use on FormatException para capturar erro de conversão

Use on IntegerDivisionByZeroException para divisão por zero

Use catch (e) para tratar qualquer outro erro genérico

Ao final, imprima o resultado ou a mensagem de erro
 */
void main() {
  converterEdividir('12', '0');
}

void converterEdividir(String numero1, String numero2) {
  try {
    int valor1 = int.parse(numero1);
    int valor2 = int.parse(numero2);
    int divisao = valor1 ~/ valor2;
    print('Resultado da divisão: $divisao');
  } on FormatException {
    print('ERRO !!! $numero1 e $numero2 não são valores numéricos');
  } on UnsupportedError {
    print('Não é possível dividir por zero');
  } catch (e) {
    print('Excecao:$e');
  }
}
