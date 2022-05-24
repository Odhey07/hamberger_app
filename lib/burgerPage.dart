import 'package:flutter/material.dart';

import 'package:hamberger_app/widget.dart';
import 'hamberger_list_mini.dart';

class BurgerPage extends StatefulWidget {
  static const tag = "burger_page";
  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int number = 0;

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 15,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/cat1.jpeg"),
                radius: 13,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Burger",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text(
                  "Deliver Me BURGER. Fast delivery an great service.",
                  style: TextStyle(fontSize: 14, color: Colors.white54),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    bacon1,
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),
                          child: Text(
                            "7000 franc",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheet(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(45),
          )),
          onClosing: () {},
          builder: (context) {
            return ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
              child: Container(
                width: size.width,
                color: Color.fromRGBO(240, 240, 240, 1),
                height: size.height / 1.6,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Descripton",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )),
                    Spacer(),
                    HambergerListMini(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2),
                            ),

                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState( (){
                                      number = number - 1;
                                    }
                                    );
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Theme.of(context).accentColor,
                                ),
                                Text(number.toString()),
                                IconButton(
                                  onPressed: () {
                                    setState( (){
                                      number = number + 1;
                                    }
                                    );
                                  },
                                  icon: Icon(Icons.add),
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: MaterialButton(
                              color: Theme.of(context).accentColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45)),
                              onPressed: () {},
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 45,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
