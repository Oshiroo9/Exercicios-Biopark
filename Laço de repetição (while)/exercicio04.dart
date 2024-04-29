import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  double nota1 = 0;
  double nota2 = 0;
  nota1 = double.parse(lerTextoUsuario("Digite a primeira nota: "));
  while (nota1 >= 10 || nota1 <= 0) {
    nota1 = double.parse(lerTextoUsuario("Valor ínvalido! Tente novamente: "));
  }
  nota2 = double.parse(lerTextoUsuario("Digite a segunda nota: "));
  while (nota2 >= 10 || nota2 <= 0) {
    nota2 = double.parse(lerTextoUsuario("Valor ínvalido! Tente novamente: "));
  }
  mostrarMensagemUsuario("MÉDIA: ${(nota1 + nota2) / 2}");
}
