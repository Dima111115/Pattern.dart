//Мост-отдиление абстракции от реализации
void main() {
  Taxi taxi = Human(Mator());
  taxi.drive();

  taxi = Human(Wheels());
  taxi.drive();
}

abstract class Taxi {
  Car? _detailCar;

  Taxi(Car detail) {
    // конструктор
    _detailCar = detail;
  }
  void drive() {
    _detailCar?.drive();
  }
}

class Human extends Taxi {
  Human(Car detail) : super(detail);

  @override
  void drive() {
    super.drive();
    //выполнить в апстрактном классе,-очищаем наш класс от реализации других классов

    print("человек слушает музыку");
  }
}

//-------------------------------------------
abstract class Car {
  void drive();
}

class Mator extends Car {
  @override
  void drive() {
    print("мотор гудит");
  }
}

//-------------------
class Wheels extends Car {
  @override
  void drive() {
    print("колеса крутятся");
  }
}
