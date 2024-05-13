import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List<String> lista = ["oi", "ola", "hello", "jean", "que"];
  String buscar = lerTextoUsuario("Digite uma palavra");
  String palavra = "";
  if (lista.contains("$buscar")) {
    mostrarMensagemUsuario("A lista contém essa palavra");
    palavra =
        lerTextoUsuario("Digite uma palavra para substituir a que encontrou");
  }
  lista.remove("$buscar");
  lista.add("$palavra");
  mostrarMensagemUsuario("$lista");
}

