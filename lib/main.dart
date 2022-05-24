import 'package:flutter/material.dart';

import 'header.dart';
import 'categories.dart';
import 'hambergerList.dart';
import 'burgerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.orange,
        canvasColor: Colors.teal,
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.teal,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
      ),
      home: Hamberger(),
      routes: {
        BurgerPage.tag : (_)=>BurgerPage(),
      },
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240,1 ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deviver Me"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),
          Header(),
          Categories(),
         HambergerList(row :1),
         HambergerList(row :2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home, color: Colors.white),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius : BorderRadius.vertical(top: Radius.circular(45),),
    child: Container(
        color: Colors.black38,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
