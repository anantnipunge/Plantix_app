import 'package:flutter/material.dart';
import 'package:plantix/Screens/calculator_cards.dart';
import 'package:plantix/Screens/categorylist.dart';
import 'package:plantix/Screens/widgets/diagnosis.dart';
import 'package:plantix/Screens/widgets/weather_card.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: const TextStyle(fontFamily: 'Sacramento', fontSize: 42, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 155, 49, 0)),),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)
            ),
        ),
        elevation: 0.00,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Flexible(
                flex: 2,
                child: categorylist(),
              ),
              Flexible(
                flex: 2,
                child: cal_cards()
              ),
              SizedBox(height: 16,),
              Text("Find the diagnosis", style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold), ),
              Flexible(
                flex: 3,
                child: diagnosis(),
              ),
              SizedBox(height: 16,),
              Flexible(
                flex: 2,
                child: weather_card(),
              )
              // const SizedBox(height: 16,),
              // Flexible(
              //   flex: 1,
              //   child: CategorySelector(
              //     selected: selected,
              //     categories: const [
              //       'Recommended',
              //       'Top',
              //       'Indoor',
              //       'Outdoor'
              //     ],
              //     onTap: (index) {
              //       setState(() {
              //         selected = index;
              //       });
              //     },
              //   ),
              // )
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


