import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Drowsy/secondpage.dart';
import 'adavancedMonitoring.dart';
import 'package:google_fonts/google_fonts.dart';

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
                          Color.fromARGB(248, 176, 253, 127),
                          Color.fromARGB(248, 102, 190, 109),
                          Color.fromARGB(250, 61, 177, 63),
                          Color.fromARGB(255, 0, 64, 13),
                        ])),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //adding logo
                          SizedBox(height: 50),
                          Image(
                            image: AssetImage('Assests/logo.png'),
                            height: 105,
                            width: 105,
                            alignment: FractionalOffset.topCenter,
                          ),
                          SizedBox(height: 60),
                          //Name
                          Text('AWAKELY',
                              style: GoogleFonts.junge(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromRGBO(0, 0, 0, 0.886))),
                          /*Image(
                            image: AssetImage('Assests/name.png'),
                            height: 200,
                            width: 200,
                            alignment: FractionalOffset.topCenter,
                          ),*/

                          SizedBox(height: 20),
                          Text(
                            'SAFETY FOR ALL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 71, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 100),
                          Container(
                            height: 439,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 245, 244, 235),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //introduction about app
                                  Text(
                                    'Welcome to our driver drowsiness prevention tool. By using this tool, you can help ensure the safety of yourself and others on the road.',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 7,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  Padding(padding: EdgeInsets.all(40)),
                                  //SizedBox(height: 70),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            (Color.fromARGB(255, 31, 165, 0)),
                                        fixedSize: Size(250, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    onPressed: () {
                                      //method which navigate to second page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage()));
                                    },
                                    child: Text('GET STARTED', //button
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                          ),
                          //SizedBox(height: 10),
                        ]),
                  )
                ],
              ),
            )));
  }
}
