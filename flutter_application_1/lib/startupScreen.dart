import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/secondpage.dart';

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
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color.fromARGB(248, 76, 135, 252),
                          Color.fromARGB(251, 1, 95, 203),
                          Color.fromARGB(252, 1, 71, 183),
                          Color.fromARGB(255, 0, 38, 77),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('Assests/images.jpg'),
                            height: 170,
                            width: 100,
                            alignment: FractionalOffset.topCenter,
                          ),
                          Text('Drow-zy',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 250, 218, 154),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(height: 50),
                          Text(
                            'SAFETY FOR ALL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 150),
                          Container(
                            height: 300,
                            width: 350,
                            //color: Colors.black,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 245, 241, 218),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Welcome to our driver drowsiness prevention tool. You can help ensure the safety of yourself and others on the road.',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        //fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 5,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  SizedBox(height: 50),
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
                                  )
                                ]),
                          )
                        ]),
                  )
                ],
              ),
            )));
  }
}
