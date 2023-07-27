// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantix/Screens/community.dart';
import 'package:plantix/Screens/home_page.dart';
import 'package:plantix/Screens/plant_order.dart';
import 'package:plantix/Screens/profile.dart';
import 'package:plantix/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plantix',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const TB(),
    );
  }
}

class TB extends StatefulWidget {
  const TB({Key? key}) : super(key: key);

  @override
  State<TB> createState() => _TBState();
}

class _TBState extends State<TB> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(title: 'Plantix'),
    CommunityPage(title: 'Explore your community',),
    PlantOrderScreen(title: 'Your Orders'),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kDarkGreenColor,
        unselectedItemColor: kSpiritedGreen,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: _onItemTapped,
        selectedFontSize: 12,
      ),
    );
  }
}


// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget{
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> { 

//   ImagePicker picker = ImagePicker();
//   XFile? image;

//   @override
//   Widget build(BuildContext context) { 
//     return  Scaffold(
//           appBar: AppBar(
//             title: Text("Image Picker from Gallery"),
//             backgroundColor: Colors.redAccent
//           ),
//           body: Container(
//             padding: EdgeInsets.only(top:20, left:20, right:20),
//             alignment: Alignment.topCenter,
//             child: Column(
//               children: [

//                 ElevatedButton(
//                   onPressed: () async {
//                       image = await picker.pickImage(source: ImageSource.gallery); 
//                       setState(() {
//                         //update UI
//                       });
//                   }, 
//                   child: Text("Pick Image")
//                 ),
//                 image == null?Container():
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Image.file(File(image!.path)),
//                   )
//                 ) 
//               ],
//             )
//           )
//       );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:plantix/Screens/ProductOrder.dart';
// import 'package:provider/provider.dart';

// class Product {
//   final int id;
//   final String name;
//   final double price;

//   Product({required this.id, required this.name, required this.price});
// }

// class Cart {
//   List<Product> items = [];

//   void addProduct(Product product) {
//     items.add(product);
//   }

//   void removeProduct(Product product) {
//     items.remove(product);
//   }

//   double getTotalPrice() {
//     double totalPrice = 0.0;
//     for (var item in items) {
//       totalPrice += item.price;
//     }
//     return totalPrice;
//   }
// }

// class CartProvider extends ChangeNotifier {
//   Cart cart = Cart();

//   void addToCart(Product product) {
//     cart.addProduct(product);
//     notifyListeners();
//   }
// }

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => CartProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Add to Cart Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ProductListingScreen(),
//     );
//   }
// }

// class ProductListingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cartProvider = Provider.of<CartProvider>(context);

//     // Example products
//     final List<Product> products = [
//       Product(id: 1, name: 'Product 1', price: 9.99),
//       Product(id: 2, name: 'Product 2', price: 14.99),
//       // Add more products as needed
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Listing'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];
//           return ListTile(
//             title: Text(product.name),
//             subtitle: Text('Price: \$${product.price}'),
//             trailing: ButtonTheme(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               height: 70.0,
//               minWidth: 260.0,
//               child: ElevatedButton(
//                 onPressed: () {
//                   cartProvider.addToCart(product);
//                     Navigator.push(context,
//                     MaterialPageRoute(
//                       builder: (context) => PlantOrderScreen(title: 'Your Orders',)
//                     ),
//                   );

//                 },
//                 child: Text(
//                   'Add to Cart',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
