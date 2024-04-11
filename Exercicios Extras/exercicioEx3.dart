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
  String conceito = lerTextoUsuario("Qual o conceito do aluno?");
  if (conceito == "A"){
    mostrarMensagemUsuario("O aluno está em aproveitamento PLENO");
  }else{
    if (conceito == "B"){
      mostrarMensagemUsuario("O aluno está em aproveitamento PARCIALMENTE PLENO");
    }else{
      if (conceito == "C"){
        mostrarMensagemUsuario(" O aluno está em aproveitamento SUFICIENTE,PORÉM SEM GARANTIA DE CONTINUIDADE NOS ESTUDOS");
      }else{
        if (conceito == "D"){
        mostrarMensagemUsuario("O aluno está em aproveitamento INSUFICIENTE");
        }
      }
    }
  }
}
}