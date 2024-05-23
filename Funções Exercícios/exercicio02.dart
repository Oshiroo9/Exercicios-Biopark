import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

pedirNome() {
  List<String> nomes = [];
  int i = int.parse(lerTextoUsuario("Quantas pessoas serão informadas?"));
  for (int x = 1; x <= i; x++) {
    String nome = lerTextoUsuario("Informe um nome: ");
    nomes.add(nome);
  }
  mostrarMensagemUsuario("$nomes");
}

void main(List<String> args) {
  pedirNome();
}
