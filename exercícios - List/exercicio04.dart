import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List notas = [13, 10, 5, 8, 9, 2, 3, 4];
  List impar = [];
  for (int i = 0; i <= 7; i++) {
    if (notas[i] % 2 != 0) {
      impar.add(notas[i]);
    }
  }
  mostrarMensagemUsuario("$impar");
}
