import 'dart:async';
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
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  int _counter = 10;
  late Timer _timer;

  void _startTimer(){
    _counter = 10;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter > 0){
          _counter--;
        } else {
          _timer.cancel();
          player.play(AssetSource("Alarm_sound.mp3"));
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            (_counter > 0) ?
            Text("") :
            Text(
                "Are you awake?",
                style: TextStyle(color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 40),
            ),
            Text("$_counter",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            ElevatedButton(
              onPressed: () => _startTimer(),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: CircleBorder(),
                fixedSize: Size(110, 110)
              ),
              child: Text("Start Timer"),)
          ],
        ),
      ),
    );
  }
}
