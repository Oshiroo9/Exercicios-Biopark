import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  String dia = lerTextoUsuario("Qual dia da semana gostaria sua consulta? : ");
  String hora = lerTextoUsuario("Que horario? : ");
  while (dia == "segunda-feira" || dia == "quarta-feira") {
    dia = lerTextoUsuario("O médico não atenderá esse dia, escolha outro: ");
  }
  if (dia == "domingo" ||
      dia == "terça-feira" ||
      dia == "quinta-feira" ||
      dia == "sábado" ||
      dia == "sexta-feira") {
    mostrarMensagemUsuario(
        "Sua consulta foi agendada para $dia as $hora horas");
  }
}
