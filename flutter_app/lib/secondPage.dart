import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Drowsy/adavanced_monitoring.dart';
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
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            //Add Background gradient colour
                            colors: [
                          Color.fromARGB(248, 179, 244, 138),
                          Color.fromARGB(248, 90, 182, 98),
                          Color.fromARGB(249, 9, 81, 11),
                          Color.fromARGB(255, 0, 64, 13),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 80),
                          const Image(
                            //Adding logo to the page
                            image: AssetImage('Assests/logo.png'),
                            height: 105,
                            width: 105,
                            alignment: FractionalOffset.topCenter,
                          ),
                          const SizedBox(height: 165),
                          Container(
                            height: 500,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 245, 244, 235),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(height: 70),
                                  ElevatedButton( //Adding Button to the Awakely Detector
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (Colors.black),
                                        fixedSize: const Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    onPressed: () {
                                      //Method which navigate to the camera page
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const Home()));
                                    },
                                    child: const Text('AWAKELY DETECTOR',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 80),
                                  ElevatedButton( //Adding Button to the Awakely Alarm
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: (Colors.black),
                                        fixedSize: const Size(275, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    onPressed: () {
                                      //Method which navigate to the advanced monitoring page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AdvancedMonitoring()));
                                    },
                                    child: const Text('AWAKELY ALARM',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 30),
                                  const Text(
                                    'Choose if you are wearing sunglasses',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 7,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  const SizedBox(height: 120),

                                ]
                            ),
                          ),
                        ]
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
