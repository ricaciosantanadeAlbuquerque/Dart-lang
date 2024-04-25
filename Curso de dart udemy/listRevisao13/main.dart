import 'caracteristicas.dart';
import 'carro.dart';
import 'multas.dart';
import 'propietario.dart';

void main(){
  List<Propietario> listPropietario = [];

  listPropietario.add(Propietario(nome: 'Lucas', endereco: 'Rua João campos 45', listCarro: [Carro(
    marca: 'Honda' ,modelo: 'Civic',placa:'QFY5466' ,caracteristicas: Caracteristicas(tipo: 'Passeio',
     passageiro: 8, potencia: 130, combustivel: 'Gasolina') ,listMultas: [
      Multas(descricao: 'Ecesso de velocidade', tipo: 'Gravissima', pontos: 7),
      Multas(descricao: 'Sem capacete', tipo: 'Gravissima', pontos: 7),
     ]
  )]));

  listPropietario.add(Propietario(nome: 'Ana', endereco: 'Jampa 33', listCarro: [
    Carro(marca: 'Fiat' , modelo: 'Palio', placa: 'GHD5548', caracteristicas: 
    Caracteristicas(tipo: 'Passeio', passageiro: 8, potencia: 150, combustivel: 'Gasolina',),listMultas: [
      Multas(descricao: 'Sem placa', tipo: 'Gravissima', pontos: 7),Multas(descricao: 'Sem CNH', tipo: 'Gravissima', pontos: 7)
    ])]));

    // ordenando lista pelos pontos da multa use o sort()

   listPropietario.forEach((propietario){
      propietario.listCarro!.forEach((carro){
        carro.listMultas!.sort((multasB,multasA) => multasA.pontos!.compareTo(multasB.pontos!));
      });
   });

   // mostrando valores 


   for(var i = 0; i < listPropietario.length; i++){
    var carroList = listPropietario[i].listCarro;
    for(var carro in carroList!){
        carro.listMultas!.forEach((e){
          print('${listPropietario[i].nome}, ${carro.modelo}, ${carro.placa}, ${carro.caracteristicas} ${e.descricao}, ${e.pontos}, ${e.descricao}');
        });
    }
   }

  //

  
}