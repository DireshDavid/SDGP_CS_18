import 'package:flutter/material.dart';
import 'package:Drowsy/TimerFinal.dart';
import 'camera_page.dart';
import 'package:Drowsy/secondPage.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvancedMonitoring extends StatefulWidget {
  const AdvancedMonitoring({super.key});

  @override
  _AdvancedMonitoringState createState() => _AdvancedMonitoringState();
}

class _AdvancedMonitoringState extends State<AdvancedMonitoring> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green, // your custom color
              leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
        ),
            body: SingleChildScrollView(
                child: Column(children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 50),
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
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
                  const Image(
                    image: AssetImage('Assests/logo.png'),
                    height: 105,
                    width: 105,
                    alignment: FractionalOffset.topCenter,
                  ),
                  const SizedBox(height: 70),
                  Text('AWAKELY ALARM',
                      style: GoogleFonts.arvo(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(0, 0, 0, 0.886))),
                  const SizedBox(height: 70),
                ],
              )),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 244, 235),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 60),
                  const Text(
                    "Advanced monitoring further helps you to stay alert and attentive at the wheel. When you click the button below you will be redirected to the next screen in which you will be asked to click another button to start a timer. When you are ready click the button and the timer will begin. When the timer expires, you will be asked to click a button to check whether you are awake, an alarm sound shall also start ringing (just in case you are not awake). Simply press the \"I'm awake\" button and the timer will restart and continue the process.",
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
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: (Colors.black),
                                    fixedSize: const Size(250, 80),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()));
                                   // Timer file main method called
                                },
                                child: const Text('Turn on alarm',
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
