// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  final double price;

  const CounterDesign({super.key, required this.price});


  @override
  State<StatefulWidget> createState() {    
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {

  int _n = 0;
  double _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _amt + widget.price;
    });
  }
  // send _n to the cart
  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
        _amt = _amt - widget.price;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 155.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {
                  add();
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('$_n', style: TextStyle(fontSize: 30.0)),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                onPressed: () {
                  minus();
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          'Rs $_amt',
          style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
          ),
        ),
      ],
    );
  }
}