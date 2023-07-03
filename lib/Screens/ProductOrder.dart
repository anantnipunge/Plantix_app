// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:plantix/Screens/cartPage.dart';
import 'package:plantix/constants.dart';
import 'package:provider/provider.dart';

class PlantOrderScreen extends StatelessWidget {
  final String title;

  PlantOrderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final List<Product> cartItems = cartProvider.cart.items;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        titleSpacing: 2.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
      ),
      body: ListView.builder(
        itemCount: cartItems.length + 1, // Add +1 for the "Buy Now" button
        itemBuilder: (context, index) {
          if (index == cartItems.length) {
            // Last item, display the "Buy Now" button
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: FilledButton(
                onPressed: () {
                  // Handle "Buy Now" button press
                },
                child: const Text(
                  'Checkout the products',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          } else {
            final product = cartItems[index];
            return Column(
              children: [
                SizedBox(height: 8),
                ListTile(
                  // leading: Image.asset(
                  //   // product.imageUrl, // Assuming your Product model has an 'imageUrl' property
                  //   width: 60,
                  //   height: 60,
                  //   fit: BoxFit.cover,
                  // ),
                  title: Text(
                    product.name,
                    style: TextStyle(fontSize: 18, color: kDarkGreenColor),
                  ),
                  onTap: () {
                    // Handle tile tap event
                  },
                  trailing: Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: Colors.amber[900]),
                  ),
                  minVerticalPadding: 16,
                  horizontalTitleGap: 16,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
