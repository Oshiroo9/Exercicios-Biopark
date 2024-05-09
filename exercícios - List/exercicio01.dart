import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List<String> nomes = [];
  for (int i = 1; i <= 5; i++) {
    nomes.add(lerTextoUsuario("Informe um nome"));
  }
  mostrarMensagemUsuario("o penúltimo elemento da lista: ${nomes[3]}");
  nomes.removeAt(0);
  mostrarMensagemUsuario("lista sem o primeiro elemento: $nomes");
  nomes.sort();
  mostrarMensagemUsuario("lista em ordem alfabética: $nomes");
  if (nomes.contains("paulo")) {
    mostrarMensagemUsuario("a lista tem o nome paulo");
  } else {
    mostrarMensagemUsuario("a lista não contém o nome paulo");
  }
}
