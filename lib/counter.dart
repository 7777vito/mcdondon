import 'package:flutter/material.dart';
import 'package:mcdondon/global.dart';
import 'package:flutter/foundation.dart';

class Counter extends StatefulWidget {
  final int itemid;
  final VoidCallback funtion;
  const Counter({Key? key,required this.itemid,required this.funtion}):super(key:key);
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  //int ?_count = (shoppingcart[widget.itemid]!=null)?(shoppingcart[widget.itemid]):(0);
  int number=0;
  @override
  methodInChild(){setState()=>debugPrint("count child");}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              productsList[widget.itemid].amount =
                  (productsList[widget.itemid].amount)! + 1;
              widget.funtion();
            }
            );
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
              productsList[widget.itemid].amount =
              ((productsList[widget.itemid].amount)! <= 0)
                  ? (0)
                  : ((productsList[widget.itemid].amount)! - 1);
              widget.funtion();
            }
            );
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