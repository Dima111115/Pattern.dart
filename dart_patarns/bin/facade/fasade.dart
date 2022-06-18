void main() {
  Fasade fasade = Fasade();
  fasade.start1();
  fasade.start2();
}

class Fasade {
  Starter starter = Starter();
  Carburetor carburetor = Carburetor();
  Peddler peddler = Peddler();

  void start1() {
    starter.starterWork();
    carburetor.carburetorWork();
    peddler.peddlerWork();
  }

  void start2() {
    print("-------------------------------");
    carburetor.carburetorWork();
    peddler.peddlerWork();
  }
}

//-------------------
class Starter {
  void starterWork() {
    print("стартер работает");
  }
}

class Carburetor {
  void carburetorWork() {
    print("карбюратор подает топлево");
  }
}

class Peddler {
  void peddlerWork() {
    print("искра распределяется по всем свечам");
  }
}
