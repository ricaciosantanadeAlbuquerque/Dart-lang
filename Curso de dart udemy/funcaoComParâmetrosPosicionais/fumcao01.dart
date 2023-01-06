void main() {
  mostrar();
  mostrarValores(22, 33, 44);
  mostrarValores(22, 44);
  var resultado = soma(20,30);
  print(resultado);
}

void mostrar() {
  void media([int? num1, int? num2, int? num3]) { // informei que e null e a baixo tratei como not null !
    var media = (num1! + num2! + num3!) ~/ 3; // neste caso tive que informa ao compilador que os parâmetros não são nulos, o que não é o mais indicado utilizando !,
    print("$media\n");
  }

  media(7, 8, 9);
  //media();
}

void mostrarValores([int? nota1, int? nota2, int? nota3]) {
  print(" $nota1 $nota2 $nota3 "); // neste caso como é só para mostrar os valores não há nescessidade de tratar os valores nulos
}

int soma([int num1 = 0,int num2 = 0]) => num1 + num2; // para que não desse erro neste caso tive que informar que os valores padrões não são nulos. 
