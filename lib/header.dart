import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 3,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(45),
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 2),
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/cat1.jpeg"),
                                radius: 30,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mr Chat",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    "Membre Or",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "18000 franc",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: 50,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Que veux tu manger ?",
                        contentPadding: EdgeInsets.only(left: 20),
                        suffixIcon: Icon(Icons.search_rounded)
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
