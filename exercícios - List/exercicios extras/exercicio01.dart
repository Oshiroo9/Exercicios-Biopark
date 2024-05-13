import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int i = int.parse(lerTextoUsuario("Quantas pessoas serão entrevistadas"));
  List entrevistados = [];
  double slay = 0;
  double soma = 0;
  int percentual = 0;
  for (int x = 1; x <= i; x++) {
    slay = double.parse(lerTextoUsuario("Qual o seu sálario?"));
    if (slay <= 1500) {
      percentual += 1;
    }
    soma += slay;
    entrevistados.add(slay);
  }
  entrevistados.sort();
  mostrarMensagemUsuario("Esse é o maior salário: ${entrevistados.last}");
  mostrarMensagemUsuario("Esse é o menor salário: ${entrevistados.first}");
  mostrarMensagemUsuario("Essa é a média dos salários: ${soma / i}");
  mostrarMensagemUsuario(
      "Esse é o percentual de salários abaixo de 1.500: ${(100 * percentual) / i}");
}
