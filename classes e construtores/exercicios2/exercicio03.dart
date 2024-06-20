import 'dart:io';

String lerTextoUsuario(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!;
}

void mostrarMensagemUsuario(String mensagem) {
  print(mensagem);
}

class Employee {
  String jogador = "";
  String cor = "";
  List<String> itenss = [];
}

class itens {
  int price = 0;
  String name = "";
  itens();
}

void main(List<String> args) {
  String sim = "sim";
  int money = 60;
  //itens preço
  itens moneyy = itens();
  moneyy.price = 60;
  moneyy.name = 'Money';
  itens item1 = itens();
  item1.price = 30;
  item1.name = "BoomBox";
  itens item2 = itens();
  item2.price = 12;
  item2.name = "Shovel";
  itens item3 = itens();
  item3.name = "Flashlight";
  item3.price = 5;
  itens item4 = itens();
  item4.name = "Pro-Flashlight";
  item4.price = 15;
  itens item5 = itens();
  item5.name = "Stun Granade";
  item5.price = 18;
  itens item6 = itens();
  item6.name = "Toilet";
  item6.price = 50;
  itens item7 = itens();
  item7.name = "Walkie-Tokie";
  item7.price = 10;
  List items = [];

  items.add(item1);
  items.add(item2);
  items.add(item3);
  items.add(item4);
  items.add(item5);
  items.add(item6);
  items.add(item7);

  //intro
  List employers = [];
  String talvez = "yes";
  List top = [];
  while (sim == "sim") {
    Employee newEmployee = Employee();
    newEmployee.jogador =
        lerTextoUsuario("THE COMPANY NEEDS YOU!\nHow are you called?: ");
    newEmployee.cor = lerTextoUsuario("What are your favorite colour?: ");
    while (talvez == "yes") {
      String item = lerTextoUsuario(
          "You have 60 money, what do you want to buy?\n${item1.name} ${item1.price}\n${item2.name} ${item2.price}\n${item3.name} ${item3.price}\n${item4.name} ${item4.price}\n${item5.name} ${item5.price}\n${item6.name} ${item6.price}\n${item7.name} ${item7.price}\n\nYour ${moneyy.name} ${moneyy.price}\n");
      itens shop = itens();
      if (shop.name == item) {
        money = money - shop.price;
        Employee ite = Employee();
        ite.itenss.add(shop.name);
        top = ite.itenss;
        talvez =
            lerTextoUsuario("Do you want to visit the shop again? yes/no: ");
      }
    }
    mostrarMensagemUsuario("Money ${moneyy.price}\nIventory${top}");
    sim = lerTextoUsuario("oi");
  }
}
