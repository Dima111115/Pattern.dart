void main() {
  Client client = Client(FactoryWindow());
  print(client.run());

  Client clientss = Client(FactoryWindow2());
  print(clientss.run());
}

class Client {
  AbstractProduct? _window1;
  AbstractProduct2? _penColors;

  Client(AbstractFactory af) {
    _window1 = af.farm();
    _penColors = af.farm2();
  }
  String run() {
    return "${_window1?.productInfo()} ручка ${_penColors?.productInfo2()} цвет";
  }
}

//------------------------------------------------------фабрика1 рехаo---------
abstract class AbstractFactory {
  AbstractProduct farm();
  AbstractProduct2 farm2();
}

//-------------------------------------------------
class FactoryWindow extends AbstractFactory {
  @override
  AbstractProduct farm() {
    return WindowRehau1();
  }

  @override
  AbstractProduct2 farm2() {
    return PenRehau2();
  }
}

//-------------------------------------------------------окно 1 рехао----------
abstract class AbstractProduct {
  String productInfo();
}

//--------------------------------------------------
class WindowRehau1 extends AbstractProduct {
  int x = 7;
  int y = 8;

  // WindowRehau1();

  @override
  String productInfo() {
    return "белое окно шириной $y и высотой $x";
  }
}

//------------------------------------------------------ручка 1 рехао----------
class PenRehau2 extends AbstractProduct2 {
  String penColors = "белый";

  // PenRehau2();

  @override
  String productInfo2() {
    return penColors;
  }
}

abstract class AbstractProduct2 {
  String productInfo2();
}

//-------------------------------------------------------------фабрика 2 века--
class FactoryWindow2 extends AbstractFactory {
  @override
  AbstractProduct farm() {
    return WindowVeka1();
  }

  @override
  AbstractProduct2 farm2() {
    return PenVeka2();
  }
}

//----------------------------------------------------------------окно 2 века--
class WindowVeka1 extends AbstractProduct {
  int x = 2;
  int y = 3;

  WindowVeka1();

  @override
  String productInfo() {
    return "белое окно шириной $y и высотой $x";
  }
}

//---------------------------------------------------------------ручка 2 века--
class PenVeka2 extends AbstractProduct2 {
  String penColors = "синий";

  PenVeka2();

  @override
  String productInfo2() {
    return penColors;
  }
}
