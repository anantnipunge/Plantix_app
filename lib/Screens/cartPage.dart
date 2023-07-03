import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}

class Cart {
  List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
  }

  void removeProduct(Product product) {
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

class CartProvider extends ChangeNotifier {
  Cart cart = Cart();

  void addToCart(Product product) {
    cart.addProduct(product);
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add to Cart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListingScreen(),
    );
  }
}

class ProductListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    // Example products
    final List<Product> products = [
      Product(id: 1, name: 'Product 1', price: 9.99),
      Product(id: 2, name: 'Product 2', price: 14.99),
      // Add more products as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('Price: \$${product.price}'),
            trailing: ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 70.0,
              minWidth: 260.0,
              child: ElevatedButton(
                onPressed: () {
                  cartProvider.addToCart(product);
                },
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
