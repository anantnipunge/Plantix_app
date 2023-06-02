import 'package:flutter/material.dart';
import 'package:plantix/constants.dart';

class cal_cards extends StatefulWidget {
  const cal_cards({super.key});

  @override
  State<cal_cards> createState() => _cal_cardsState();
}

class _cal_cardsState extends State<cal_cards> {
  @override
  Widget build(BuildContext context) {
    return ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFFEBFDF2),
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
                  color: Color(0xFFEBFDF2),
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
          );
  }
}