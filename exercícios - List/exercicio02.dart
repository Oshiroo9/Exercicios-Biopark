import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List lista = [];
  int soma = 0;
  for (int i = 1; i <= 5; i++) {
    int top = int.parse(lerTextoUsuario("informe um número"));
    soma += top;
    lista.add(top);
  }
  lista.sort();
  mostrarMensagemUsuario("esse é o maior número da lista: ${lista[4]}");
  mostrarMensagemUsuario("essa é a soma de todos os números da lista: $soma");
  lista.removeAt(0);
  mostrarMensagemUsuario("essa é a lista sem o menor número: $lista");
}
