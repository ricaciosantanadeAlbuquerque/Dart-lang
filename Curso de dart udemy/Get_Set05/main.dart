import 'professor.dart';

void main() {

  Professor p1 = Professor("Ana", 0066);
  p1.darAula();
  p1.salarioP();
  print(p1.infromacao);
  // ================================================================
  Professor p2 = new Professor.concursado("Lucas", 77, true);
  p2.concursado = true;
  p2.salarioP();
  print(p2.infromacao);
  
}
