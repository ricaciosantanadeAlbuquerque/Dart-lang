/**
 *  Escreva um função Anonima em Dart que recebe 3 número e informa o maior valor e o menor valor. 
 */
void main() {
  executar();
}

void executar() {
  var valorNumerio = ({required num num1, required num num2, required num num3}) {
    num menor = 1000000;
    num maior = 0;

    if (num1 > num2 && num1 > num3) {
      maior = num1;
    } else if (num2 > num1 && num2 > num3) {
      maior = num2;
    } else if (num3 > num1 && num3 > num2) {
      maior = num3;
    }

    if (num1 < num2 && num1 < num3) {
      menor = num1;
    } else if (num2 < num1 && num2 < num3) {
      menor = num2;
    } else if (num3 < num1 && num3 < num2) {
      menor = num3;
    }

    return 'Maior:$maior, menor:$menor';
  };

  print(valorNumerio(num1: 120, num2: 80, num3: 5));
}
