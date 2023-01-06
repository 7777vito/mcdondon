import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//for testing測試class在不同畫面執行主程式
int _counter = 0;

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}
//異常 明明是statefulwidget但沒有動作
class _Screen1State extends State<Screen1> {
  bool favorite=false;
  void _incrementCounter() {
    setState(() =>
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++);

  }
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
            '${_counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          IconButton(
            icon: (favorite)?(Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )):(Icon(
              Icons.favorite_border,
              color: Colors.red,
            )),
            onPressed: () {
              favorite=!favorite;
            },
          ),

        ],
      ),
    );
  }
}
