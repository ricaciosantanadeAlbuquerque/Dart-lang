import 'funcionario.dart';
import 'dart:io';
/**
 * Crie uma lista de objetos Funcionario com nome e salario.
Filtre e exiba apenas os funcionários com salário acima de R$ 5.000,00.
 */
void main(List<String> args) {
  late Iterable<Funcionario> novaLista; // declarada 

  novaLista = novaListaFiltrada(lista: listaFuncionario()); // inicializada

 /// Utilizada
  novaLista.forEach(print);

}

List<Funcionario> listaFuncionario() {
  final List<Funcionario> listaFuncionario = [];

  for (var i = 0; i < 5; i++) {
    print('Digite seu nome !!!');
    String? entradaNome = stdin.readLineSync();
    print('Digite seu salário por favor');
    String? entradaSalario = stdin.readLineSync();

    if (entradaNome != null && entradaSalario != null) {
      if (entradaNome.isNotEmpty && entradaSalario.isNotEmpty) {
        try {
          double salario = double.tryParse(entradaSalario) ?? 0.0;
          listaFuncionario.add(Funcionario(entradaNome, salario));
        } catch (e) {
          print('Excecao:$e');
        }
      } else {
        print('ERRO!!! O nome ou salário estão inválidos.');
      }
    } else {
      print('ERRO!!! O nome ou salário estão inválidos.');
    }
  }

  return listaFuncionario;
}

Iterable<Funcionario> novaListaFiltrada({required List<Funcionario> lista}) {
  return lista.where((value) => value.salario > 5000); // collection Iterable
}
