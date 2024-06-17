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

class Dado {
  String dadoGirando = "O dado está girando";
  String informarDadoGirar() {
    return dadoGirando;
  }

  int girarDado =  1 + Random().nextInt(6 - 1);
  int mostrarDado() {
    return girarDado;
  }
}

void main(List<String> args) {
  int talvez = 1;
  talvez = int.parse(lerTextoUsuario("Clique 1 para girar o dado: "));
  while (talvez == 1) {
    Dado dad = Dado();
    mostrarMensagemUsuario(
        "${dad.dadoGirando}\no dado caiu na face: ${dad.mostrarDado()}");
    talvez = int.parse(lerTextoUsuario("Digite 1 para girar novamente: "));
  }
}