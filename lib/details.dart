import 'package:flutter/material.dart';
import 'package:mcdondon/global.dart';
import 'package:mcdondon/counter.dart';
import 'package:mcdondon/Screen3.dart';
import 'package:flutter/foundation.dart';

class DetailsScreen extends StatefulWidget {
  final int id;
   DetailsScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final GlobalKey<CounterState> _key = GlobalKey();

  int number=0;

  methodInParent(){setState()=>debugPrint("details parent");}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[100],
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.shopping_basket,
                            ),
                            onPressed: () =>Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Screen3())
                            ),
                        ),  //Navigator.pushNamed(context, 'orderscreen')),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Hero(
                        tag: '${widget.id}',
                        child: Image.network(
                          "${productsList[widget.id].img}",
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //在這裡有bug 假設手機尺寸較小 add to cart會跑掉有問題
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${productsList[widget.id].title}",
                          style: TextStyle(color:Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        IconButton(
                          icon:Padding(
                              padding: EdgeInsets.zero,
                              child: productsList[widget.id].favorite==false?
                              Icon(Icons.favorite_border,color: Colors.red,):Icon(
                                  Icons.favorite_rounded,color: Colors.red,)
                          ),
                          onPressed: () {setState(()=>
                          productsList[widget.id].favorite=!productsList[widget.id].favorite   );
                          },
                        ),

                      ],
                    ),
                    Text(
                      "Description",
                      style: TextStyle(color:Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "${productsList[widget.id].description}",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //Counter(itemid: id,funtion: methodInParent,),
                        Expanded(
                          child: Counter(
                            key: _key,
                            itemid: widget.id,
                            funtion: methodInParent,
                          ),
                        ),
                        Text(
                          "${productsList[widget.id].price}",
                          style: TextStyle(color:Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child:
                      ElevatedButton(
                        child: Text(
                            "Add To Cart",
                            style: TextStyle(color:Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900)),
                        onPressed: () {
                          productsList[widget.id].amount=(productsList[widget.id].amount<=0)?(1):(productsList[widget.id].amount);
                          _key.currentState!.methodInChild();//call child
                        },
                        //style:ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.green)),
                        style: ElevatedButton.styleFrom(
                            primary:Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(5.0),
                        // ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}