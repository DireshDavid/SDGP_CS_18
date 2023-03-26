import 'dart:async';
import 'package:drowzea/main.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(41, 40, 40, 1),
      )
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  int _counter = 10;
  late Timer _timer;
  bool _timerExpired = false;

  void _startTimer(){
    _counter = 10;
    _timerExpired = false;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter > 0){
          _counter--;
        } else {
          _timer.cancel();
          _timerExpired = true;
          player.play('audio_file.mp3' as Source);
        }
      });
    });
  }

  void _restartTimer(){
    _timerExpired = false;
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _timerExpired ?
            ElevatedButton(
              onPressed: () => _restartTimer(),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: Size(200, 50),
              ),
              child: Text("Restart Timer"),) :
            _counter > 0 ?
            Text("") :
            Text(
              "Are you awake?",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "$_counter",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () => _startTimer(),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: CircleBorder(),
                fixedSize: Size(110, 110),
              ),
              child: Text("Start Timer"),
            ),
          ],
        ),
      ),
    );
  }
}

