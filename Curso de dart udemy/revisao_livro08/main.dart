

/**
 * Utilizando a estrutura "for" construta um relógio onde o primeiro laço o mais externo vai de 0  < 24 representando as horas.
 * O segundo laço vai de 0 < 60,representando os minutos, e o terceiro laço vai de 0 < 60 também  representando os segundos. 
 */
void main() {
  for (int horas = 0; horas < 24; horas++) {
    for (int minutos = 0; minutos < 60; minutos++) {
      for (int segundos = 0; segundos < 60; segundos++) {
        print('Horas: ${horas} Minutos: ${minutos} segundos: ${segundos}');
      }
      print('');
    }
    print('');
  }
}
