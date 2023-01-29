import 'Aluno.dart';

void main() {
  Aluno aluno = new Aluno();
  aluno.nome = "Lucas";
  aluno.idade = 27;
  aluno.matricula = 0333;

  aluno.getDados();
  aluno.pagarMensalidada(valor: 400);
  aluno.getDados();

  aluno.mediaAluno(num1: 9, num2: 10, num3: 10);
  aluno.getDados();
  /**
   * Através da instância  aluno que pertence a class aluno, eu estabecelo uma ligação com a classe, podendo passar valores para dentro da mesma  por meio de sua instância.
   * 
   * Lembrando que a classe Aluno é como um molde de um bolo, ou uma planta de prédio, através da forma de bolo posso fazer vários bolos  o mesmo vale  para a classe, de uma classe pode sair vários objeto aluno. 
   */
}
