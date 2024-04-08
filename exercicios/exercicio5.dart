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

String lerTextoUsuario(String mensagem){
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem){ 
   context.callMethod('alert', [mensagem, '']);
}
void main(){
  int num1 = int.parse(lerTextoUsuario("escreva um número"));
  int num2 = int.parse(lerTextoUsuario("escreva outro número"));
  int num3 = int.parse(lerTextoUsuario("escreva mais um número"));
  int resultado = num1+num2+num3;
  mostrarMensagemUsuario("a soma de todos os números é $resultado");
}
}