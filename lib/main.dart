import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdondon/Screen1.dart';
import 'package:mcdondon/Screen2.dart';
import 'package:mcdondon/Screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
//a大變**************************************
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final tabs=[
    Center(child: Screen1(),),
    Center(child: Screen2(),),
    Center(child: Screen3(),),
    //Center(child: Screen4(),),
  ];

  @override
  int _currentindex=1;
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),

      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.brown,
        selectedFontSize: 22.0,
        unselectedFontSize: 1.0,
        iconSize: 30.0,
        currentIndex: _currentindex,
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.accessible),
            label: "最愛",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.accessible),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.accessible),
            label: "購物車",
          ),
        ],
        onTap: (index){setState(() =>_currentindex=index);},
      ),
      floatingActionButton: new Visibility(
        visible: (_currentindex==0)?(true):(false),
        child: new FloatingActionButton(
          onPressed: (){a.incrementCounter();},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


