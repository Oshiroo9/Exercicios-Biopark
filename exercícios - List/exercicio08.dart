import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  List X = [];
  String talvez = "sim";
  int dois = 0;
  double idade = 0;
  while (talvez == "sim") {
    idade = double.parse(lerTextoUsuario("Informe uma idade: "));
    X.add(idade);
    if (idade == 2) {
      dois += 1;
    }
    talvez = lerTextoUsuario("Deseja informar mais uma idade? sim/não");
  }
  if (X.contains(2)) {
    mostrarMensagemUsuario("A lista contém $dois número 2");
  } else {
    mostrarMensagemUsuario("Não há nenhum número 2 na lista.");
  }
  if (X.contains(5.5)) {
    mostrarMensagemUsuario("A lista contém o número 5.5");
  } else {
    mostrarMensagemUsuario("A lista não contém o número 5.5");
  }
  mostrarMensagemUsuario("Está é a lista: $idade");
}