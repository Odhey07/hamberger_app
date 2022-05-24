import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:hamberger_app/burgerPage.dart';
import 'package:hamberger_app/widget.dart';
import 'main.dart';

class HambergerList extends StatefulWidget {
  final int row;
  HambergerList({this.row = 2});
  @override
  _HambergerListState createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: widget.row == 2 ? 310 : 240,
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: items == index ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag,
                          arguments:
                              reverse ? " Bacon Burger" : "Chiken Burger");
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? " Bacon Burger" : "Chiken Burger",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "7000fr",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.teal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(15),
                      )),
                    ),
                  ),
                ),
                Positioned(
                    top: reverse ? 60 : 10,
                    right: reverse ? 80 : 55,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BurgerPage.tag,
                            arguments:
                                reverse ? " Bacon Burger" : "Chiken Burger");
                      },
                      child: reverse ? bacon1 : bacon3,
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
