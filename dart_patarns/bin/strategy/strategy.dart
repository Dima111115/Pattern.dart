void main() {
  print(" чтобе убить босса используйте огонь");
  Boss boss = Boss(BlowFire1());
  boss.beat();
}

class Boss {
  Strategy strategy;

  Boss(this.strategy);

  beat() {
    strategy.beat();
  }
}

//-----------------------------------
abstract class Strategy {
  void beat();
}

class BlowFire1 extends Strategy {
  @override
  void beat() {
    print("удар огнем");
  }
}

class BlowAir2 extends Strategy {
  @override
  void beat() {
    print("удар воздухом");
  }
}

class BlowWater3 extends Strategy {
  @override
  void beat() {
    print("удар водой");
  }
}
