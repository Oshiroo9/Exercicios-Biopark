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

void main() {
  int risco = int.parse(
      lerTextoUsuario("Qual o risco de 0 a 10 do ambiente hospitalar atual?"));
  if (risco <= 3) {
    mostrarMensagemUsuario("O risco atual está BAIXO");
     } else {
      if (risco > 3 && risco <= 6) {
       mostrarMensagemUsuario("O risco atual está MÉDIO");
         } else {
           if (risco < 9 && risco > 6)
               mostrarMensagemUsuario("O risco atual está ALTO");
               else {
                 mostrarMensagemUsuario("O risco atual está GRAVE");
               }
    }
  }
}

}