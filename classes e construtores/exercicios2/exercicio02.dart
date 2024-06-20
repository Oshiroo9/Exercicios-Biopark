import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

class Livro {
  String nome = "";
  int numeroPaginas = 0;
  Livro(this.nome, this.numeroPaginas);
  List pessoasEmprestaramLivro = [];
}

class Pessoa {
  String nome = "";
  int idade = 0;
  Pessoa(this.nome, this.idade);
}

void main(List<String> args) {
  Pessoa pessoa1 = Pessoa("Marco", 16);
  Pessoa pessoa2 = Pessoa("Oshiro", 19);
  Pessoa pessoa3 = Pessoa("Jean", 17);
  Pessoa pessoa4 = Pessoa("Stan", 69);

  Livro livro1 = Livro("Azura a Bruxa", 74);
  Livro livro2 = Livro("DNA da Mentalidade", 224);
  Livro livro3 = Livro("Jojo's Bizarre Adventure's 6 Stone Ocean", 89);

  livro1.pessoasEmprestaramLivro.add(pessoa1.nome);
  livro2.pessoasEmprestaramLivro.add(pessoa2.nome);
  livro3.pessoasEmprestaramLivro.add(pessoa3.nome);
  livro3.pessoasEmprestaramLivro.add(pessoa4.nome);

  List listaLivros = [livro3, livro2, livro1];

  for (Livro liv in listaLivros) {
    if (liv == livro1) {
      mostrarMensagemUsuario(
          "Pessoas que emprestaram Azura a Bruxa: ${liv.pessoasEmprestaramLivro}");
    }
    if (liv == livro2) {
      mostrarMensagemUsuario(
          "Pessoas que emprestaram DNA da Mentalidade: ${liv.pessoasEmprestaramLivro}");
    }
    if (liv == livro3) {
      mostrarMensagemUsuario(
          "Pessoas que emprestaram Jojo's Bizarre Adventure's 6 Stone Ocean: ${liv.pessoasEmprestaramLivro}");
    }
  }
}
