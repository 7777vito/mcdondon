import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdondon/Screen1.dart';
import 'package:mcdondon/Screen2.dart';
import 'package:mcdondon/Screen3.dart';
import 'package:mcdondon/global.dart';

import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
int currentindex=1;
void main() {
  runApp( MyApp());
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
      home: MyHomePage(title: 'swipeable button'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   }
  // }

  bool isFinished=false;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mcdondon Restaurant'),
        centerTitle: true,),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset("images/backGround.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            child: SwipeableButtonView(
              buttonText: "滑動按鈕以解鎖",
              buttontextstyle: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),

              buttonWidget: Container(child: Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.grey,),),
              activeColor: Colors.black54,
              isFinished: isFinished,
              onWaitingProcess: () {
                Future.delayed(Duration(seconds: 0), () {
                  setState(() {
                    isFinished=true;
                  });
                });
              },
              onFinish: () async {
                await Navigator.push(context, PageTransition(type: PageTransitionType.fade,
                    child: nextPage()));
                setState(() {
                  isFinished=false;
                });
              },
            ),),
        ],
      ),
    );
  }
}
class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  State<nextPage> createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  final tabs=[
    Center(child: Screen1(),),
    Center(child: Screen2(),),
    Center(child: Screen3(),),
    //Center(child: Screen4(),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("McDonDon"),

      ),
      body: tabs[currentindex],
      // body:Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Image.network(
      //       "https://via.placeholder.com/350x150",
      //       fit: BoxFit.fill,
      //     );
      //   },
      //   itemCount: 3,
      //   pagination: SwiperPagination(),
      //   control: SwiperControl(),
      // ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red[200],
        selectedItemColor: Colors.brown,
        selectedFontSize: 22.0,
        unselectedFontSize: 1.0,
        iconSize: 30.0,
        currentIndex: currentindex,
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.favorite_rounded),
            label: "最愛",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            label: "購物車",
          ),
        ],
        onTap: (index){setState(() =>currentindex=index);},
      ),
    );
  }
}
