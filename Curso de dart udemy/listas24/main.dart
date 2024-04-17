
import 'caracteristica.dart';
import 'carro.dart';
import 'multa.dart';
import 'proprietario.dart';

void main(){
  List<Propietario> listPropietario = [];
  listPropietario.add(Propietario(nome: 'Lucas', endereco: 'Rua da mangueira 45', listCarro: 
  [Carro(marca: 'Honda', modelo:  'Civic', placa:'75GH66',caracteristica: 
  Caracteristica('Passeio', 8,230, 'Gasolina'),listMultas: [
    Multa(descricao: 'Excesso de velocidade', pontos: 7, tipo: 'Gravissima'),Multa(descricao: 'Sem Habilitação', pontos:7, tipo: 'Gravíssima')
    ]),Carro(marca: 'Fiat', modelo: 'Palio', placa: 'CBR747355', caracteristica: Caracteristica('Passeio', 5, 150, 'Etanol'), listMultas: [
      Multa(descricao: 'Furando sinal vermelho', pontos: 7, tipo: 'Gravissima'),Multa(descricao: 'Sem placa', pontos:5, tipo:  'Gravissima')
    ])]));


  listPropietario.forEach((e) => e.listCarro!.forEach((e) => e.listMultas!.sort((a,b) => a.pontos!.compareTo(b.pontos!))));

    for(var i = 0; i < listPropietario.length; i++){
      var carrolist = listPropietario[i].listCarro;
      for(var carro in carrolist!){
         carro.listMultas!.forEach((e) => print('Nome:${listPropietario[i].nome}, ${carro.modelo}, ${carro.placa}, ${carro.caracteristica}, ${e.descricao}, ${e.tipo},${e.pontos}'));
      }
    }
}