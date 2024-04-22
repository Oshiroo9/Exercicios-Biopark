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
  int menor = 0;
  int maior = 0;
  for (int i = 1; i <= 8; i++) {
    num = int.parse(lerTextoUsuario("informe um número: "));
    if (i == 1) {
      menor = num;
    } else {
      if (num < menor) {
        menor = num;
      }
    }
    if (num > maior) {
      maior = num;
    }
  }
  mostrarMensagemUsuario(" esse é o menor: $menor\n e esse é o maior: $maior");
}