abstract class Ienumerable {
  Ienumerator getEnumerator();
}

abstract class Ienumerator {
  bool moveNext();
  void reset();
  Object? get current;
}

class Element {
  String? name;
  int? field1;
  int? field2;

  Element(String s, int a, int b) // Конструктор.
  {
    name = s;
    field1 = a;
    field2 = b;
  }
}

//----------------------------------------------------------------------------
class UserCollection implements Ienumerable, Ienumerator {
  List<Element> elementsArray = [];

  UserCollection() {
    elementsArray.add(Element("Коля", 1, 10));
    elementsArray.add(Element("Вася", 1, 10));
  }
  int position = -1;

  @override
  bool moveNext() {
    if (position < elementsArray.length - 1) {
      position++;
      return true;
    } else {
      return false;
    }
  }

  @override
  void reset() {
    position = -1;
  }

  @override
  Object? get current {
    return elementsArray[position];
  }

  @override
  Ienumerator getEnumerator() {
    return this;
  }
}

//----------------------------------------------------------------------------
void main() {
  {
    UserCollection myCollection = UserCollection();
    myCollection.elementsArray.add(Element("Оля", 1, 10));

    for (Element element in myCollection.elementsArray) {
      print("${element.name} - ${element.field1} - ${element.field2}");
    }
  }

  //---------------------------------------
  print("---------------------------------------------------");

  Ienumerable myCollection = UserCollection();

  Ienumerator iEnumerator = myCollection.getEnumerator();

  while (iEnumerator.moveNext()) {
    Element element = iEnumerator.current as Element;
    print("${element.name} - ${element.field1} - ${element.field2}");
  }
  iEnumerator.reset();
}
