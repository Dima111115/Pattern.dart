void main() {
  Human socks = Socks();

  Pants jeans = Jeans();
  Pants shorts = Shorts();

  jeans.clothes = socks;
  shorts.clothes = jeans;
  shorts.dress();
}

//--------------------
abstract class Human {
  void dress();
}

class Socks extends Human {
  @override
  void dress() {
    print("одеваем носки");
  }
}

//-----------------------
abstract class Pants extends Human {
  Human? _clothes;

  set clothes(Human val) {
    _clothes = val;
  }

  @override
  void dress() {
    if (_clothes != null) {
      _clothes?.dress();
    }
  }
}

class Jeans extends Pants {
  @override
  void dress() {
    super.dress();

    print("одеваем джинсы");
  }
}

//-----------------
class Shorts extends Pants {
  @override
  void dress() {
    super.dress();
    print("одеваем шорты");
    shorts2();
  }

  void shorts2() {
    print("-пляжные шорты");
  }
}
