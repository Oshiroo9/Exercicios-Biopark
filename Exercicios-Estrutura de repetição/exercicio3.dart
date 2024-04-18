import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int num = int.parse(lerTextoUsuario("informe um número"));
  for (int i = 1; i <= num; i++) {
    if (i % 2 == 0) {
      mostrarMensagemUsuario("$i");
    }
  }
}
