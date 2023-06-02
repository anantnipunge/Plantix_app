// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plantix/Models/orders.dart';
import 'package:plantix/constants.dart';

class PlantOrderScreen extends StatefulWidget {
  late String title;

  PlantOrderScreen({super.key, required this.title});

  @override
  State<PlantOrderScreen> createState() => _PlantOrderScreenState();
}

class _PlantOrderScreenState extends State<PlantOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
        itemCount: plants.length + 1, // Add +1 for the "Buy Now" button
        itemBuilder: (context, index) {
          if (index == plants.length) {
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
            final plant = plants[index];
            return Column(
              children: [
                SizedBox(height: 8),
                ListTile(
                  leading: Image.asset(
                    plant.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    plant.name,
                    style: TextStyle(fontSize: 18, color: kDarkGreenColor),
                  ),
                  onTap: () {
                    // Handle tile tap event
                  },
                  trailing: Text(
                    plant.price,
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
