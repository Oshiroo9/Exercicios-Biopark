import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

double funcaomedia(n1, n2, n3) {
  double media = (n1 + n2 + n3) / 3;
  return media;
}

double dividir(numerodividido, dividando) {
  double conta = numerodividido / dividando;
  return conta;
}

void main(List<String> args) {
  double numerodividido =
      double.parse(lerTextoUsuario("Digite um número para ser dividido: "));
  double dividando = double.parse(
      lerTextoUsuario("Digite o número para dividir o anterior: "));

  mostrarMensagemUsuario(
      "Esse é o resultado: ${dividir(numerodividido, dividando)}");
}
