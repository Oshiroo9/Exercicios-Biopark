import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int cin = 0;
  int cem = 0;
  int duz = 0;
  for (int i = 1; i <= 10; i++) {
    int num = int.parse(lerTextoUsuario("informe um número"));
    if (num <= 50 && num >= 1) {
      cin += 1;
    }
    if (num > 50 && num <= 100) {
      cem += 1;
    }
    if (num > 100 && num <= 200) {
      duz += 1;
    }
  }
  mostrarMensagemUsuario(
      "$cin estão na casa de 1 a 50.\n$cem estão na casa do 50 a 100.\n$duz estão na casa do 100 a 200.");
}
