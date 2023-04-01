import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Drowsy/adavancedMonitoring.dart';
import 'package:Drowsy/camera_page.dart';

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
                            //background colour
                            colors: [
                          Color.fromARGB(248, 179, 244, 138),
                          Color.fromARGB(248, 90, 182, 98),
                          Color.fromARGB(249, 9, 81, 11),
                          Color.fromARGB(255, 0, 64, 13),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 80),
                          Image(
                            //adding logo
                            image: AssetImage('Assests/logo.png'),
                            height: 105,
                            width: 105,
                            alignment: FractionalOffset.topCenter,
                          ),
                          SizedBox(height: 165),
                          Container(
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 245, 244, 235),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 70),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    onPressed: () {
                                      //method which navigate to standard monitoring page
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const Home()));
                                    },
                                    child: Text('STANDARD MONITORING',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 80),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    onPressed: () {
                                      //method which navigate to advanced monitoring page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AdvancedMonitoring()));
                                    },
                                    child: Text('ADVANCED MONITORING',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Choose if you are wearing sunglasses',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 5,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  SizedBox(height: 120),
                                  /*Text(
                                    'By Pressing these buttons you are agreeing to our terms and conditions.',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 4, 4, 4),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 6,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )*/
                                ]),
                          ),
                        ]),
                  )
                ],
              ),
            )));
  }
}
