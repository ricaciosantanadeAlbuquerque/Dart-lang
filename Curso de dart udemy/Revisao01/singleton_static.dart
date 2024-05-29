/**
 * Singleton é um padrão de projeto para que exista apenas uma instância da classe.
 * O construtor é nomeado privado sem o construtor padrão (default) impede de instanciar a classe.
 * Static
 * A instancia pode ser acessada de forma direta pela classe. 
 */
void main(List<String> args){
 print(Pessoa.instancia.nome);
 print(Pessoa.instancia);
 Pessoa.instancia.nome = 'ricacio';
 print(Pessoa.instancia.nome);

 var p1 = Pessoa.instancia;
 p1.nome = 'Lucas';
 var p2 = Pessoa.instancia;
 p2.nome = 'Ana';
 print(p1.nome);
 print(identical(p1,p2));
}


class Pessoa{
  static final Pessoa instancia = Pessoa._construtorNomeado();
  String? nome;

  Pessoa._construtorNomeado();
}