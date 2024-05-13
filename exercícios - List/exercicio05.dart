import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List<String> itens = [];
  String item = lerTextoUsuario(
      "Qual item deseja consumir?\nCoca-cola Espuma\nHamburgue\nbatata frita\n");
  itens.add(item);
  String si = lerTextoUsuario("Deseja continuar?\nsim/nao: ");
  while (si == "sim") {
    itens.add(lerTextoUsuario(
        "Qual item deseja consumir?\nCoca-cola Espuma\nHamburgue\nbatata frita\n"));
    si = lerTextoUsuario("Deseja continuar?\nsim/nao: ");
  }
  itens.sort((a, b) => b.compareTo(a));
  mostrarMensagemUsuario("$itens");
}
