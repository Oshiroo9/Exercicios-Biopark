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
  if (num1 == num2 || num1 == num3 || num2 == num3){
    num1 = int.parse(lerTextoUsuario("Por favor não repita números.\nVamos recomeçar, digite um número"));
    num2 = int.parse(lerTextoUsuario("Digite outro número"));
    num3 = int.parse(lerTextoUsuario("Digite outro número"));
  }
      if (num1 > num2 && num1 > num3){
      mostrarMensagemUsuario("O primeiro número é o maior");
    }
    if (num2 > num1 && num2 > num3){
      mostrarMensagemUsuario("O segundo número é o maior");
    }
    if (num3 > num2 && num3 > num2){
      mostrarMensagemUsuario("O terceiro número é o maior");
    }
}
}