//------------Синглтон--------------https://metanit.com/dart/tutorial/4.9.php
class Application {
  String name;
  static Application app = Application.fromName("_");

  Application.fromName(this.name); //иминованый конструктор

  factory Application(String name) {
    //фабричный конструктор
    if (app.name == "_") {
      app = Application.fromName(name);
      print("Планета $name создана");
    } else {
      // в фабричных конструкторах нельзя обращаться к this
      // print("В приложении ${this.name} открыта новая вкладка");
      print("Планета ${app.name} уже сознана, невозможно создать 2 солнца");
    }
    return app;
  }
  void about() {
    print("ваша планета $name ");
  }
}

void main() {
  // Application myApp1 = Application("Солнце");
  Application myApp2 = Application("Солнце 2");
  myApp2.about();

  //--------------------------------запуск синглтон 2------------------------
  print("////////////////////////////////////////");
  Planet planet = Planet();
  print(planet.creation("солнце-1")?.k);
  print(planet.creation("солнце-2")?.k);
}
//--------------------------------синглтон 2---------------------------------

class Planet {
  bool a = true;
  Sun? star;

  Sun? creation(String k) {
    if (a == true) {
      a = false;
      star = Sun.hhh(k);
      return star;
    } else {
      print("невозможно создать 2 солнца");
      return star;
    }
  }
}

class Sun {
  String k = "я только один";

  Sun.hhh(this.k);
}
