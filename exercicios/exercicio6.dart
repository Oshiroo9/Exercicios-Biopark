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
  double peso = double.parse(lerTextoUsuario("Qual seu peso em kilogramas?").replaceAll(",","."));
  double altura = double.parse(lerTextoUsuario("Qual sua altura em metros?").replaceAll(",","."));
  double IMC = peso/(altura*altura);
  mostrarMensagemUsuario("A índice de massa córporea(IMC) do seu corpo é de $IMC");
}
}