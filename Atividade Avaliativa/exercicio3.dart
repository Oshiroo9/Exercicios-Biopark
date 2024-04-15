import 'dart:js';

String lerTextoUsuario(String mensagem){
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem){
   context.callMethod('alert', [mensagem, '']);
}
void main(){
  String nome = lerTextoUsuario("Insira o seu nome de usuário");
  String senha = lerTextoUsuario("Insira a sua senha");
  if (nome == "admin" && senha == "admin123"){
    mostrarMensagemUsuario("Acesso concedido");
  }if (nome != "admin" && senha == "admin123"){
      mostrarMensagemUsuario("Nome de usuário incorreto");
  }if (nome == "admin" && senha != "admin123"){
    mostrarMensagemUsuario("Senha incorreta");
  }if (nome != "admin" && senha != "admin123"){
    mostrarMensagemUsuario("Nome de usuário e senha incorretos");
  }
}