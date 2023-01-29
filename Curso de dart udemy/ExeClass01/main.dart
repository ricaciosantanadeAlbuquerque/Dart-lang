import 'loja.dart';

void main(List<String> args) {
  Loja p1 = new Loja();
   p1.descricao!.add("Pendriver 32 GB");
  p1.numeroItem.add(077);
  p1.precoUnitario!.add(64.00);
  p1.quantidadeComprada!.add(1);
  print(p1.informacao());

  p1.compra(precoUnitario: 3450, quantidadeComprada: 2, descricao: "Notebook dell G15", numeroItem: 10977);
  p1.compra(quantidadeComprada: 3, precoUnitario: 50.00, descricao: "Pendriver 16", numeroItem: 55);
  p1.compra(quantidadeComprada: 1, precoUnitario: 150, descricao: "Cooler de resfriamento ", numeroItem: 2);
}
