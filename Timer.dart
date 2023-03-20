import "package:flutter/material.dart";
import "package:percent_indicator/circular_percent_indicator.dart";

//Dependencies: percent_indicator: ^4.0.1
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pomodoro()
));

class Pomodoro extends StatefulWidget{

  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro>{
  double percent =0;
  static int TimeinMins = 25;
  int TimeInSec = TimeinMins * 60;
  @override
  Widget build(BuildContext context){
      return SafeArea(
          child: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff1542bf),Color(0xff51a8ff)],
                  begin: FractionalOffset(0.5,1)
                )
              ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 25.0),
                          child: Text(
                            "Advanced Mode",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0
                                ),
                          ),
                      ),
                      Expanded(
                        child: CircularPercentIndicator(
                          percent: percent,
                          animation: true,
                          animateFromLastPercent: true,
                          radius: 100.0,
                          lineWidth: 20.0,
                          progressColor: Colors.white,
                          center: Text(
                            '$TimeinMins',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 80.0
                           )
                          )
                      ),
                      ),
                      SizedBox(height: 10.0,),
                      Expanded(
                          child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))
                          ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      child: Row(
                                        children: <Widget>[
                                            Expanded(child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Start Timer",
                                                  style: TextStyle(
                                                    fontSize: 30.0
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                                Text(
                                                  "25",
                                                  style: TextStyle(
                                                    fontSize: 80.0
                                                  ),
                                                )
                                              ],
                                            )),
                                          Expanded(child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Pause Timer",
                                                style: TextStyle(
                                                    fontSize: 30.0
                                                ),
                                              ),
                                              SizedBox(height: 10.0,),
                                              Text(
                                                "25",
                                                style: TextStyle(
                                                    fontSize: 80.0
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                      ))
                    ],
                  ),
            )
          ));
  }
}