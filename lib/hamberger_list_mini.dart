import 'package:flutter/material.dart';
import 'package:hamberger_app/widget.dart';

class HambergerListMini extends StatefulWidget {
  @override
  _HambergerListMiniState createState() => _HambergerListMiniState();
}

class _HambergerListMiniState extends State<HambergerListMini> {
  int items = 10;

  Widget bacon1 = Container(
    height: 100,
    child: Image.asset("images/burger1.png"),
  );

  Widget bacon3 = Container(
    height: 120,
    child: Image.asset("images/burger3.png"),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.only(
                          left: 10, right: index == items ? 20 : 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(reverse ? "Chiken Burger" : "Bacon Burger", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    )
                  ],
                ),
                Positioned(
                    top: reverse ? 20 : -8,
                    left: reverse ? 0 : -10,
                    child: GestureDetector(
                  onTap: () {},
                  child: reverse ? bacon1 : bacon3,
                ))
              ],
            );
          }),
    );
  }
}
