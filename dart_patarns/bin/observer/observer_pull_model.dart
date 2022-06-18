//--------------модель вытягивания--(pull model)--------------------------
void main() {
  Score score = Score();
  score.attach(Observer(score));
  score.attach(Observer(score));
  score.product = "кактус";
  score.notify();
}

//---------------------------------------------
abstract class AbsteactScore {
  List observers = [];

  void attach(AbstractObserver observer) {
    observers.add(observer);
  }

  void detach(AbstractObserver observer) {
    observers.remove(observer);
  }

  void notify() {
    for (AbstractObserver observer in observers) {
      observer.update();
    }
  }
}

class Score extends AbsteactScore {
  String? _product;

  String get product {
    return _product ?? "пусто";
  }

  set product(String val) {
    _product = val;
  }
}

//-------------------------------------------------------
abstract class AbstractObserver {
  void update();
}

class Observer extends AbstractObserver {
  String? _observerProduct;
  Score? _score;

  Observer(Score score) {
    _score = score;
  }
  @override
  void update() {
    _observerProduct = _score?.product;
    print(_observerProduct); ////-
  }
}
