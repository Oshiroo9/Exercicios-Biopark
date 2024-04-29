import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  String conta = "";
  String item = lerTextoUsuario(
      "Bem vindo a ULTRALANCHES\nPrime Burguer\nAngelic Fries\nV1 Combo Kids\nQual item você vai querer?");
  if (item == "Prime Burguer") {
    conta += "Prime Burguer";
  }
  if (item == "Angelic Fries") {
    conta += "Angelic Fries";
  }
  if (item == "V1 Combo Kids") {
    conta += "V1 Combo Kids";
  }
  String sim = lerTextoUsuario("Deseja algo mais?\n sim | nao\n");
  while (sim == "sim") {
    String item = lerTextoUsuario(
        "--ULTRALANCHES--\NPrime Burguer\nAngelic Fries\nV1 Combo Kids\nQual item você vai querer?");
    if (item == "Prime Burguer") {
      conta += " e " + "Prime Burguer";
    }
    if (item == "Angelic Fries") {
      conta += " e " + "Angelic Fries";
    }
    if (item == "V1 Combo Kids") {
      conta += " e " + "V1 Combo Kids";
    }
    sim = lerTextoUsuario("Deseja algo mais?\n sim | nao\n");
  }
  mostrarMensagemUsuario("Esse é seu pedido:\n$conta");
}
