import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plantix/Screens/Detect.dart';

class diagnosis extends StatefulWidget {
  const diagnosis({super.key});

  @override
  State<diagnosis> createState() => _diagnosisState();
}

class _diagnosisState extends State<diagnosis> {
    ImagePicker picker = ImagePicker();
    XFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Find the diagnosis", style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold)),
        SizedBox(height: 8,),
        Container(
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
                  onPressed: () {
                    _openGallery(context);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

void _openGallery(BuildContext context) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DetectDisease(image: pickedFile)
        )
      );
  }