import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

pedirIdade() {
  List<String> idades = [];
  for (int i = 1; i <= 5; i++) {
    String idade = lerTextoUsuario("Informe uma idade: ");
    idades.add(idade);
  }
  mostrarMensagemUsuario("essas foram as idades informadas: $idades");
}

void main(List<String> args) {
  pedirIdade();
}
