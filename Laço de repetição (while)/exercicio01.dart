import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int senha = 0;
  senha = int.parse(lerTextoUsuario("Insira a senha: "));
  while (senha != 2002) {
    senha = int.parse(lerTextoUsuario("Senha inválida! Tente novamente: "));
  }
  mostrarMensagemUsuario("Acesso permitido.");
}
