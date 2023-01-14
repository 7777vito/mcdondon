import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mcdondon/global.dart';
import 'package:mcdondon/details.dart';
import 'package:card_swiper/card_swiper.dart';

// Swiper imageSlider(context) {
//   return Swiper(
//     autoplay: true,
//     itemCount: 10,
//     itemBuilder: (BuildContext context, int index) {
//       return Image.network("https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",
//           fit: BoxFit.fitHeight);
//     },
//     scale: 0.8,
//     viewportFraction: 0.7,
//   );
// }
class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context ){

    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/backGround.jpg"),     //設定背景圖片
      fit: BoxFit.cover),),
      child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 350.0,
            height: 150.0,
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  advlist[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount: advlist.length,
              pagination: SwiperPagination(),
              control: SwiperControl(),
            ),
          ),
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
            "FOOD LIST",
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
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(id: id)),
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