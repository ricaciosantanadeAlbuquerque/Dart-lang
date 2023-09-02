
late int num4;
void main() {
  // Introdução a null - safety
  String nome; // String é um tipo de variável não nula not null;

  nome = "machineDramon";

  print(nome); // é preciso inicializala antes de usa lá ;

  //variable  null

  String? nome1; // Toda Variável seguida do sinal de interrogação tornasse
  // uma variável nula;
  print(nome1);

  int? num1; // num1 é uma variável que aceita valores nullos
  num1 = 19;
  print(num1); // ! diz para o compilador  que num1 minha variável
  //nula, não é  nula ou não está nula ou seja estou falando que ela possui
  // um valor not null;

  late String sobreNome;
  sobreNome = "João";
  print(sobreNome);
  
  num4 = 10;
  print(num4);
}
