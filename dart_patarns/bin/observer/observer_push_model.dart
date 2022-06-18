//--------------модель проталкивания--(push model)-------------------
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
      observer.update(product);
    }
  }

  String get product;
  set product(String val);
}

class Score extends AbsteactScore {
  String? _product;

  @override
  String get product {
    return _product ?? "пусто";
  }

  @override
  set product(String val) {
    _product = val;
  }
}

//-------------------------------------------------------
abstract class AbstractObserver {
  void update(String product);
}

class Observer extends AbstractObserver {
  String? _observerProduct;
  Score? _score;

  Observer(Score score) {
    _score = score;
  }
  @override
  void update(String product) {
    _observerProduct = product;
    print(_observerProduct); ////-
    print(_score?.product); ////-
  }
}
