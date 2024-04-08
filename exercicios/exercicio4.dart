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

import 'dart:js';

String lerTextoUsuario(String mensagem){
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem){ 
   context.callMethod('alert', [mensagem, '']);
}
void main(){
  String nome = lerTextoUsuario("qual o seu nome completo?");
  String rua = lerTextoUsuario("em que rua você mora?");
  String numero = lerTextoUsuario("qual o número da sua casa?");
  String bairro = lerTextoUsuario("qual o nome do seu bairro?");
  String cidade = lerTextoUsuario("qual o nome da cidade onde você mora?");
  String estado = lerTextoUsuario("qual o seu estado?");
  mostrarMensagemUsuario("$nome, mora na rua $rua número $numero, no bairro $bairro, na cidade de $cidade, $estado.");
}
}