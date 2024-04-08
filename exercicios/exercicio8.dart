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
  mostrarMensagemUsuario("Informe um horário parar transformarmos em segundos");
  int horas = int.parse(lerTextoUsuario("Quantas horas?"));
  int minutos = int.parse(lerTextoUsuario("Quantos minutos?"));
  int segundos = int.parse(lerTextoUsuario("Quantos segundos?"));
  int segundostotal = (horas*3600)+(minutos*60)+segundos;
  mostrarMensagemUsuario("O total de segundos é de $segundostotal");
}
}