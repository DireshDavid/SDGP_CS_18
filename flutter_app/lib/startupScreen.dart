import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Drowsy/secondpage.dart';
import 'adavancedMonitoring.dart';

class StartupScreen extends StatefulWidget {
  @override
  _StartupScreenState createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
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
                        //color: Color.fromARGB(255, 0, 33, 95),
                        //background colour
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color.fromARGB(248, 65, 170, 0),
                          Color.fromARGB(250, 26, 120, 34),
                          Color.fromARGB(252, 1, 71, 2),
                          Color.fromARGB(255, 0, 64, 13),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Logo
                          Image(
                            image: AssetImage('Assests/logo.png'),
                            height: 200,
                            width: 200,
                            alignment: FractionalOffset.topCenter,
                          ),
                          //Name
                          Text('AWAKELY',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 251, 222, 165),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 10),
                          Text(
                            'SAFETY FOR ALL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 300,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 245, 241, 218),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Welcome to our driver drowsiness prevention tool. By using this tool, you can help ensure the safety of yourself and others on the road.',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 7,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  SizedBox(height: 0),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: Size(250, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage()));
                                    },
                                    child: Text('GET STARTED',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                          ),
                          SizedBox(height: 0),
                        ]),
                  )
                ],
              ),
            )));
  }
}
