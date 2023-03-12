import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color.fromARGB(248, 67, 176, 0),
                          Color.fromARGB(249, 30, 137, 39),
                          Color.fromARGB(251, 1, 78, 2),
                          Color.fromARGB(255, 0, 56, 11),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('Assests/logo.png'),
                            height: 200,
                            width: 200,
                            alignment: FractionalOffset.topCenter,
                          ),
                          SizedBox(height: 50),
                          Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 248, 244, 225),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    onPressed: () {},
                                    child: Text('STANDARD MONITORING',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 70),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    onPressed: () {},
                                    child: Text('ADVANCED MONITORING',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    'Choose if you are wearing sunglasses',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 17,
                                        //fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 5,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                ]),
                          ),
                          SizedBox(height: 100),
                          Text(
                            'By Pressing these buttons you are agreeing to our terms and conditions.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 252, 252),
                              fontSize: 14,
                            ),
                            maxLines: 6,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                          )
                        ]),
                  )
                ],
              ),
            )));
  }
}
