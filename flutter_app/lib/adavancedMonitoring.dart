import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:Drowsy/TimerFinal.dart';
import 'camera_page.dart';class AdvancedMonitoring extends StatefulWidget {


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
            child: Column(
            children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50),
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              color: Colors.green,
            ),
            child: Text(
              "ADVANCED\nMONITORING",
              style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('Assests/logo.png'),
                  height: 200,
                  width: 200,
                  alignment: FractionalOffset.topCenter,
                ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            // margin: EdgeInsets.only(top: 220),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
          SizedBox(
            child: Center(
              child: Container(
                height: 50,
                width: 100,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Padding(
          padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: (Colors.black),
                        fixedSize: Size(70, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()));
                      main(); // Timer file main method called
                    },
                    child: Text(
                        'Turn on camera',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 91.7,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 50),
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.green,
                ),
              )],
          ),
        ]),
      ),
    ])]))));
  }
}



