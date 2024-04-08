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
  mostrarMensagemUsuario("A média da sua escola é 7,0 , você fez duas provas valendo 10,0");
  double nota1 = double.parse(lerTextoUsuario("Qual foi a sua nota na primeira prova?"));
  double nota2 = double.parse(lerTextoUsuario("Qual foi a sua nota na segunda prova?"));
  double media = (nota1+nota2)/2;
  if (media >=7){
    mostrarMensagemUsuario("Sua média foi $media, você foi aprovado!");
  }
  else {
    mostrarMensagemUsuario("Sua média foi $media, você não foi aprovado");
  }
}
}