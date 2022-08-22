
import 'dart:io';
class Pessoa{
 int idade;
 String nome;
 double altura;
 Pessoa(this.idade,this.nome,this.altura);
 @override
  String toString() {
    // TODO: implement toString
    return idade.toString()+" "+nome+" "+altura.toString();
  }
}
void main(){
Map<int,String> dd = new Map();
dd[11] = "São Paulo";
dd[12] = "Rio de janeiro";
dd[83] = "Paraíba";

dd.values.forEach((element){
  print(element);
});
print("/n");
dd.keys.forEach((element){
  print(element);
});
print("==================================================");
print(dd[11]);

Map<String,dynamic> pessoa ={}; // ou new Map();
pessoa["nome"] = "lucas";
pessoa["idade"] = 26;
pessoa["altura"] = 1.76;
pessoa["peso"] = 64;

for(dynamic valor in pessoa.entries){
  print(valor);
}
print("++++++++++++++++++++++++++++++++++++++++++++++++++++");
print(pessoa.keys);
print("\n");
print(pessoa.values);
print("====================================================");
 Map<String,Pessoa> dados = new Map();
 dados["lucas"] = new Pessoa(26, "lucas", 1.75);
 dados["carmen"] = new Pessoa(39,"Carmen",1.60);
 print(dados.values.toString());
}