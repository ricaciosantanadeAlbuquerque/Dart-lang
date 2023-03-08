/**
 * Faça um procedimento que recebe a idade de um nadador por parâmetro e retorna , sua categoria.  

Idade	Categoria
5 a 7 anos	Infantil A
8 a 10 anos	Infantil B
11-13 anos	Juvenil A
14-17 anos	Juvenil B
Maiores de 18 anos (inclusive)	Adulto
 */
void main() {
  categoria(valor: 23);
}

void categoria({required int valor}) {
  if (valor >= 5 && valor <= 7) {
    print("Infantil A");
  } else if (valor >= 8 && valor <= 9) {
    print("Infantil B");
  } else if (valor >= 11 && valor <= 17) {
    print("Juvenil A");
  } else {
    print("Adulto  ! ");
  }
}
