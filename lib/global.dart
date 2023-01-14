//import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class payment{
  final String title,img;
  final int color;
  bool select;
  payment({required this.title,required this.img,required this.select,required this.color});
}

List<payment>PaymentList=[
  payment(
      title: "Line Pay",
      img: "https://upload.wikimedia.org/wikipedia/commons/f/fb/LINE_Pay_logo%282019%29.png",
      select: false,
    color: 0xFF4efc9d

  ),
  payment(
      title: "VISA",
      img: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1200px-Visa_Inc._logo.svg.png",
      select: false,
    color: 0xff1a1f71
  ),
  payment(
      title: "Mastercard",
      img: "https://seeklogo.com/images/M/mastercard-logo-0B2A04833C-seeklogo.com.png",
      select: false,
    color: 0xfff79e1b
  ),
];

class Product {
  final String title, description, img;
  final int price;
  int amount;
  bool favorite=false;
  Product({required this.title,required this.description,required this.price,required this.img,required this.amount,required this.favorite});
  // Product(String title, String description, String price, String img){
  //   this.title=title;
  //   this.description
  //   this.price
  //   this.img
  // }

}

//List<int> shoppingcart=[1,1,1,1,1];
List<Product> productsList = [
  Product(
    description: "香甜哈密瓜以及西瓜切成方磚方便入口，搭配菲達起士意外的對味，菲達起士是由綿羊奶以及山羊奶所製成，起士底蘊香濃卻不腥，搭配水果能有另一番巧妙口味，不喜歡吃葉菜沙拉的朋友相當值得嘗試！",
    title: "起士鮮果沙拉",
    price: 250,
    img:
    "https://png.pngtree.com/png-clipart/20190811/ourlarge/pngtree-fruit-platter-salad-png-image_1636499.jpg",
    //https://zh.pngtree.com/freepng/fruit-platter-salad_4976478.html
    amount:1,
    favorite: true,
  ),
  Product(
    description: "歐爸親手做出的一到菜。",
    title: "韓式泡菜",
    price: 270,
    img:
    "https://png.pngtree.com/element_our/png_detail/20181018/refreshing-kimchi-cabbage-png_165064.jpg",
    //https://zh.pngtree.com/freepng/refreshing-kimchi-cabbage_3662642.html
    amount:1,
    favorite: true,
  ),
  Product(
    description: "漢堡（英語：Hamburger，又簡稱burger），是以圓形麵包內夾絞肉的食物為公認的美式速食代表。餡料以漢堡排為主，並附夾上若干配料（以蔬菜和起司為主）和調味料。英語「hamburger」意為「來自漢堡城的包」，故既可以用來指整個漢堡，也可以單指漢堡排本身。",
    title: "Brown Sugar",
    price: 210,
    img:
    "http://vito7777.asuscomm.com/foodlist/Bigbuger.png",
    amount:1,
    favorite: true,
  ),
  Product(
    description: "利用PhotoShop手繪製作的雙層牛肉起司堡，將手作的麵包切半，炭烤過後再把兩片碳烤後的牛肉漢堡肉加入，並增加兩片起司片所製成。",
    title: "Double CheeseBurger",
    price: 900,
    img:
    "http://vito7777.asuscomm.com/foodlist/dobule%20cheese.png",
    amount:1,
    favorite: true,
  ),
  Product(
    description: "透過內功提升火力將飯快速完成，使用屠龍斬切出完美的叉燒放上，加上青江菜點綴，最後使用少林絕學火雲掌將蛋煎熟，其中有偷加入洋蔥，讓這碗飯吃得人感動淚流",
    title: "黯然銷魂飯",
    price: 210,
    img:
    "http://vito7777.asuscomm.com/foodlist/an_ran_xiao_hunfan.jpg",
    amount:1,
    favorite: true,
  ),
  Product(
    description: "香甜哈密瓜以及西瓜切成方磚方便入口，搭配菲達起士意外的對味，菲達起士是由綿羊奶以及山羊奶所製成，起士底蘊香濃卻不腥，搭配水果能有另一番巧妙口味，不喜歡吃葉菜沙拉的朋友相當值得嘗試！",
    title: "起士鮮果沙拉",
    price: 250,
    img:
    "https://png.pngtree.com/png-clipart/20190811/ourlarge/pngtree-fruit-platter-salad-png-image_1636499.jpg",
    //https://zh.pngtree.com/freepng/fruit-platter-salad_4976478.html
    amount:1,
    favorite: true,
  ),
];

List<String>advlist=[
  "http://vito7777.asuscomm.com/foodlist/adv/free_transportation.png",
  "http://vito7777.asuscomm.com/foodlist/adv/kimchionsale.png",
  "http://vito7777.asuscomm.com/foodlist/adv/yearsale.png",
];

// class Category {
//   final String title;
//   final IconData icon;
//
//   Category({this.title, this.icon});
// }
//
// List<Category> cats = [
//   Category(
//     icon: MaterialCommunityIcons.hamburger,
//     title: "Hamburger",
//   ),
//   Category(
//     icon: MaterialIcons.local_pizza,
//     title: "Pizza",
//   ),
//   Category(
//     icon: FontAwesome.coffee,
//     title: "Coffee",
//   ),
//   Category(
//     icon: MaterialIcons.local_drink,
//     title: "Milk",
//   ),
//   Category(
//     icon: MaterialCommunityIcons.tea,
//     title: "Tea",
//   ),
// ];