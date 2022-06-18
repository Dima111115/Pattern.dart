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

//-----------------------------------------------------------
abstract class IEnumerable {
  IEnumerator getEnumerator();
}

class Enumerable implements IEnumerable {
  List<Element> elementsArray = [];

  int get count {
    return elementsArray.length;
  }

  @override
  IEnumerator getEnumerator() {
    return Enumerator(this);
  }
}

//-----------------------------------------------
abstract class IEnumerator {
  bool moveNext();
  void reset();
  Object? get current;
}

class Enumerator implements IEnumerator {
  Enumerable enumerable;
  int curent1 = -1;

  Enumerator(this.enumerable);

  @override
  bool moveNext() {
    if (curent1 < enumerable.count - 1) {
      curent1++;
      return true;
    } else {
      return false;
    }
  }

  @override
  void reset() {
    curent1 = -1;
  }

  @override
  Object? get current {
    return enumerable.elementsArray[curent1];
  }
}

//---------------------------------------------
void main() {
  Enumerable enumerable = Enumerable();

  enumerable.elementsArray.add(Element("Вфся", 1, 10));
  enumerable.elementsArray.add(Element("Петя", 12, 10));

  for (Element element in enumerable.elementsArray) {
    print("${element.name} - ${element.field1} - ${element.field2}");
  }
  //---------------------------------------
  print("---------------------------------------------------");

  IEnumerable myCollection = enumerable;

  IEnumerator iEnumerator = myCollection.getEnumerator();

  while (iEnumerator.moveNext()) {
    Element element = iEnumerator.current as Element;
    print("${element.name} - ${element.field1} - ${element.field2}");
  }
  iEnumerator.reset();
}
