import 'Data.dart';

void main() {
  Data data = new Data();
  var data1 = DateTime.now().toString().substring(0,10);

  // ignore: unnecessary_type_check
  //print(data.runtimeType);
  //print(data.substring(0, 10));

  var teste = data.data(dia: "28", mes: "01", ano: "2023");
  print(teste);
  print(data1);

  if (teste == data1) {
    print("É igual !");
  } else {
    print("Nao é ");
  }
}
