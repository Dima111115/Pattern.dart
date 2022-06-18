void main() {
  Monitor monitor = Monitor(State1());

  monitor.button();
  monitor.button();
  monitor.button();
  monitor.button();
}

class Monitor {
  AbstractState state;

  Monitor(this.state);

  void button() {
    state.handle(this);
  }
}

abstract class AbstractState {
  void handle(Monitor monitor);
}

class State1 extends AbstractState {
  @override
  void handle(Monitor monitor) {
    monitor.state = State2();
    print("State2 - монитор выключен");
  }
}

class State2 extends AbstractState {
  @override
  void handle(Monitor monitor) {
    monitor.state = State1();
    print("State1 - монитор включен");
  }
}
