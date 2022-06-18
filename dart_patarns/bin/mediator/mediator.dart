void main() {
  Madiator madiator = Madiator();
  Stock1 stock1 = Stock1(madiator);
  Stock2 stock2 = Stock2(madiator);

  madiator.stock1 = stock1;
  madiator.stock2 = stock2;

  stock1.send("сос база 1 переполнена");
  stock2.send("сос база 2 пустая");
}

//-----------------------------------------------
abstract class AbstractMadiator {
  void send(String m, AbstractStock abstractStock);
}

class Madiator extends AbstractMadiator {
  Stock1? stock1;
  Stock2? stock2;
  @override
  void send(String m, AbstractStock abstractStock) {
    if (stock1 == abstractStock) {
      stock2?.message(m);
    } else {
      stock1?.message(m);
    }
  }
}

//-------------------------------------------------
abstract class AbstractStock {
  AbstractMadiator? _madiator;

  AbstractStock(Madiator madiator) {
    _madiator = madiator;
  }
}

class Stock1 extends AbstractStock {
  Stock1(Madiator madiator) : super(madiator);

  void send(String m) {
    _madiator?.send(m, this);
  }

  void message(String m) {
    print(m);
  }
}

//---------------------------------------
class Stock2 extends AbstractStock {
  Stock2(Madiator madiator) : super(madiator);

  void send(String m) {
    _madiator?.send(m, this);
  }

  void message(String m) {
    print(m);
  }
}
