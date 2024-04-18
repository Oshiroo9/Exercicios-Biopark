import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  for (int i = 100; i <= 200; i++) {
    if (i % 2 == 0) {
      mostrarMensagemUsuario("$i");
    }
  }
}
