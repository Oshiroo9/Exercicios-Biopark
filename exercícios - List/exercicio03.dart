import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  double soma = 0;
  List notas = [7, 5.2, 10, 9.2, 6.3, 7.5];
  for (int i = 0; i <= 5; i++) {
    soma += notas[i];
  }
  mostrarMensagemUsuario("soma ${soma / 6}");
}
