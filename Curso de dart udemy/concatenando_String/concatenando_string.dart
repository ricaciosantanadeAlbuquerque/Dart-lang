void main(List<String> args) {
  print("joão " "lucas " "ana");

  // em dart é possível concatenar String na função print sem a utilização de um operador

  var texto1 = "\nricacio"; // \n
  var texto2 = "Satana";
  var texto3 = "Albuquerque\n";

  // Também  é possivel  concatenar String usando o sinal de +

  var nomeCompleto = texto1 + texto2 + texto3;

  print(nomeCompleto);

// interpolção de Strings

  print("nome completo ${nomeCompleto}"); // recomendado para mostrar o valor de funções e  o perações 

  print("Nome completo $nomeCompleto");  // usando o dolar para acessar uma String 
}
