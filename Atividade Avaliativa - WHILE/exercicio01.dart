import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int numero = 0;
  int contagem = 0;
  int soma = 0;
  numero = int.parse(lerTextoUsuario("Informe um número: "));
  if (numero > 0) {
    soma = soma + numero;
    contagem += 1;
  }
  while (numero > 0) {
    numero = int.parse(lerTextoUsuario("Informe outro número: "));
    if (numero < 0) {
      break;
    }
    soma = soma + numero;
    contagem += 1;
  }
  mostrarMensagemUsuario(
      "Essa é a soma de todos os números: $soma.\nEssa é a média desses números: ${soma / contagem}");
}
