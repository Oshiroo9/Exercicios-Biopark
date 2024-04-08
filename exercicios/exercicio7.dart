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
    int nota2 = int.parse(lerTextoUsuario("Quantas notas de 2 reais tem na gaveta?"));
    int nota5 = int.parse(lerTextoUsuario("Quantas notas de 5 reais tem na gaveta?"));
    int nota10 = int.parse(lerTextoUsuario("Quantas notas de 10 reais tem na gaveta?"));
    int nota20 = int.parse(lerTextoUsuario("Quantas notas de 20 reais tem na gaveta?"));
    int nota50 = int.parse(lerTextoUsuario("Quantas notas de 50 reais tem na gaveta?"));
    int nota100 = int.parse(lerTextoUsuario("Quantas notas de 100 reais tem na gaveta?"));
    int total = (nota2*2)+(nota5*5)+(nota10*10)+(nota20*20)+(nota50*50)+(nota100*100);
    mostrarMensagemUsuario("O total de dinheiro que temos é de $total");
}
}