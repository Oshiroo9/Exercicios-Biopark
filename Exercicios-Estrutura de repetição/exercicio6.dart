import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  String nome = "";
  String resultado = '';
  int num = int.parse(lerTextoUsuario("informe um número positivo: "));
  for (int i = 1; i <= num; i++) {
    nome = lerTextoUsuario("escreva um nome: ");
    resultado = resultado + nome + " ";
  }
  mostrarMensagemUsuario("${resultado}");
}
