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