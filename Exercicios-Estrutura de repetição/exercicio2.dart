import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  for (int i = 1; i <= 8; i++) {
    int nums = int.parse(lerTextoUsuario("informe um número"));
    if (nums % 2 == 0) {
      mostrarMensagemUsuario("\nesse número é par\n");
    } else {
      mostrarMensagemUsuario("\nesse número é ímpar\n");
    }
  }
}
