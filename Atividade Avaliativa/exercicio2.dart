import 'dart:js';

String lerTextoUsuario(String mensagem){
  return context.callMethod('prompt', [mensagem, '']) ?? '';
}

void mostrarMensagemUsuario(String mensagem){
   context.callMethod('alert', [mensagem, '']);
}
void main(){
  double total = 0;
  double produto = double.parse(lerTextoUsuario("1 - Arroz 9,00\n2 - Feijão 8,00\n3 - Café 12,00\nQual produto você vai querer?"));
  int pagamento = int.parse(lerTextoUsuario("Como você vai pagar?\n1 - DINHEIRO 15% DE DESCONTO\n2 - CARTÃO A VISTA 10% DE DESCONTO\n3 - CARTÃO EM 2 VEZES SEM JUROS\n4 - CARTÃO EM 6 VEZES 10% DE JUROS"));
  if (produto == 1 && pagamento == 1){
    total = 9 -((15 * 9)/100);
    mostrarMensagemUsuario("Esse é o total da sua compra: $total");
  }if (produto == 1 && pagamento ==2){
      total = 9 -((10 * 9)/100);
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 1 && pagamento ==3){
      total = 9;
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 1 && pagamento ==4){
      total = 9 +((10 * 9 * 6)/100);
      mostrarMensagemUsuario("O total da sua compra foi de: $total");
    }

    if (produto == 2 && pagamento == 1){
    total = 8 -((15 * 8)/100);
    mostrarMensagemUsuario("Esse é o total da sua compra: $total");
  }if (produto == 2 && pagamento ==2){
      total = 8 -((10 * 8)/100);
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 2 && pagamento ==3){
      total = 8;
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 2 && pagamento ==4){
      total = 8 +((10 * 8 * 6)/100);
      mostrarMensagemUsuario("O total da sua compra foi de: $total");
    }

    if (produto == 3 && pagamento == 1){
    total = 12 -((15 * 12)/100);
    mostrarMensagemUsuario("Esse é o total da sua compra: $total");
  }if (produto == 3 && pagamento ==2){
      total = 12 -((10 * 12)/100);
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 3 && pagamento ==3){
      total = 12;
      mostrarMensagemUsuario("Esse é o total da sua compra: $total");
    }if (produto == 3 && pagamento ==4){
      total = 12 +((10 * 12 * 6)/100);
      mostrarMensagemUsuario("O total da sua compra foi de: $total");
    }
    }