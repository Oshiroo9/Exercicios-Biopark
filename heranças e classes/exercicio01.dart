import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

abstract class Animal {
  String nome = "";
  String som = "";
  void emitirSom();
}

class Lobo extends Animal {
  @override
  void emitirSom() {
    print("AAAWOOOOOOOOOO");
  }
}

class Raposa extends Animal {
  @override
  void emitirSom() {
    print("dinrnidininrindirindirin");
  }
}

class Gato extends Animal {
  @override
  String Som = "meow meow meow :3";
  void emitirSom() {
    print("meow meow meow :333");
  }
}

void main(List<String> args) {
  Lobo loboUiva = Lobo();
  loboUiva.nome = "Lobo";
  loboUiva.emitirSom();

  Gato gatoMia = Gato();
  gatoMia.emitirSom();

  Raposa raposaRi = Raposa();
  raposaRi.emitirSom();
}
