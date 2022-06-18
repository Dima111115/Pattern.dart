void main() {
  AbstractBuilder builder = Builder();
  Director director = Director(builder);
  director.work();
  print(builder.getResultat().jelly);
}

class Director {
  AbstractBuilder builder;

  Director(this.builder);

  void work() {
    builder.jellyLayer_1();
    builder.jellyLayer_2();
    builder.jellyLayer_3();
  }
}

//-----------------------------------------------
abstract class AbstractBuilder {
  void jellyLayer_1();
  void jellyLayer_2();
  void jellyLayer_3();

  Product getResultat();
}

//------
class Builder extends AbstractBuilder {
  Product product = Product();

  @override
  void jellyLayer_1() {
    product.addLayer("1 слой красный");
  }

  @override
  void jellyLayer_2() {
    product.addLayer("2 слой зеленый");
  }

  @override
  void jellyLayer_3() {
    product.addLayer("3 слой синий");
  }

  @override
  Product getResultat() {
    return product;
  }
}

//------------------------------------------------
class Product {
  List<String> jelly = [];

  void addLayer(String a) {
    jelly.add(a);
  }
}
