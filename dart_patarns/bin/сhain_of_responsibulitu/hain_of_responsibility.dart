void main() {
  Drink coffee = Coffee();
  Drink tea = Tea();

  coffee.drink = tea;
  coffee.buy(3);
  coffee.buy(2);
}

//-----------------------------------
abstract class Drink {
  Drink? drink;
  void buy(int i);
}

class Tea extends Drink {
  @override
  void buy(int i) {
    if (i == 1) {
      print("зеленый чай");
    } else if (drink != null) {
      drink?.buy(i);
    }
  }
}

//----------------------------------------
class Coffee extends Drink {
  @override
  void buy(int i) {
    if (i == 2) {
      print("кофе экспрессо");
    } else if (drink != null) {
      drink?.buy(i);
    }
  }
}
