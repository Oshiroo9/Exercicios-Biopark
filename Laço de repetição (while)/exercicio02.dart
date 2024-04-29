import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int i = 1;
  int num = int.parse(lerTextoUsuario("Deseja a tabuada para qual valor?"));
  while (i <= 10) {
    mostrarMensagemUsuario("$num x $i = ${num * i}");
    i++;
  }
}
