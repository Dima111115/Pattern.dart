void main() {
  FlyweghtFactory flyweghtFactory = FlyweghtFactory();

  Flyweght flyweght = flyweghtFactory.create("гор1ы"); //есть ли класс горы
  flyweght.setPicture(325566);

  flyweght = flyweghtFactory.create("луга"); //есть ли класс луга
  flyweght.setPicture(200005);

  flyweght = Space();
  flyweght.setPicture(8666826);

  print(flyweghtFactory.landscapes);
}

//----------------------------------
class FlyweghtFactory {
  Map<String, Landscape> landscapes = {
    "горы": Landscape(),
    "леса": Landscape(),
    "реки": Landscape()
  };

  Flyweght create(String key) {
    if (!landscapes.containsKey(key)) {
      landscapes[key] = Landscape();
    }
    return landscapes[key] as Flyweght;
  }
}

//-------------------------
abstract class Flyweght {
  void setPicture(int f);
}

class Landscape extends Flyweght {
  int? picture1;

  @override
  void setPicture(int f) {
    picture1 = f;
  }
}

class Space extends Flyweght {
  int? picture2;

  @override
  void setPicture(int f) {
    picture2 = f;
  }
}
