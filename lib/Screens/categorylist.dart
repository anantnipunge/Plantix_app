import 'package:flutter/material.dart';

class categorylist extends StatefulWidget {
  const categorylist({super.key});

  @override
  State<categorylist> createState() => _categorylistState();
}

class _categorylistState extends State<categorylist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}