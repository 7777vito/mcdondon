import 'package:flutter/material.dart';
import 'package:mcdondon/global.dart';

class Counter extends StatefulWidget {
  final int itemid;
  const Counter({Key? key,required this.itemid}):super(key:key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //int ?_count = (shoppingcart[widget.itemid]!=null)?(shoppingcart[widget.itemid]):(0);
  @override

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              productsList[widget.itemid].amount =(productsList[widget.itemid].amount)!+ 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
            ),
            child: Icon(Icons.add),
          ),
        ),
        SizedBox(width: 15.0),
        Text("${productsList[widget.itemid].amount}"),
        SizedBox(width: 15.0),
        GestureDetector(
          onTap: () {
            setState(() {
              productsList[widget.itemid].amount=((productsList[widget.itemid].amount)!<=0)?(0):((productsList[widget.itemid].amount)!- 1);
            });
          },
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
            ),
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}