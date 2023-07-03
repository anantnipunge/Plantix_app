  class Category {
  final String title;
  final String description;
  final String imgurl;
  final double price;

  Category({required this.title, required this.description, required this.imgurl, required this.price});
}

  
  final List<Category> categories = [
    Category(
      title: 'Apple',
      description: 'Apple\'s are good',
      imgurl: 'assets/apple.png',
      price: 300.00,
    ),
    Category(
      title: 'wheat',
      description: 'wheat are good',
      imgurl: 'assets/wheat.png',
      price: 345.00,

    ),
    Category(
      title: 'Onion',
      description: 'onions are good',
      imgurl: 'assets/onion.png',
      price: 335.00,
    ),
    Category(
      title: 'Banana',
      description: 'banana are good',
      imgurl: 'assets/banana.png',
      price: 353.00,
    ),
    Category(
      title: 'Grapes',
      description: 'Grapes are good',
      imgurl: 'assets/grapes.png',
      price: 300.00,
    ),
    Category(
      title: 'Ginger',
      description: 'Ginger are good',
      imgurl: 'assets/ginger.png',
      price: 345.00,

    ),
    Category(
      title: 'Onion',
      description: 'Onion are good',
      imgurl: 'assets/onion.png',
      price: 335.00,
    ),
    Category(
      title: 'Banana',
      description: 'Banana are good',
      imgurl: 'assets/banana.png',
      price: 353.00,
    ),
    // Add more Categorys here...
  ];