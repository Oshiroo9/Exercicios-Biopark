import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  String quadrado = "";
  int lados = int.parse(lerTextoUsuario(
      "Escolha a quantidade de lados do nosso quadrado entre 1 e 20 : "));
  while (lados > 20 || lados < 1) {
    lados = int.parse(lerTextoUsuario(
        "a quantidade inserida foi inválida, digite outro número entre 1 a 20: "));
  }
  for (int i = 0; i != lados; i++) {
    quadrado = quadrado + ("*" * lados) + "\n";
  }
  mostrarMensagemUsuario("$quadrado");
}
