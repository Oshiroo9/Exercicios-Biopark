import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List idade = [];
  double soma = 0;
  for (int i = 0; i <= 6; i++) {
    int nume = int.parse(lerTextoUsuario("Informe um número: "));
    soma += nume;
    idade.add(nume);
  }
  mostrarMensagemUsuario("essa é a terceira idade informada: ${idade[2]}");
  idade.sort();
  mostrarMensagemUsuario("Essa é a pessoa mais velha: ${idade.last}");
  mostrarMensagemUsuario("Essa é a pessoa mais nova: ${idade.first}");
  mostrarMensagemUsuario("Esse é a média de idade das pessoas: ${soma / 7}");
}
