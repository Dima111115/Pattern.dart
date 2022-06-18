void main() {
  Game game = Game();
  game.state = "персонаж: сила +2 , ловкость +200 ,мана +500";

  ReserveCopy reserveCopy = ReserveCopy();
  reserveCopy.memento = game.createMemento();
  print(game.state);
  game.state = "персонаж: сила +500 , ловкость +2 ,мана +7";
  print(game.state);
  game.setMemento(reserveCopy.memento!);
  print(game.state);
}

//------------------------------------------------
class Game {
  String? state;

  Memento createMemento() {
    return Memento(state!);
  }

  void setMemento(Memento memento) {
    state = memento.state;
  }
}

//---------------------------------------------
class Memento {
  String? _state;

  String? get state {
    return _state;
  }

  Memento(String state) {
    _state = state;
  }
}

class ReserveCopy {
  Memento? memento;
}
