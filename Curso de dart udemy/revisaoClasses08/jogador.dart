/**
 *  Crie a classe Jogador;
 *  Cadastrar/Instanciar pelo menos um time completo 2 jogadores.
b) Criar um método que verifica a condição de jogo, ou seja, um método booleano 
que retornará true se o jogador está apto a jogar e false se o jogador está 
suspenso. Note que um jogador está suspenso pelo 3 cartão amarelo ou 
quando recebe uma punição cartão vermelho ou em uma decisão do tribunal.
c) Em uma outra classe, crie o método main, o qual cadastra os jogadores e ao 
final imprimirá a lista do “plantel” juntamente com a informação de quem está 
apto a jogar, conforme a figura abaixo
 */

class Jogador {
  int id = 0;
  String nome = "";
  String apelido = '';
  DateTime? dataNascimento;
  int numero = 0;
  String? posicao;
  double qualidade = 0;
  int cartoesAmarelo = 0;
  int cartoesVermelhos = 0;
  bool suspenso = false;

  void dados() {
    print(
        "id:${id}, nome:${(this.nome.isNotEmpty) ? nome : 'Valor não informado'}, apelido:${(apelido.isNotEmpty) ? apelido : 'Valor não informado'}, data de nascimento:${(this.dataNascimento != null) ? dataNascimento : 'Valor não informado'}");
    print(
      "Número:$numero,posicao:${(posicao != null) ? posicao : 'Valor não informado'}, qualidade:$qualidade",
    );
    print("Cartões $cartoesAmarelo Amarelos");
    print("Cartoes $cartoesVermelhos vermelhos");
    print("Suspenso:${this.suspenso} ");
  }

  bool verificarCondicao() {
    var retorno;
    if (this.cartoesAmarelo < 3 && this.cartoesVermelhos < 1) {
      retorno = true;
    } else {
      retorno = false;
    }
    return retorno;
  }
}
