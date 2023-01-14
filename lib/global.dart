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
    amount:0,
    favorite: false,
  ),
  Product(
    description: "歐爸親手做出的一到菜。",
    title: "韓式泡菜",
    price: 270,
    img:
    "https://png.pngtree.com/element_our/png_detail/20181018/refreshing-kimchi-cabbage-png_165064.jpg",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "漢堡（英語：Hamburger，又簡稱burger），是以圓形麵包內夾絞肉的食物為公認的美式速食代表。餡料以漢堡排為主，並附夾上若干配料（以蔬菜和起司為主）和調味料。英語「hamburger」意為「來自漢堡城的包」，故既可以用來指整個漢堡，也可以單指漢堡排本身。",
    title: "Big HAMBURGER",
    price: 210,
    img:
    "https://i.ibb.co/sgRZ2F4/Bigbuger.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "利用PhotoShop手繪製作的雙層牛肉起司堡，將手作的麵包切半，炭烤過後再把兩片碳烤後的牛肉漢堡肉加入，並增加兩片起司片所製成。",
    title: "Double CheeseBurger",
    price: 900,
    img:
    "https://i.ibb.co/pwbWs7H/dobule-cheese.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "透過內功提升火力將飯快速完成，使用屠龍斬切出完美的叉燒放上，加上青江菜點綴，最後使用少林絕學火雲掌將蛋煎熟，其中有偷加入洋蔥，讓這碗飯吃得人感動淚流",
    title: "黯然銷魂飯",
    price: 210,
    img:
    "https://i.ibb.co/BZL101t/an-ran-xiao-hunfan.jpg",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "波加曼類似於企鵝，牠的背和頭頂都是深藍色的，擁有一個黃色的喙。波加曼眼睛周圍是白色，在眼睛中間還有一個淺藍色的王冠狀圖形。它長長的絨毛能抵禦寒冷。",
    title: "波加曼玩具套餐",
    price: 250,
    img:
    "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c32b.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "市售最方便吃的酥脆玉米Taco塔可餅，是墨西哥道地傳統料理最不可缺的風味,可當搭配墨西哥玉米餅調味粉料理成的牛絞肉、酪梨醬、酸奶、雲豆泥、墨西哥辣椒、切達起司，及為餐廳級塔可餅料理",
    title: "塔克餅沙拉",
    price: 250,
    img:
    "https://assets.stickpng.com/thumbs/5ea4588bb033640004a14ad2.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "1. 將嫩豆腐切成小丁狀備用。 2. 熱鍋下香油、花椒粒，炒到拋香，過濾備用。 3. 同鍋下花椒油(留1小匙備用)，下豬絞肉以中火先爆香，下蒜碎、辣椒末、辣豆瓣炒香。 4. 下番茄醬、水、糖、白胡椒、嫩豆腐丁、鹽，煨煮收汁。",
    title: "麻婆豆腐",
    price: 270,
    img:
    "https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-mapo-tofu-png-image_6145812.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "將一般起司切成片狀並放在漢堡排上方而成；不過起司漢堡也可以藉由添加不同菜色或者在組合方式上做出改變，例如常常便會另外加上生菜、番茄、洋蔥、酸黃瓜（Pickled cucumber）、芥末醬、美乃滋、番茄醬或者是鹽和黑胡椒等",
    title: "Brown Sugar",
    price: 210,
    img:
    "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c1a8.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "木木梟是是圓鳥形的寶可夢，面部呈白色，形狀類似於一個∞。除了尾部羽毛為綠色，木木梟全身披著褐色的羽毛。牠的喙為半白半橙色，胸口有兩片綠葉呈領結狀，還有一對短短的橙色鳥爪。",
    title: "木木梟玩具套餐",
    price: 900,
    img:
    "https://assets.stickpng.com/thumbs/5859604c4f6ae202fedf2854.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "皮卡丘是一隻電氣鼠，全身的皮毛都是黃色的，背上有兩條褐色的條紋，尾巴是像鋸齒狀的閃電，與身體相接的部分也有一片褐色的皮毛。它有小小的嘴巴，以及黑色的眼睛，臉頰上有著紅色的電力袋，長長的耳朵尖端是黑色的。牠的前爪短而粗，有五趾，後爪則只有三趾。越是能製造出強大電流的皮卡丘，臉頰上的囊就越柔軟，同時也越有伸展性。由於它臉頰上的袋子中儲存了電能，觸摸了之後會覺得麻麻的。它跑動的時候是用四條腿著地快速地奔跑，但是更多時候牠是站立著的並用兩隻後腳走路。",
    title: "皮卡丘玩具套餐",
    price: 210,
    img:
    "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c319.png",
    amount:0,
    favorite: false,
  ),
  Product(
    description: "墨西哥餅皮變成最歡樂的披薩，打上雞蛋，鋪上簡單任意食材，撒上法式香草料、海鹽、黑胡椒粒、綜合菇類和雞胸肉丁，多重口感與風味層層交疊。",
    title: "墨西哥捲餅",
    price: 250,
    img:
    "https://assets.stickpng.com/thumbs/58727fe0f3a71010b5e8ef0d.png",
    amount:0,
    favorite: false,
  ),
];

List<String>advlist=[
  "https://i.ibb.co/y5Z1DSH/yearsale.png",
  "https://i.ibb.co/GFbpd3h/free-transportation.png",
  "https://i.ibb.co/QpLNSny/kimchionsale.png",
  "https://www.moshimoshi-nippon.jp/wp/wp-content/uploads/2022/02/unnamed-4.jpg",
  "https://img.game-news24.com/2022/07/Pokemon-Happy-Meals-Reportedly-Returning-to-McDonald-s.jpeg",
  "https://static.newmobilelife.com/wp-content/uploads/2018/11/RanRanRu.jpg",
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