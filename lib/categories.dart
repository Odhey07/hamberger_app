import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int elementselect = 0;
  @override
  int items = 10;
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                  child: GestureDetector(onTap: (){
                    setState((){
                      elementselect = index;
                    });
                  },
                    child: Card(
                      color: index == elementselect ? Colors.black.withOpacity(0.7) : Colors.white,
                      margin: EdgeInsets.all(10),
                      elevation: 3,
                      child: Icon(
                        Icons.fastfood,
                        color: index== elementselect ? Colors.white : Colors.black.withOpacity(0.7),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                    child: Row(
                      children: [
                        Spacer(),
                        Text("Burger"),
                        Spacer(),
                      ],
                    ),
                    width: 90,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
