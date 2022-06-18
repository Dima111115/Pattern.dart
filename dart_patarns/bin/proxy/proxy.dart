void main() {
  Games games = ProxySpiderMan();
  games.download(200);
}

//----------------------------------------
abstract class Games {
  void download(int s);
}

class SpiderMan extends Games {
  @override
  void download(int s) {
    print("оригинальная игра, приятной игры");
  }
}

//--------------------------------
class ProxySpiderMan extends Games {
  SpiderMan? spiderMan;
  @override
  void download(int s) {
    spiderMan ??= SpiderMan();

    if (s >= 200) {
      spiderMan?.download(s);
    } else {
      print("демо версия игра");
    }
  }
}
