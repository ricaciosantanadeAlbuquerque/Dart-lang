void main(List<String> args) {
  var n = () {
    print("\nFunção anonima!\n");
  };
  n();
  funcaoAnonima();
}

void funcaoAnonima() {
  var num1 = (int valorA, int valorB) {
    var resultado = valorA + valorB;

    print("\n$resultado\n");
  };

  num1(30, 79);

  var msg = (String msg) => print("$msg");

  msg("Lute! Lute! se lutar você vence, se não lutar você morre! ");

  var r1 = (Function p) => p();

  r1(()=>print("Nada como um dia após  o outro !"));
}
