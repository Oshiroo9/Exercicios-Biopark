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
  double macarrao = 9.99;
  double feijao = 10.99;
  double cafe = 14.99;
  int item = int.parse(lerTextoUsuario("1 - Macarrão 500kg 9,99\n2 - Feijão 1Kg 10,99\n3 - Café 14,99 . Qual dos itens você vai querer?(Você só tem dinheiro para um deles)"));
  double unidade = double.parse(lerTextoUsuario("Quantas unidades?"));
  double total = 0;
  double totalreal = 0;
  if  (item == 1){
    total = macarrao * unidade;
  }
  if (item == 2){
    total = feijao * unidade;
  }
  if (item == 3){
    total = cafe * unidade;
  }
  if (unidade >5){
  totalreal = total - ((total / 100) * 10);
  mostrarMensagemUsuario("O total da compra foi de $totalreal");
  } else{
    mostrarMensagemUsuario("O total da compra foi de $total");
  }

}
}