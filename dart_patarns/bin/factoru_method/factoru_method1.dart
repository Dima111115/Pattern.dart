void main() {
  AbstractFactory af = FactoryWindow();
  AbstractProduct window1 = af.farm(6, 5);
  print(window1.productInfo());
}

abstract class AbstractFactory {
  AbstractProduct farm(int x, int y);
}

class FactoryWindow extends AbstractFactory {
  @override
  AbstractProduct farm(int x, int y) {
    return Window(x, y);
  }
}

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
