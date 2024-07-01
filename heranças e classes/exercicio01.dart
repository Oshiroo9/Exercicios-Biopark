import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

abstract class Animal {
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
  void emitirSom() {
    print("meow meow meow :333");
  }
}

void main(List<String> args) {
  Lobo loboUiva = Lobo();
  loboUiva.emitirSom();

  Gato gatoMia = Gato();
  gatoMia.emitirSom();

  Raposa raposaRi = Raposa();
  raposaRi.emitirSom();
}
