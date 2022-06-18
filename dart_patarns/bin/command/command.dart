void main() {
  Address rr = Address();
  Command command = RouteCommand(rr);
  Navigator navigator = Navigator();

  navigator.setCommand(command);
  navigator.getCommand();
}

//-------------------------
class Navigator {
  Command? command;
  void setCommand(Command command) {
    this.command = command;
  }

  void getCommand() {
    command?.route();
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
class Address {
  void getaddress() {
    print("доставка еды по адрессу- Суворова 20");
  }
}
