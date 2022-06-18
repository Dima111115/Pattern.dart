void main() {
  Windows windows = Windows();
  windows.start();
}

abstract class AbstractWindows {
  void hello();
  void work();

  void start() {
    hello();
    work();
  }
}

class Windows extends AbstractWindows {
  @override
  void hello() {
    print("привет Петя");
  }

  @override
  void work() {
    print("загрузка рабочего стола");
  }
}
