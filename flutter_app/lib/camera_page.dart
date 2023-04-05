import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';
  Timer? timer;


  @override
  void initState() {
    super.initState();
    loadCamera();
    loadmodel();
  }

  loadCamera() {
    cameraController = CameraController(cameras![1], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      }
    });
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
          bytesList: cameraImage!.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage!.height,
          imageWidth: cameraImage!.width,
          imageMean: 126.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 2,
          threshold: 0.1,
          asynch: true);
      bool isClosed = false;
      final player = AudioPlayer();
      predictions!.forEach((element) {
        if (element['label'] == 'Closed') {
          isClosed = true;
        }
      });
      setState(() {
        output = isClosed ? 'Closed' : 'Open';
      });
      if (output == 'Closed') {
        if (timer == null || !timer!.isActive) {
          timer = Timer(Duration(seconds: 10), () {
            player.play(AssetSource("Alarm_sound.mp3"));
          });
        }
      } else {
        if (timer != null && timer!.isActive) {
          timer!.cancel();
        }
      }
    }
  }

  loadmodel() async {
    await Tflite.loadModel(
        model: "Assests/Final_model.tflite", labels: "Assests/labels.txt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awakely Detector'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(248, 176, 253, 127),
              Color.fromARGB(248, 102, 190, 109),
              Color.fromARGB(250, 61, 177, 63),
              Color.fromARGB(255, 0, 64, 13),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.grey[800]!,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: !cameraController!.value.isInitialized
                    ? Container(
                        child: const Center(
                          child: Text(
                            'Camera not available',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      )
                    : AspectRatio(
                        aspectRatio: cameraController!.value.aspectRatio,
                        child: CameraPreview(cameraController!),
                      ),
              ),
            ),
            Text(
              output,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: output == 'Closed' ? Colors.red : Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
