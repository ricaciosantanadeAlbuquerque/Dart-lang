void main() {
  String nome; // declaramos uma variável
  nome = "ana"; // inicializamos a variavcel
  print(nome); // e por fim usamos a variável

//=======================================toLowerCase()====================================================
/**
 * converte todos os caracteres em minúsculos 
 */
  String sobreNome = "BEZERRA";
  print(sobreNome);
  print("\n");
  print(sobreNome.toLowerCase()); // toLowerCase() converte tudo para Minúsculo

  //=====================================toUpperCase()====================================================
  /**
   * Converte todos os caracteres Em Maiúsculos 
   */
  print(nome.toUpperCase()); // convertendo para Caixa alta toUpperCase()

  //======================================trim()==========================================================
  /**
   * Elimina espaços vazios no começo e fim das Strings
   */
  print("================================================================================================");
  var caractere = " babel ";
  print(caractere);
  print("\n");
  print(caractere.trim());
  print("================================================================================================");
  // =====================================Split('')=============================================================
  /**
   * busca espaços vazios entre os caracteres e retorna os caracteres como um array 
   */
  var nomeCompleto = " ricacio Santana ";

  print(nomeCompleto.split(" "));
  print(nomeCompleto.split("")); // Mas também pode seprar por caractere  caso a função split() receba uma String vazia ""
  print(nomeCompleto.length);

  //====================================substring()==============================================================
  /**
   * a função substring nos permite capturar intervalos dentro de String ou melhor dentro de um  array de caracteres
   *
   */
  print("======================================================================================================================");
  print(nomeCompleto.substring(0, 15));
  print(nomeCompleto.substring(4, 13));
  //==================================trimp()=e=split()===========================================================================

  print(nomeCompleto.trim().split(" ")); // split() pede um caractere para fazer a separação por ele

  //================================= contains()==================================================================================
  /**
   *  se o valor está contido dentro da variável ou melhor existe dentro do conjuto de caracteres 
   */
  print(nomeCompleto.contains("r")); // true == sim

  // =================================== length==================================================================================
  /**
   * Nos permite saber o tamanho de suma Strings
   */
  print(nomeCompleto.length); // 17

  // =======================================compareTo()===========================================================================
  String j = "ricacio";
  print(j.compareTo("ricacio")); // se == 0
  print(j.compareTo("rica")); // se j possuir esse conjunto de caracteres então ele retorna 1
  print(j.compareTo('Liza'));// se j não possui esse conjunto de caracteres então retorna -1
}
