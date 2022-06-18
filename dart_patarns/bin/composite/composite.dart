void main() {
  School teacher1 = Teacher("Директор школы");
  School teacher2 = Teacher("Учитель");
  School teacher3 = Teacher("Учитель");
  School schoolboy1 = Schoolboy("Школьник");

  teacher1.adds(teacher2);
  teacher1.adds(teacher3);
  teacher1.adds(schoolboy1);
  // ass.adds(all);
  teacher1.showTree();
}

//--------------------------------------
abstract class School {
  String? _name;

  School(String name) {
    _name = name;
  }

  void showTree();
  void adds(School school);
  void removes(School school);
}

//-------------------------------------------
class Teacher extends School {
  List schoolTree = [];

  Teacher(String name) : super(name);

  @override
  void showTree() {
    print(_name); //выводим свое имя

    for (School gg in schoolTree) {
      gg.showTree();
    }
  }

  @override
  void adds(School school) {
    schoolTree.add(school);
  }

  @override
  void removes(School school) {
    schoolTree.remove(school);
  }
}

//--------------------------------------------
class Schoolboy extends School {
  Schoolboy(String n) : super(n);

  @override
  void showTree() {
    print(_name); //выводим свое имя
  }

  @override
  void adds(School school) {}

  @override
  void removes(School school) {}
}
