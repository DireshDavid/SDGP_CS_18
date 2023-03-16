import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.green,
            ),
            child: Text(
              "ADVANCE\nMONITORING",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 220),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("hello i am .........")],
            ),
          ),
          Container(
            width: double.infinity - 150,
            margin: EdgeInsets.only(top: 300, left: 75),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.green,
                    ),
                    child: Text("Turn on camera"),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.green,
                    ),
                    child: Text("turn on ccamera"),
                  ),
                ])
              ],
            ),
          )
        ]),
      ),
    );
  }
}
