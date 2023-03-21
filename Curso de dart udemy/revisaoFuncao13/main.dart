import '../funcaoExe04/funcao.dart';

/**
 * Crie uma classe que contenha um método 'pageMes' que recebe uma data em formato texto no padrão  dd/mm/aaaa e retorne um número inteiro referente ao Mês.
 */
void main() {
  print("\n O Mês é ${pageMes(texto: '21/11/1992')} \n");
}

int pageMes({required String texto}) {
  try {
    var mes = int.parse(texto.substring(3, 5));
     return mes;
  } catch (e) {
    throw Exception("Erro! não foi possível completar a operação ");
  }

 
}
