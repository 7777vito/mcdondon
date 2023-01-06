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
    description: "大悲咒（梵語：महा करुणा धारनी，羅馬化：Mahā Karuṇā Dhāranī），全名千手千眼觀世音菩薩廣大圓滿無礙大悲心陀羅尼經大悲神咒，又稱大悲心陀羅尼（Mahā Karuṇā-citta Dhāranī）、千手千眼觀音大悲咒（Sahasrabhuja Sahasranetra Avalokiteśvara Mahā Karuṇā Dhāranī）、千手千眼無礙大悲心陀羅尼、無礙大悲陀羅尼、廣大圓滿陀羅尼、滿願陀羅尼、隨心自在陀羅尼、救苦陀羅尼、延壽陀羅尼、大千隨喜陀羅尼、積善果業陀羅尼、速超十地陀羅尼，有時也稱青頸觀音大悲咒（梵語：नीलकण्ठ धारनी，羅馬化：Nīlakaṇṭha Dhāraṇī，義爲「青頸陀羅尼」，是指青頸觀音的咒語），而朝鮮半島則習慣稱之為神妙章句大陀羅尼（韓語：신묘장구대다라니）；是大乘佛教《千手千眼觀世音菩薩大悲心陀羅尼經》（《大悲心陀羅尼經》）中的咒文，漢傳共有八十四句，為梵語構成的咒文章句。",
    title: "Brown Sugar",
    price: 250,
    img:
    "https://www.journee-mondiale.com//medias/grande/images/journee/hamburger.png",
    amount:1,
    favorite: false,
  ),
  Product(
    description: "拉丁語[註 1]（拉丁語：lingua latīna，IPA：[ˈlɪŋɡʷa laˈtiːna]），是印歐語系的義大利語族語言，於古羅馬廣泛使用，至少可追溯至羅馬帝國的奧古斯都皇帝時期，當時所使用的書面語稱為「古典拉丁語」。拉丁語是最早在拉提姆地區（今義大利的拉齊奧區）和羅馬帝國使用的語言之一。雖然現在拉丁語通常被認為是一種死語言，也有一部分認為是瀕危語言，但拉丁語在梵蒂岡仍被列為官方語言之一。此外，仍有少數基督宗教神職人員及學者可以流利地使用拉丁語。羅馬天主教傳統上用拉丁語作為正式會議的語言和禮拜儀式用的語言，此外，許多西方國家的大學、高中仍然提供有關拉丁語的課程。",
    title: "Cheesy Jalapenos",
    price: 270,
    img:
    "https://huggysbar.com/wp-content/uploads/2019/06/Cheesy_Jalapenos.png",
    amount:1,
    favorite: false,
  ),
  Product(
    description: "英語（英語：English）直譯為「英吉利語」、「英格蘭語」或「英倫語」，是發展於西歐英格蘭地區的一支西日耳曼語言，是目前唯一具有全球通用語和世界語言地位的語言[4][5]，也是多數國家和國際組織的官方語言。英語是全球使用最廣泛的日耳曼語（至少70%的日耳曼語使用者是在說英語），也是使用範圍最廣的印歐語言。",
    title: "Brown Sugar",
    price: 210,
    img:
    "https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c1a8.png",
    amount:1,
    favorite: true,
  ),
  Product(
    description: "原始日耳曼語（英語：Proto-Germanic），或曰共同日耳曼語（Common Germanic），是猜想中存在的一個所有日耳曼語族語言的共同祖先[註 1]。原始日耳曼語的相關內容，並非以存留至今的文件，來證明其詞根的形式等的，而是以比照法來重構的。另外，有些人認為，有些約於西元200年左右寫成，並存留至今的盧恩字母寫成的碑銘，其題字裡的語言是原始諾爾斯語或甚至於是直接從原始日耳曼語發展而來的晚期共同日耳曼語。有人認為，有些存在於非日耳曼語言當中的日耳曼語言借詞，被認為是在原始日耳曼語時候就被借入這些語言的。例如芬蘭語和愛沙尼亞語的kuningas（意即「國王」）這個詞，就和原始日耳曼語的*kuningaz這個字的形式相似[2]；另外，原始日耳曼語本身是一種由原始印歐語發展出來的語言。",
    title: "Speed Burger",
    price: 900,
    img:
    "https://holly.paheal.net/_images/e28e3076236eff37065d36416001263e/5424912%20-%20Bocchi_the_Rock%21%20Hitori_Gotou%20Nijika_Ijichi%20z-05.jpg",
    amount:1,
    favorite: false,
  ),
  Product(
    description: "克羅埃西亞共和國（克羅埃西亞語：Republika Hrvatska），通稱克羅埃西亞（克羅埃西亞語：Hrvatska），是位於東南歐、地中海和巴爾幹半島交會處的單一議會共和制國家，首都與最大城市為札格瑞布。克國將行政區劃分為20個縣與一個直轄市兼首都的札格瑞布，其領土面積為56,538平方公里。克羅埃西亞氣候多樣，同時具備大陸性與地中海型氣候，並於亞得里亞海沿岸擁有超過1000座島嶼。2021年克羅埃西亞人口約為389萬人，多數為克羅埃西亞人，自從克羅埃西亞由南斯拉夫獨立後至今該國如同大部分巴爾幹半島國家一樣人口持續減少。",
    title: "Brown Sugar",
    price: 210,
    img:
    "http://french.peopledaily.com.cn/NMediaFile/2016/0206/FOREIGN201602060850000565854639675.png",
    amount:1,
    favorite: false,
  ),

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