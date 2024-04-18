import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  for (int ola = 1; ola <= 30; ola++) {
    mostrarMensagemUsuario("Olá");
  }
}
