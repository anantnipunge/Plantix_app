import 'package:flutter/material.dart';

class weather_card extends StatefulWidget {
  const weather_card({super.key});

  @override
  State<weather_card> createState() => _weather_cardState();
}

class _weather_cardState extends State<weather_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Color(0xFFEBFDF2),
        borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Pune 5 May",style: TextStyle(fontSize: 18),),
              const Text("38\u00B0 C", style: TextStyle(fontSize: 36),),
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
    );
  }
}