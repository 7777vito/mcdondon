import 'package:flutter/material.dart';
import 'package:mcdondon/global.dart';
import 'package:mcdondon/counter.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
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
                            onPressed: () =>
                                Navigator.pushNamed(context, 'orderscreen')),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Hero(
                        tag: '$id',
                        child: Image.network(
                          "${productsList[id].img}",
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
                          "${productsList[id].title}",
                          style: TextStyle(color:Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text(
                      "Description",
                      style: TextStyle(color:Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "${productsList[id].description}",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Counter(itemid: id,),
                        Text(
                          "${productsList[id].price}",
                          style: TextStyle(color:Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
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
                                fontWeight: FontWeight.w500)),
                        onPressed: () {},
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