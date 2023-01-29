class Data {
  String dia = "";
  String mes = "";
  String ano = "";

  String data({required String dia, required String mes, required String ano}) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
    var data = this.ano + "-" + this.mes + "-" + this.dia;
    return data;
  }
}
