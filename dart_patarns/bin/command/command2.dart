void main() {
  Address rr = Aa();
  Address dd = Dd();

  Command command = RouteCommand(rr);
  Navigator navigator = Navigator();
  navigator.setCommand(command);

  Command commands = RouteCommand(dd);
  navigator.setCommand(commands);

  navigator.getCommand();
}

//-------------------------
class Navigator {
  List<Command> command = [];

  void setCommand(Command command) {
    this.command.add(command);
  }

  void getCommand() {
    for (int i = 0; i < command.length; i++) {
      command[i].route();
    }
  }
}

//---------------------------------
abstract class Command {
  Address? _address;

  Command(Address address) {
    _address = address;
  }
  void route();
}

class RouteCommand extends Command {
  RouteCommand(Address address) : super(address);

  @override
  void route() {
    _address?.getaddress();
  }
}

//------------------------
abstract class Address {
  void getaddress();
}

class Aa extends Address {
  @override
  void getaddress() {
    print("доставка еды по адрессу- Суворова 20");
  }
}

class Dd extends Address {
  @override
  void getaddress() {
    print("доставка еды по адрессу- Кклика 10");
  }
}
