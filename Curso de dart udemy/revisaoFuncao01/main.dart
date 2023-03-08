/**
 * 1 Faça uma função que recebe a idade de uma pessoa em anos, meses e dias e retorna essa idade expressa em dias.
 */
void main() {
  print("${idadeDia(dia: 21, mes: 10, ano: 1992)} dias  de vida na terra ");
}

String idadeDia({required int dia, required int mes, required int ano}) {
  double resultadoMes = mes * 30.437;
  int idade = DateTime.now().year - ano;
  //print(idade);
  double resultadoAnos = idade * 365;
  double diaResposta = resultadoMes + resultadoAnos + dia;

  return diaResposta.toStringAsFixed(0);
  //return resultadoAnos.toString();
  //return resultadoMes.toStringAsFixed(0);
}
