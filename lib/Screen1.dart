import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//for testing測試class在不同畫面執行主程式
class counter1 {
  int counter = 0;
  void incrementCounter() {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // _counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    counter++;
  }
}
counter1 a=new counter1();

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}
//異常 明明是statefulwidget但沒有動作
class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context){
    return Center(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${a.counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
