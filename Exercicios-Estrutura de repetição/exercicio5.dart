import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int a = 0;
  int b = 0;
  int c = 0;
  int pergunta = 0;
  for (int i = 1; i <= 50; i++) {
    pergunta = int.parse(lerTextoUsuario("qual elevador você mais usa?\n1-A\n2-B\n3-C\n"));
    if (pergunta == 1) {
       a = a + 1;
    }
    if (pergunta == 2) {
      b = b + 1;
    }
    if (pergunta == 3) {
      c= c + 1;
    }
  }mostrarMensagemUsuario(
        "$a usam o elevador A\n$b usam o elevador B\n$c usam o elevador C");
}
