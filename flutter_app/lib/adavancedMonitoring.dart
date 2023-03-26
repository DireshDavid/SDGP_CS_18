import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'camera_page.dart';class AdvancedMonitoring extends StatefulWidget {


  @override
  _AdvancedMonitoringState createState() => _AdvancedMonitoringState();
}

class _AdvancedMonitoringState extends State<AdvancedMonitoring> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              color: Colors.green,
            ),
            child: Text(
              "ADVANCED\nMONITORING",
              style: TextStyle(color: Color.fromARGB(255, 251, 222, 165), fontSize: 50, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // margin: EdgeInsets.only(top: 220),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Advanced monitoring helps you to stay alert and attentive at the wheel when you're wearing sunglasses. First, a time interval is set. By the end of every time interval, an alarm will be activated and you will have to turn it off. This functionality works in tandem with our sleepiness detector.",
               style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
               maxLines: 7,
               textAlign: TextAlign.center,
               overflow: TextOverflow.visible,
                  ),
          // Container(
          //   width: double.infinity - 150,
          //   margin: EdgeInsets.only(top: 300, left: 75),
          SizedBox(
            height: 150,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Container(
                    height: 50,
                    width: 75,
                    child: Icon(Icons.video_camera_back),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 216),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       primary: (Colors.black),
                  //       fixedSize: Size(250, 70),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(25))),
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => Home()));
                  //   },
                  //   child: Text('Turn on camera',
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold)),
                  // ),
                ]),
              ),
              SizedBox(
                height: 214,
              ),
              // Row(children: [
              //   Container(
              //     height: 50,
              //     width: 50,
              //     color: Colors.red,
              //   ),
              //   SizedBox(
              //     width: 20,
              //   ),
              //   // Container(
              //   //   alignment: Alignment.center,
              //   //   height: 45,
              //   //   width: 220,
              //   //   decoration: BoxDecoration(
              //   //     borderRadius: BorderRadius.all(
              //   //       Radius.circular(20),
              //   //     ),
              //   //     color: Colors.green,
              //   //   ),
              //   //   child: Text("turn on ccamera"),
              //   // ),
              // ])
            ],
          ),
        ]),
      ),
    ])));
  }
}
