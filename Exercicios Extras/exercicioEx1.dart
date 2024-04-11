import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
import 'dart:js';

String lerTextoUsuario(String mensagem) {
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem) {
  context.callMethod('alert', [mensagem, '']);
}

//idade > 18
//idade < 18
//idade >= 18
//idade <= 18
//idade == 18 igual
//idade != 18 diferente
void main(){
  int num1 = int.parse(lerTextoUsuario("Informe um número"));
  int num2 = int.parse(lerTextoUsuario("Informe outro número"));
  int num3 = int.parse(lerTextoUsuario("Informe outro número"));
  int soma = num1 + num2;
  if (num3 > soma){
    mostrarMensagemUsuario("A soma do primeiro número com o segundo é menor que o terceiro número");
  }
  if (num3 < soma){
    mostrarMensagemUsuario("A soma do primeiro número com o segundo é maior que o terceiro número");
  }
  if (num3 == soma){
    mostrarMensagemUsuario("A soma do primeiro número com o segundo é igual ao terceiro número");
  }
}
}