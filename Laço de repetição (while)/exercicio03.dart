import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int num = 0;
  int i = 0;
  String sim = "";
  num = int.parse(lerTextoUsuario("informe um número: "));
  i++;
  sim = lerTextoUsuario("Deseja continuar?\nsim\nnao  ");
  while (sim == "sim") {
    num += int.parse(lerTextoUsuario("insira um número: "));
    sim = lerTextoUsuario("Deseja continuar?\nsim\nnao  ");
    i++;
  }
  mostrarMensagemUsuario(
      "a soma dos números é de $num e a média é de ${num / i}");
}
