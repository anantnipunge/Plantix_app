import 'package:flutter/material.dart';

class diagnosis extends StatefulWidget {
  const diagnosis({super.key});

  @override
  State<diagnosis> createState() => _diagnosisState();
}

class _diagnosisState extends State<diagnosis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
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
          SizedBox(
            width: 400,
            child: FilledButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),),
            child: const Text('Take a picture'),
            onPressed: () => print('Pressed'),
          ),
          )
        ],
      ),
    );
  }
}