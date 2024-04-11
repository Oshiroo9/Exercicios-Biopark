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
  int idade = int.parse(lerTextoUsuario("Quantos anos você tem?"));
  if (idade <=19){
    mostrarMensagemUsuario("Você é jovem");
  }
  if (idade >19 && idade<60){
    mostrarMensagemUsuario("Você está na meia idade");
    }
    if (idade >=60) {
      mostrarMensagemUsuario("Você é idoso");
    }
}
}