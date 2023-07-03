  class Item {
  final String name;
  final String imageUrl;
  final int price;

  Item({required this.name, required this.imageUrl, required this.price});
}


class Cart {
  List<Item> items = [];

  void addProduct(Item product) {
    items.add(product);
  }

  void removeProduct(Item product) {
    items.remove(product);
  }

  double getTotalPrice() {
    double totalPrice = 0.0;
    for (var item in items) {
      totalPrice += item.price;
    }
    return totalPrice;
  }
}