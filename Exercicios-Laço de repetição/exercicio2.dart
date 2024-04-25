import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int par = 0;
  int impar = 0;
  for (int i = 1; i <= 8; i++) {
    int nums = int.parse(lerTextoUsuario("informe um número"));
    if (nums % 2 == 0) {
      par = par + 1;
    } else {
      impar = impar + 1;
    }
  }
  mostrarMensagemUsuario(
      "O total de números pares foi de $par, e de ímpares $impar");
}
