import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DetectDisease extends StatelessWidget {
  DetectDisease({super.key, this.image});

  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => {Navigator.of(context).pop()},
        )
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Image.file(File(image!.path)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
