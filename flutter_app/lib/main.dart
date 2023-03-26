import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'startupScreen.dart';
List<CameraDescription>? cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Startup UI',
      debugShowCheckedModeBanner: false,
      home: StartupScreen(),
    );
  }
}
