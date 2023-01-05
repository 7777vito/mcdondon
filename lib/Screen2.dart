import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdondon/global.dart';

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Food",
            // style: Theme.of(context).textTheme.display1.apply(
            //   fontWeightDelta: 2,
            //   color: Colors.black,
            // ),
            style: TextStyle(color:Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Text("Delivery",
              // style:Theme.of(context).textTheme.display1.copyWith(height: .9)),
            style: TextStyle(color:Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Container(
          //   height: 81,
          //   child: CategoryContainer(),
          // ),
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
            itemCount: productsList.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductContainer(id: index);
            },
          )
        ],
      ),
    );
  }
}
class ProductContainer extends StatelessWidget {
  final int id;

  const ProductContainer({Key? key, int this.id=0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => DetailsScreen(id: id)),
      // ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\$${productsList[id].price}",
                // style: Theme.of(context).textTheme.title.copyWith(
                //   color: Colors.white,
                // ),
                  style: TextStyle(color:Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: '$id',
                  child: Image.network(
                    "${productsList[id].img}",
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
                "${productsList[id].title}",
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