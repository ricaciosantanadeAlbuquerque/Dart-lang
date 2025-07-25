/**
 * Função bool contemPalavra(String frase, String palavra)
Verifica se a frase contém a palavra.
 */

bool contemPalavra({
  String frase =
      'Os sapos são anfíbios curiosos que saltam entre a terra e a água',
  String palavra = 'sapo',
}) {
  assert(frase.isNotEmpty && palavra.isNotEmpty);
  return frase.contains(palavra);
}
