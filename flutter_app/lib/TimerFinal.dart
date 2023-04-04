import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:Drowsy/adavanced_monitoring.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  bool _isPlaying = false;
  int _counter = 10;
  late Timer _timer;
  bool _timerStarted = false;

  void _startTimer(){
    _counter = 10;
    _timerStarted = true;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter > 0){
          _counter--;
        } else {
          _timer.cancel();
          _isPlaying = true;
          player.play(AssetSource("Alarm_sound.mp3")).then((_) {
            _isPlaying = false;
            _timerStarted = false;
          });
        }
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _counter = 10;
    });
    if (_isPlaying) {
      player.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdvancedMonitoring())
            );
            _stopTimer();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _timerStarted ? Text(
                "Timer has started",
            style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30)) : Container(),
            (_counter > 0) ?
            Container() :
            Text(
              "Are you awake?",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () => _startTimer(),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fixedSize: Size(345, 55)
              ),
              child: Text(_counter > 0 ? "Start Timer" : "I'm awake"),
            ),
            if (_counter == 0)
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: _stopTimer,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fixedSize: Size(350, 60)
                  ),
                  child: Text("End"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
