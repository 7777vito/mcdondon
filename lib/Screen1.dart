import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdondon/global.dart';
import 'package:mcdondon/details.dart';

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<int> favorite=[];
  int productFF(){
    favorite=[];
    int count=0;
    for(int x=0;x<productsList.length;x++){
      if(productsList[x].favorite){
        count+=1;
        favorite.add(x);
      }
    }
    return count;
  }
  methodInParent(){setState((){
    debugPrint("parent call : ${productFF()}");
    for (int x =0;x<favorite.length;x++){
      debugPrint("${favorite[x]}");
    }

  });}

  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "favorite",
            // style: Theme.of(context).textTheme.display1.apply(
            //   fontWeightDelta: 2,
            //   color: Colors.black,
            // ),
            style: TextStyle(color:Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Text("food",
              // style:Theme.of(context).textTheme.display1.copyWith(height: .9)),
              style: TextStyle(color:Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 15,
          ),

          Text(
              "Hamburger",
              // style: Theme.of(context).textTheme.title.apply(
              //   fontWeightDelta: 2,
              // ),
              style: TextStyle(color:Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)
          ),
          SizedBox(
            height: 11,
          ),
          GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: .7
            ),
            itemCount: productFF(),
            itemBuilder: (BuildContext context, int index) {
              return (productsList[favorite[index]].favorite)?(ProductContainer(id: favorite[index],funtion: methodInParent,)):(SizedBox.shrink());
            },
          )
        ],
      ),
    );
  }
}
class ProductContainer extends StatefulWidget {
  final int id;
  final Function funtion;
  const ProductContainer({Key? key, int this.id=0,required this.funtion}) : super(key: key);

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(id: widget.id)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\$${productsList[widget.id].price}",
                        // style: Theme.of(context).textTheme.title.copyWith(
                        //   color: Colors.white,
                        // ),
                        style: TextStyle(color:Colors.redAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)
                    ),
                  ),
                  IconButton(
                    icon:Padding(
                        padding: EdgeInsets.zero,
                        child: productsList[widget.id].favorite==false?
                        Icon(Icons.favorite_border,color: Colors.red,):Icon(
                          Icons.favorite_rounded,color: Colors.red,)
                    ),
                    onPressed: () {setState((){
                      productsList[widget.id].favorite=!productsList[widget.id].favorite;widget.funtion();} );
                    },
                  ),
                ]
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: '${widget.id}',
                  child: Image.network(
                    "${productsList[widget.id].img}",
                    fit: BoxFit.cover,
                    // width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              child: Text(
                  "${productsList[widget.id].title}",
                  // style: Theme.of(context)
                  //     .textTheme
                  //     .subtitle
                  //     .copyWith(color: Colors.white),
                  style: TextStyle(color:Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)
              ),
            )
          ],
        ),
      ),
    );
  }
}