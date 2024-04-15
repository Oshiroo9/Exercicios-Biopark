import 'dart:js';

String lerTextoUsuario(String mensagem){
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem){
   context.callMethod('alert', [mensagem, '']);
}
void main(){
  String sexo = lerTextoUsuario("Qual o seu sexo?");
  String civil = lerTextoUsuario("Qual seu estado civil?");
  if (sexo == "feminino" && civil == "casada") {
    int anos = int.parse(lerTextoUsuario("Você está casada a quantos anos?"));
  }
}