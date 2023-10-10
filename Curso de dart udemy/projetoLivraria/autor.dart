import 'contato.dart';
import 'interface_autor.dart';

class Autor implements InterfaceAutor {
  String? _nome;
  String? _abreviatura;

  //Atuor() e composto por uma lista de objetos Contato(); este objeto só podem ser acessados por Autor()

  List<Contato> _contatosAutor = []; // o autor pode ter mais de um tipo de contato

  // construtor

  Autor({required String nome, required String abreviatura, required String tipo, required String contato}) {
    this.nome = (nome.isNotEmpty) ? nome : 'Valor não informado';
    this.abreviatura = (abreviatura.isNotEmpty) ? abreviatura : 'Valor não informado';
    adicionarcontato(tipo: tipo, contato: contato);
  }

// get and set
  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get abreviatura => this._abreviatura;

  void set abreviatura(String? abreviatura) {
    this._abreviatura = abreviatura;
  }

  @override
  void consultar() {
    print(toString());
  }

  @override
  void adicionarcontato({required String tipo, required String contato}) {
    this._contatosAutor.add(Contato(tipo: tipo, contato: contato)); // o funcionário pode adicionar objeto contatos.
  }

  @override
  void removerContato({required String tipo, required String contato}) {
    for (var contato in this._contatosAutor) {
      if (contato.tipo == tipo && contato.contato == contato) {
        this._contatosAutor.remove(contato);
      }
      /**
        * Estamos comparando os valores passados com os valores dos atributos do contato. se for válido então este é o objeto que deve ser excluido.
        */
    }
  }

  @override
  String toString() => 'Nome:$_nome, Abreviatura:$_abreviatura';
}
/**
 * No momento em que criamos o Autor, deve ser criado um objeto contato. 
 * Já que esta relação é uma relação todo parte (composição).
 * Na relação composição,  Autor que é o todo, é composto por partes, sendo essas partes seus atributos, no caso o objeto Contato(). No momento em que  criamos um autor, deve ser criado o objeto contato. Sendo que só o autor, conhece e tem acesso a contato  sendo que este " contato" não pode ser compartilhado com outros objetos autor.
 * se autor for deletado contato também será deletado.
 * traduzindo só a classe todo "Autor()" sabe e pode criar Contato().
 * no momento em que instânciamos Autor, automaticamente deve ser instânciado contato. E como um Objeto Autor() pode ter mais de um contato, este objeto deve ter uma maneira de criar mais contatos, porém só autor pode fazer isso.
 *  
 *  
 * 
 */