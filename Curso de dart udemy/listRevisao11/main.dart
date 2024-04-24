import 'caracteristicas.dart';
import 'carro.dart';
import 'multas.dart';
import 'propietario.dart';

void main(){
   

   List<Propietario> listPropietario = [];

   listPropietario.add(Propietario(nome: 'Ricacio', endereco: 'Rua Euzely Fabricio', listCarro: [Carro(marca: 'Honda',modelo: 'Civc',placa: '754885965',caracteristicas: Caracteristicas(tipo: 'Passeio', passageiros: 8, potencia: 250, combustivel: 'Gasolina'),listMultas: 
   [
    Multas(descricao: 'Excessso de Velocidade', tipo: 'Gravissima', pontos: 7),Multas(descricao: 'Girigir sem CNH', tipo: 'Gravissima', pontos: 7), Multas(descricao: 'Sem placa', tipo: 'Gavissima', pontos: 7)
   ])]));

   listPropietario.add(Propietario(nome: 'Lucas', endereco: 'Rua Emanuel Arruda Cavalcante', listCarro: [Carro(marca: 'Fiat', modelo: 'Palio', placa: 'CBS44536', caracteristicas: Caracteristicas(tipo: 'Passeio', passageiros: 8, potencia: 130, combustivel: 'Gasolina'), listMultas: [
    Multas(descricao: 'Sem capacete', tipo: 'Grave', pontos: 5),
    Multas(descricao: 'Parar em local proibido', tipo: 'Grave', pontos: 5)])]));

    // ordenando as multas em ordem crescente

    listPropietario.forEach((e) => e.listCarro!.forEach((e) => e.listMultas!.sort((a,b) => a.pontos!.compareTo(b.pontos!))));

  for(var i = 0; i < listPropietario.length;i++){
    var listaCarro = listPropietario[i].listCarro;
    for(var carro in listaCarro!){
      carro.listMultas!.forEach((e) => print('${listPropietario[i].nome}, ${carro.modelo}, ${carro.placa}, ${carro.caracteristicas}, ${e.descricao}, ${e.pontos}, pontos'));
    }
  }
}


