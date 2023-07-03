// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:plantix/Screens/plant_order.dart';
import 'package:plantix/Screens/widgets/Counter.dart';
import 'package:plantix/constants.dart';
// import 'package:plantix/Screens/imagecorousal.dart';
import '../Models/categoryListModel.dart';
import 'package:badges/badges.dart' as badges;


class CategoryView extends StatefulWidget {
  final Category category;

  const CategoryView({super.key, required this.category}) ;

  @override
  State<StatefulWidget> createState() {
    return _CategoryView();
  }
}

class _CategoryView extends State<CategoryView> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kFoamColor,
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () { Navigator.pop(context);},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
                color: Colors.white,
                icon: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: 0, end: 3),
                  badgeAnimation: badges.BadgeAnimation.slide(
                      disappearanceFadeAnimationDuration: Duration(milliseconds: 200),
                      curve: Curves.easeInCubic,
                      ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: kDarkGreenColor,
                  ),
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
                ),
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>PlantOrderScreen(title: 'Your Cart',)),
                  );
                },
              ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: kFoamColor,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // CarouselWithIndicatorDemo(),
                Container(
                  child: Center(
                    child: Image.asset(widget.category.imgurl, height: 250,width: 250,)
                    )
                  ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            widget.category.title,
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('1 each'),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(price: widget.category.price,),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Product Description',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            widget.category.description,
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.amber.shade200),
                                ),
                                height: 70.0,
                                child: FilledButton(
                                  child: IconButton(
                                      icon: _isFavorited
                                          ? Icon(
                                              Icons.favorite_border,
                                              color: Colors.amber[300],
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            ), onPressed: _toggleFavorite,),
                                  onPressed: _toggleFavorite,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: FilledButton(
                                  // elevation: 0.0,
                                  // color: Colors.amber[300],
                                  onPressed: (){},
                                  child: Text(
                                    'Add to cart',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
