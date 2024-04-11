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
// impar (variavel %2 !=0)
// par (variavel %2 ==0)
void main(){
  int idade = int.parse(lerTextoUsuario("Informe sua idade"));
  if (idade >= 18){
    mostrarMensagemUsuario("Você é maior de idade");
  } else {
    mostrarMensagemUsuario("Você é menor de idade");
  } if (idade %2 !=0){
    mostrarMensagemUsuario("Sua idade é um número ímpar");
  }else {
    mostrarMensagemUsuario("Sua idade é um número par");
  }
}
}