/**
 *  Escreva uma função que recebe uma frase e retorna:

O número de vogais

O número de consoantes

O número de espaços


 */

void main() {
  print(contadorVogaisConsoantes(frase:'banana doce'.toLowerCase()));
}

Map<String,int> contadorVogaisConsoantes({required String frase}) {
  String vogais = 'aeiou';
  String consoantes = 'bcdfghjklmnpqrstvwxyz';
  String vazio = ' ';



  int contadorVogais = 0;
  int contadorConsoantes = 0;
  int contadorVazio = 0;

  for (int i = 0; i < frase.length; i++) {
    String caracteres = frase[i];

    if (vogais.contains(caracteres)) {
      contadorVogais++;
    } else if (consoantes.contains(caracteres)) {
      contadorConsoantes++;
    } else if( caracteres == vazio){
      contadorVazio++;
    }
  }

  return {
    'vogais': contadorVogais,
    'consoantes': contadorConsoantes,
    'vazio': contadorVazio
  };
}
