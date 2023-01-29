import 'home_Funcionario.dart';

void main() {
  Funcionario p1 = new Funcionario();
  p1.nome = "Ricacio";
  p1.sobrenome = "Santana";
  p1.valorPorhora = 6.00;
  p1.horasTrabalhadas = 8;

  p1.nomeCompleto();
  p1.calcularSalario();
  p1.incrementarHoras(2);
  p1.calcularSalario();
}
