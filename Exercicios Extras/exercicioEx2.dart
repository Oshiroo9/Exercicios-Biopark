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
  int anos = int.parse(lerTextoUsuario("A quantos anos você está casado?"));
  if (anos == 25){
    mostrarMensagemUsuario("Você está comemorando Bodas de Prata");
  }else{
  if (anos == 40){
    mostrarMensagemUsuario("Você está comemorando Bodas de Esmeralda");
  }else{
  if (anos == 50){
    mostrarMensagemUsuario("Você está comemorando Bodas de Ouro");
  }else{
    mostrarMensagemUsuario("Você não está comemorando Bodas");
  }}}
}
}