import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int dia = int.parse(lerTextoUsuario("Informe um dia: "));
  int mes = int.parse(lerTextoUsuario("Informe um mês: "));
  int ano = int.parse(lerTextoUsuario("Informe um ano: "));
  mostrarMensagemUsuario("$dia/$mes/$ano");
  DateTime dataInformada = DateTime(ano, mes, dia);
  DateTime dataAtual = DateTime.now();

  int diasEntre = dataAtual.difference(dataInformada).inDays;

  if (dataAtual.isAfter(dataInformada)) {
    mostrarMensagemUsuario(
        "A data informada é menor que a data atual.\nTendo uma diferença de $diasEntre dias.");
  } else if (dataAtual.isBefore(dataInformada)) {
    mostrarMensagemUsuario(
        "A data informada é maior que a data atual.\nTendo uma diferença de $diasEntre dias.");
  }
}