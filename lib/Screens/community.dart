// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantix/Screens/posts.dart';
import 'package:plantix/Screens/widgets/categoryselector.dart';
import 'package:plantix/constants.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key, required this.title});
  final String title;

  @override
  State<CommunityPage> createState() => _CommunityPageState();
  
}

class _CommunityPageState extends State<CommunityPage> {
  int selected = 0;

    List<String> categories = [
      'All',
      'Popular',
      'Top',
      'Recommended',
    ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: TextField(
                  style: TextStyle(color: kDarkGreenColor),
                  cursorColor: kDarkGreenColor,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kGinColor,
                    hintText: 'Search in community',
                    hintStyle: TextStyle(color: kGreyColor),
                    prefixIcon: Icon(
                      Icons.search,
                      color: kDarkGreenColor,
                      size: 26.0,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.mic),
                      color: kDarkGreenColor,
                      iconSize: 26.0,
                      splashRadius: 20.0,
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: kGinColor),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kGinColor),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kGinColor),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      CategorySelector(
                        selected: selected,
                        categories: categories,
                        onTap: (index) {
                          setState(() {
                            selected = index;
                          });
                        },
                      ),
                      SizedBox(height: 16,),
                      Posts(),
                      SizedBox(height: 16,),
                      Posts(),
                      SizedBox(height: 16,),
                      Posts(),
                      SizedBox(height: 16,),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }   
}
