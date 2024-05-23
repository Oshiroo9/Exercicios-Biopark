import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

pedirNumero(int numero) {
  if (numero == 0) {
    mostrarMensagemUsuario("esse número é nulo");
  } else if (numero < 0) {
    mostrarMensagemUsuario("esse número é negativo");
  } else {
    mostrarMensagemUsuario("esse número é positivo");
  }
}

void main(List<String> args) {
  int numero = int.parse(lerTextoUsuario("Informe um número"));
  pedirNumero(numero);
}
