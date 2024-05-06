import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

void main(List<String> args) {
  int idade = 0;
  int maior = 0;
  int menor = 0;
  double crianca = 0;
  double adolescentes = 0;
  double adulto = 0;
  double velho = 0;
  double morto = 0;
  int contagem = 0;
  idade = int.parse(lerTextoUsuario("informe a sua idade: "));
  if (idade >= 0 && idade <= 17) {
    crianca = crianca + 1;
  } else if (idade >= 18 && idade <= 35) {
    adolescentes = adolescentes + 1;
  } else if (idade >= 36 && idade <= 50) {
    adulto += 1;
  } else if (idade >= 51 && idade <= 65) {
    velho += 1;
  } else if (idade >= 66) {
    morto += 1;
  }
  maior += idade;
  menor += idade;
  contagem += 1;
  String talvez =
      lerTextoUsuario("Deseja informar mais uma pessoa?\nsim ou nao: ");
  while (talvez == "sim") {
    idade = int.parse(lerTextoUsuario("informe a sua idade: "));
    contagem += 1;
    if (idade > maior) {
      maior = idade;
    } else if (idade < menor) {
      menor = idade;
    }
    if (idade >= 0 && idade <= 17) {
      crianca = crianca + 1;
    } else if (idade >= 18 && idade <= 35) {
      adolescentes = adolescentes + 1;
    } else if (idade >= 36 && idade <= 50) {
      adulto += 1;
    } else if (idade >= 51 && idade <= 65) {
      velho += 1;
    } else if (idade >= 66) {
      morto += 1;
    }
    talvez = lerTextoUsuario("Deseja informar mais uma pessoa?\nsim ou nao: ");
  }
  mostrarMensagemUsuario("A menor idade é $menor e a maior é $maior");
  mostrarMensagemUsuario(
      "A porcentagem de pessoas com 0-17 anos é de: ${(crianca * 100) / contagem}\nA porcentagem de pessoas com 18-35 anos é de: ${(adolescentes * 100) / contagem}\nA porcentagem de pessoas com 36-50 anos é de: ${(adulto * 100) / contagem}\nA porcentagem de pessoas com 51-65 anos é de: ${(velho * 100) / contagem}\nA porcentagem de pessoas com mais de 65 anos é de: ${(morto * 100) / contagem}");
}
