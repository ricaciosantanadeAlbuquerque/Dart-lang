void main(List<String> args) {
  var num1;
  num1 = "Olá Mundo "; // O tipo 'var' é dinâmico até ter um valor atribuido a ela.
  print(num1.runtimeType);

  var num2 = 10;
  
  print(num2.runtimeType);

  num valorA = 12; // como visto num é pai dos tipos int e double  então fica ' num( int, double)'
  num valorB = 12.5; // por tanto o tipo 'num' aceita tanto o valor int quanto double
  print(valorA.runtimeType);
  int valorC = 11; // o tipo int, aceita valores inteiros
  print(valorC.runtimeType);
  double num4 = 2.2; // aceita valores fracionados
  print(num4.runtimeType);
  bool logico = true; // o tipo bolean ou bool  aceita valores lógicos
  print(logico.runtimeType);
  dynamic entrada = "oi";
  print(entrada.runtimeType);
  entrada = 12;
  entrada = 23.66;
  entrada = false; // como visto o tipo dynamic é dinamico aceita qualquer valor
  print(entrada.runtimeType);
}
