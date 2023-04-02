# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

####################################################################

The "Assests" directory houses the logos and images related to the project, it also houses the tflite
file titled "Final_model.tflite" which is very important to the project.

The "assets" directory houses an mp3 file which is the alarm sound for the application. If you wish to
change the alarm sound simply add the mp3 you desire inside the directory and delete the file titled
"Alarm_sound.mp3" and change the name of the file in line 51 in the TimerFinal.dart file to the name
of the file you newly added.

The "_counter" variable within the TimerFinal.dart file has been set to 10. This represent 10 seconds. This is
for demonstrative purposes only, if you would like to adjust the time period simply change the variable (In lines 36,41, and  63) to the required
amount of time in seconds you wish to enter.

**************************************************************************************************************************************************
An important thing to keep in mind is when running the main dart file within the "flutter_app" directory
the following error message may appear:

"The plugin tflite uses a deprecated version of the Android embedding. To avoid unexpected runtime 
failures, or future build failures, try to see if this plugin supports the Android V2 embedding. 
Otherwise, consider removing it since a future release of Flutter will remove these deprecated APIs."

However, do not worry as it is merely a cautionary step by the Flutter application framework and the
necessary changes to dependencies and AndroidManifest.xml files have been made. The application can 
still run even though the above error message is shown.

**************************************************************************************************************************************************
