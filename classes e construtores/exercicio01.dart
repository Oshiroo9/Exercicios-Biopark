import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

class Funcionario {
  String nome = "";
  double salarioBruto = 0;
  Funcionario(this.nome, this.salarioBruto);
  double calcularSalarioLiquido() {
    return salarioBruto * 0.9;
  }
}

void main() {
  var funcionario = Funcionario("Marco", 12000);
  mostrarMensagemUsuario("Nome: ${funcionario.nome}");
  mostrarMensagemUsuario("Salário Bruto: ${funcionario.salarioBruto}");
  mostrarMensagemUsuario(
      "Salário Líquido: ${funcionario.calcularSalarioLiquido()}");
}
