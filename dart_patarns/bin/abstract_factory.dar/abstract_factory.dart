void main() {
  // AbstractFactory af = FactoryWindow();//создаем фабрику и приводим ее к абстракции
  //  Client client = Client(af);
  Client client = Client(FactoryWindow());

  print(client.run()!.productInfo());
}

class Client {
  AbstractProduct? _window1;

  Client(AbstractFactory af) {
    _window1 = af.farm(6, 5);
  }
  AbstractProduct? run() {
    return _window1;
  }
}

//-----------------------------------------------фабрика--------------------
abstract class AbstractFactory {
  AbstractProduct farm(int x, int y);
}

class FactoryWindow extends AbstractFactory {
  @override
  AbstractProduct farm(int x, int y) {
    return Window(x, y);
  }
}

//----------------------------------------------------изделие----------------
class Window extends AbstractProduct {
  int x = 0;
  int y = 0;

  Window(this.x, this.y);

  @override
  String productInfo() {
    return "белое окно шириной $y и высотой $x";
  }
}

abstract class AbstractProduct {
  String productInfo();
}
