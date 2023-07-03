import 'package:flutter/material.dart';
import 'package:plantix/Models/categoryListModel.dart';
import 'package:plantix/Screens/categoryView.dart';
import 'package:plantix/constants.dart';

class categorylist extends StatefulWidget {
  const categorylist({super.key});

  @override
  State<categorylist> createState() => _categorylistState();
}

class _categorylistState extends State<categorylist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {  
        return Column(
          children: [
            ClipOval(
              child: GestureDetector(
                onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryView( category: categories[index])),
                    );
                  },
                child: Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.all(8),
                  color: kFoamColor,
                  child: Image.asset(categories[index].imgurl ,   fit: BoxFit.cover,),
                ),
              ),
            ),
            Text(categories[index].title, style:TextStyle(fontSize: 18),),
          ],
        );
      },
      
    );
  }
}