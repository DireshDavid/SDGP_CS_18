import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Drowsy/secondpage.dart';
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
                    decoration: const BoxDecoration(

                        //background gradient colour
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
                          //Adding logo to the page
                          const SizedBox(height: 50),
                          const Image(
                            image: AssetImage('Assests/logo.png'),
                            height: 105,
                            width: 105,
                            alignment: FractionalOffset.topCenter,
                          ),
                          const SizedBox(height: 60),
                          //Name
                          Text('AWAKELY', //Adding App name to the page
                              style: GoogleFonts.junge(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromRGBO(0, 0, 0, 0.886))),

                          const SizedBox(height: 20),
                          const Text(
                            'SAFETY FOR ALL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 94, 78, 8),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 100),
                          Container(
                            height: 439,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 245, 244, 235),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //introduction about app
                                  const Text(
                                    'Welcome to Awakely! We are excited to offer you a tool that prioritizes your safety on the road. Thank you for choosing our app, and remember, drive safely, take breaks when needed, and stay alert on the road.',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        height: 1.7,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 6,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  ),
                                  const Padding(padding: EdgeInsets.all(35)),
                                  //SizedBox(height: 70),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: (Colors.black),
                                        fixedSize: const Size(280, 80),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35))),
                                    onPressed: () {
                                      //Method which navigate to the second page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage()));
                                    },
                                    child: const Text('GET STARTED', //Button to navigate second page
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]
                            ),
                          ),
                          //SizedBox(height: 10),
                        ]),
                  )
                ],
              ),
            )
        )
    );
  }
}
