import 'package:flutter/material.dart';

import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text(
                  "HAMBERGER",
                  style: TextStyle(fontSize: 300),
                ),
              ],
            ),
          ),
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
