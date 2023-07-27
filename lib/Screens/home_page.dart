import 'package:flutter/material.dart';
import 'package:plantix/Screens/categorylist.dart';
import 'package:plantix/Screens/widgets/diagnosis.dart';
import 'package:plantix/Screens/widgets/searchbar.dart';
import 'package:plantix/Screens/widgets/weather_card.dart';
import 'package:plantix/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading:
      //   titleSpacing: 00.0,
      //   centerTitle: true,
      //   toolbarHeight: 60.2,
      //   toolbarOpacity: 0.8,
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeSearchBar(),
            SizedBox(height: 8,),
            Text.rich(
                TextSpan(
                  text: 'Hello', 
                  style: TextStyle(fontSize: 24),
                  children: [
                    TextSpan(text: ' User \n', style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(text: 'Good Afternoon', style: TextStyle(fontWeight: FontWeight.bold, color: kDarkGreenColor)),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              const Flexible(
                flex: 1,
                child: categorylist(),
              ),
              diagnosis(),
              SizedBox(height: 16,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                    // weather_card(),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => {},
      //   tooltip: 'Search',
      //   child: const Icon(Icons.camera),
      // ),
      
    );
  }
}
