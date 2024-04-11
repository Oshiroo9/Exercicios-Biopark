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
void main (){
  String artigo = lerTextoUsuario("Você escreveu um artigo?");
  String evento = lerTextoUsuario("Você participou de um evento?");
  if (artigo == "sim" || evento == "sim"){
    mostrarMensagemUsuario("Você está apto para se formar");
  }else{
    mostrarMensagemUsuario("Você não está apto para se formar");
  }
}
}