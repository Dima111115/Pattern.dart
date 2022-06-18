void main() {
  Icurrent220v adapter = Adapter();
  adapter.socket();
}

class Icurrent220v {
  //интерфейс
  void socket() {}
}

class Telephone {
  void charger() {
    print("идет заряд телефона");
  }
}

class Adapter extends Telephone implements Icurrent220v {
  @override
  void socket() {
    charger();
  }
}
//-------------------------------------------
// class Adapter implements Icurrent220v {
//   Telephone a = Telephone();
//   @override
//   void socket() {
//     a.charger();
//   }
// }
//--------------------------------------------------------вариант 2------------
// void main() {
//   Icurrent220v adapter = Adapter();
//   adapter.socket();
// }

// abstract class Icurrent220v {
//   void socket() {}
// }

// class Telephone {
//   void charger() {
//     print("идет заряд телефона");
//   }
// }

// class Adapter extends Icurrent220v {
//   Telephone a = Telephone();
//   @override
//   void socket() {
//     a.charger();
//   }
// }
