void main() {
  AbstractPrototype clone2;
  AbstractPrototype prototype = Prototype(1);

  clone2 = prototype.clone();
  prototype.hunger = "сытый";
  print(prototype.hunger);
  print(clone2.hunger);
}

abstract class AbstractPrototype {
  int _id = 0;

  set id(int val) {
    _id = val;
  }

  String hunger = "голодный";

  AbstractPrototype(this._id);

  AbstractPrototype clone();

  String drink();
}

class Prototype extends AbstractPrototype {
  Prototype(int id) : super(id);
  //Prototype(super.ida); //super - тот же base

  @override
  AbstractPrototype clone() {
    return Prototype(_id);
  }

  @override
  String drink() {
    return hunger;
  }
}
