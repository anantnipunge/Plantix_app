import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plantix/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plantix',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Plantix'),
    );
  }
}

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
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Flexible(
                flex: 2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/apple.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Apple", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/wheat.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Wheat", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/mango.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Mango", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/onion.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Onion", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/ginger.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Ginger",style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/corn.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Corn", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/grapes.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Grapes", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            color: Colors.amber[100],
                            child: Image.asset('assets/banana.png', fit: BoxFit.cover,),
                          ),
                        ),
                        const Text("Banana", style:TextStyle(fontSize: 18),),
                      ],
                    ),
                  ],
                )
              ),
              Flexible(
                flex: 2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 223, 222, 222),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 189, 241, 191),
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                            child: const Icon(Icons.calculate_rounded, size: 40,),
                          ),
                          const SizedBox(height: 8,),
                          const Text("Calculate fertilizers costs", style:TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 223, 222, 222),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 189, 241, 191),
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                            child: const Icon(Icons.spa_rounded, size: 40,),
                          ),
                          const SizedBox(height: 8,),
                          const Text("Pets and diseases", style:TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                )
              ),
              // const SizedBox(height: 16,),
              // TextField(
              //   style: TextStyle(color: kDarkGreenColor),
              //   cursorColor: kDarkGreenColor,
              //   decoration: InputDecoration(
              //     filled: true,
              //     fillColor: kGinColor,
              //     hintText: 'Search Plant',
              //     hintStyle: TextStyle(color: kGreyColor),
              //     prefixIcon: Icon(
              //       Icons.search,
              //       color: kDarkGreenColor,
              //       size: 26.0,
              //     ),
              //     suffixIcon: IconButton(
              //       icon: const Icon(Icons.mic),
              //       color: kDarkGreenColor,
              //       iconSize: 26.0,
              //       splashRadius: 20.0,
              //       onPressed: () {},
              //     ),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(color: kGinColor),
              //       borderRadius: BorderRadius.circular(15.0),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: kGinColor),
              //       borderRadius: BorderRadius.circular(15.0),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: kGinColor),
              //       borderRadius: BorderRadius.circular(15.0),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 16,),
              Text("Find the diagnosis", style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold), ),
              Flexible(
                flex: 4,
                child:Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Color(0xFFE5F0EA),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.photo_size_select_actual_rounded, size: 50,),
                          Icon(Icons.arrow_forward_ios_rounded, size: 30,),
                          Icon(Icons.document_scanner_outlined, size: 50,),
                          Icon(Icons.arrow_forward_ios_rounded, size: 30,),
                          Icon(Icons.medical_information_rounded, size: 50,),
                        ],
                      ),
                        const SizedBox(height: 32,),
                      FilledButton(
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
                        child: const Text('                            Take a picture                            '),
                        onPressed: () => print('Pressed'),
                      ),
                    ],
                  ),
                )
              ),
              const SizedBox(height: 16,),
              Flexible(
                flex: 2,
                child: Container(
                  height: 200,
                  width: 400,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 222, 222),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pune 5 May",style: TextStyle(fontSize: 18),),
                          Text("38\u00B0 C", style: TextStyle(fontSize: 36),),
                          Text("Sunset 6.57 PM", style: TextStyle(color: Colors.blue[900], fontSize: 18),)
                        ],
                      ),
                    Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: const Icon(Icons.sunny_snowing, size: 70,color: Color.fromARGB(255, 255, 111, 0),),
                      ),
                    ],
                  ),
                ),
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

