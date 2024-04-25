import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int pergunta = 0;
  int tentativas = 5;
  int i = 5;
  for (i; i >= 0; i--) {
    if (i == 0) {
      break;
    }
    pergunta = int.parse(
        lerTextoUsuario("Insira um palpite\n Você tem $i tentativas: "));
    if (pergunta < 97) {
      mostrarMensagemUsuario("este número é MENOR que o correto");
    } else {
      mostrarMensagemUsuario("este número é MAIOR que o correto");
    }
    if (pergunta == 97) {
      break;
    }
  }
  if (pergunta == 97) {
    mostrarMensagemUsuario(
        "Você acertou!\n o número era $pergunta, você utilizou ${tentativas - i} tentativas.");
  } else {
    mostrarMensagemUsuario(
        "você não acertou o número e suas tentativas acabaram.");
  }
}
