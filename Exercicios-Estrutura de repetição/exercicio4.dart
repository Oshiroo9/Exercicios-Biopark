import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int num = 0;
  for (int i = 1; i <= 6; i++) {
    num += int.parse(lerTextoUsuario("informe um numero"));
  }
  double media = num / 6;
  mostrarMensagemUsuario("a soma dos números é $num, e a média é de $media");
}