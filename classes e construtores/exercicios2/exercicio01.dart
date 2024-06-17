import 'dart:ffi';
import 'dart:io';
import 'dart:math';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

class Animal {
  String cor = "";
  String nome = "";
  Animal(this.nome, this.cor);
}

class Pessoa {
  String nome = "";
  int idade = 0;
  Pessoa(this.nome, this.idade);
  List<Animal> listaAnimais = [];
}

void main(List<String> args) {
  Pessoa pessoa1 = Pessoa("Oshiro", 15);
  Pessoa pessoa2 = Pessoa("Stan", 69);
  Pessoa pessoa3 = Pessoa("Fondan", 3);

  Animal animal1 = Animal("Priquito", "Amarelo");
  Animal animal2 = Animal("Sus scrofus domesticus", "Azul");

  pessoa2.listaAnimais.add(animal1);
  pessoa3.listaAnimais.add(animal2);

  List<Pessoa> listaPessoa = [pessoa1, pessoa2, pessoa3];
  List<Animal> listaAnimall = [animal2, animal1];
  for (Pessoa pes in listaPessoa) {
    if (pes.idade >= 18) {
      for (var anim in listaAnimall) {
        if (anim.cor == "Amarelo") {
          mostrarMensagemUsuario(
              "A pessoa ${pes.nome} que é maior de idade, tem um ${anim.nome} amarelo");
        }
      }
    }
  }
}
