import 'package:flutter/material.dart';
import 'package:mcdondon/global.dart';
import 'package:mcdondon/counter.dart';
import 'package:flutter/foundation.dart';

class Screen3 extends StatefulWidget {
  //bool showreturn=false;
  //Screen3({Key? key, bool showreturn=false}) : super(key: key);
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  int number=0;

  methodInParent(){setState(()=>debugPrint("parent call"));}

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading:IconButton(
      //               icon: Icon(
      //                 Icons.chevron_left,
      //                 color: Colors.black,
      //               ),
      //               onPressed: () => Navigator.pop(context),
      //             ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Visibility(
          //   visible: widget.showreturn,
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.chevron_left,
          //       color: Colors.black,
          //     ),
          //     onPressed: () => Navigator.pop(context),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "我的訂單",
                    style: TextStyle(color:Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ...List.generate(productsList.length, (id) {
                          return (productsList[id].amount==0)?(SizedBox.shrink()):( ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                "${productsList[id].img}",
                                width: 70,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            title: Text(
                              "${productsList[id].title}",
                              style: TextStyle(color:Colors.redAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              child: Counter(itemid: id,funtion: methodInParent,),
                            ),
                            //trailing:claprice(id: id),
                            trailing:Text("\$${productsList[id].price*productsList[id].amount}"),
                          ));
                        }).toList(),
                        Padding(//額外增加
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ListTile(
                            leading: Container(
                              width: 70,
                              height: double.infinity,
                              // margin: EdgeInsets.only(top: 15),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Icon(Icons.dashboard),
                            ),
                            title: Text(
                              "服務費",
                              style: TextStyle(color:Colors.redAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            trailing: Text((productsList.map((element)=>element.amount*element.price).fold(0, (previous, current) => previous+ current)==0)?("\$0"):(
                                "\$30"),
                              style: TextStyle(color:Colors.redAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[//這裡有問題 假設手機螢幕較小 會因為上下間距小 payment上下無法升縮 有被擠壓
                  Text(
                    "付費方式確認",
                    style: TextStyle(color:Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          ...List.generate(PaymentList.length, (i) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  for(int x=0;x<PaymentList.length;x++){
                                    PaymentList[x].select=false;
                                  }
                                  PaymentList[i].select=true;
                                });
                              },
                              child: Center(
                                child: AnimatedContainer(
                                  width: PaymentList[i].select ? 160.0 : 130.0,
                                  height: PaymentList[i].select ? 180.0 : 150.0,
                                  // color: Color.fromARGB(255, 255, 255, 255),
                                  alignment: Alignment.center,
                                  duration: const Duration(microseconds: 300000),
                                  curve: Curves.fastOutSlowIn,
                                  child: Container(
                                    padding: const EdgeInsets.all(15.0),
                                    margin: const EdgeInsets.only(right: 15),
                                    alignment: Alignment.topLeft,
                                    width: MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                      color: Color(PaymentList[i].color),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                            PaymentList[i].title,
                                            style: TextStyle(color:Colors.redAccent,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500)),
                                        Spacer(),
                                        Text("\$${(productsList.map((element)=>element.amount*element.price).fold(0, (previous, current) => previous+ current))+((productsList.map((element)=>element.amount*element.price).fold(0, (previous, current) => previous+ current)!=0)?(30):(0))}",
                                          style: TextStyle(color:Colors.redAccent,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        //Image.asset("assets/img/mastercard.png"),
                                        Image.network(PaymentList[i].img)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );

                          }),
                          InkWell( //add
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "確定結帳",
                        style: TextStyle(color:Colors.redAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                      onPressed: () {},
                      //style:ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.green)),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
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
          ),
        ],
      ),
    );
  }
}
class claprice extends StatefulWidget {
  final int id;
  claprice({required this.id});

  @override
  State<claprice> createState() => _clapriceState();
}

class _clapriceState extends State<claprice> {
  @override
  Widget build(BuildContext context){
    // return Text(
    //     "\$${(productsList[widget.id].price)!*productsList[widget.id].amount}",
    //     style: TextStyle(color:Colors.redAccent,
    //     fontSize: 20,
    //     fontWeight: FontWeight.w500));
    return Text("\$${productsList[widget.id].price*productsList[widget.id].amount}");
  }
}