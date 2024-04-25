import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int num1 = int.parse(lerTextoUsuario("informe um numero de 1 a 10"));
  int num2 = int.parse(lerTextoUsuario("até qual algarismo multiplicador você deseja calcular?"));
  for (int i = 1; i <= num2; i++) {
    int resultado = num1 * i;
    mostrarMensagemUsuario("$resultado");
  }
}
