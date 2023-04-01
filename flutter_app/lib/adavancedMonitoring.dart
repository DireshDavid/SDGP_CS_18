import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:Drowsy/TimerFinal.dart';
import 'camera_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvancedMonitoring extends StatefulWidget {
  @override
  _AdvancedMonitoringState createState() => _AdvancedMonitoringState();
}

class _AdvancedMonitoringState extends State<AdvancedMonitoring> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 50),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(248, 176, 253, 127),
                      Color.fromARGB(248, 102, 190, 109),
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //adding logo
                  Image(
                    image: AssetImage('Assests/logo.png'),
                    height: 105,
                    width: 105,
                    alignment: FractionalOffset.topCenter,
                  ),
                  SizedBox(height: 70),
                  Text('ADAVANCED MONITORING',
                      style: GoogleFonts.arvo(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, 0.886))),
                  SizedBox(height: 70),
                ],
              )),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 244, 235),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 60),
                  Text(
                    "Advanced monitoring helps you to stay alert and attentive at the wheel when you're wearing sunglasses. First, a time interval is set. By the end of every time interval, an alarm will be activated and you will have to turn it off. This functionality works in tandem with our sleepiness detector.",
                    style: TextStyle(
                        height: 1.5,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic),
                    maxLines: 7,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 50),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: (Colors.black),
                                    fixedSize: Size(250, 80),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                  main(); // Timer file main method called
                                },
                                child: Text('Turn on camera',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ]))));
  }
}
