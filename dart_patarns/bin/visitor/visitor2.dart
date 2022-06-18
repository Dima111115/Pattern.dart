void main() {
  ObjectStructur objectStructur = ObjectStructur();

  objectStructur.add(Elevtyt1());
  objectStructur.add(Elevtyt2());

  objectStructur.accert(Visitor1());
  objectStructur.accert(Visitor2());
}

//-----------------------------------
class ObjectStructur {
  List<AbstractElevtyt> array = [];

  void add(AbstractElevtyt abstractElevtyt) {
    array.add(abstractElevtyt);
  }

  void remove(AbstractElevtyt abstractElevtyt) {
    array.remove(abstractElevtyt);
  }

  void accert(AbstractVisitor abstractVisitor) {
    for (AbstractElevtyt abstractElevtyt in array) {
      abstractElevtyt.ass(abstractVisitor);
    }
  }
}

//-----------------------------------
abstract class AbstractElevtyt {
  void ass(AbstractVisitor abstractVisitor);
}

class Elevtyt1 extends AbstractElevtyt {
  @override
  void ass(AbstractVisitor abstractVisitor) {
    abstractVisitor.vred1(this);
  }

  void red1() {
    print("red1 - красный цвет");
  }
}

class Elevtyt2 extends AbstractElevtyt {
  @override
  void ass(AbstractVisitor abstractVisitor) {
    abstractVisitor.vblue2(this);
  }

  void blue2() {
    print("aaa2 - синий цвет ");
  }
}

//---------------------------------------------
abstract class AbstractVisitor {
  void vred1(Elevtyt1 elevtyt1);
  void vblue2(Elevtyt2 elevtyt2);
}

class Visitor1 extends AbstractVisitor {
  @override
  void vred1(Elevtyt1 elevtyt1) {
    //  elevtyt1.red1();
  }

  @override
  void vblue2(Elevtyt2 elevtyt2) {
    elevtyt2.blue2();
  }
}

class Visitor2 extends AbstractVisitor {
  @override
  void vred1(Elevtyt1 elevtyt1) {
    elevtyt1.red1();
  }

  @override
  void vblue2(Elevtyt2 elevtyt2) {
    // elevtyt2.blue2();
  }
}
