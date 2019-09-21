import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../exercise_1/screen_ex_1.dart';
import '../exercise_2/screen_ex_2.dart';
import '../exercise_3/screen_ex_3.dart';
import 'widgets_main.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenMainState();
}

class ScreenMainState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: <Widget>[
                    StatelessScreenTitle(title: "Design exercies"),
                    SizedBox(height: 16.0,),
                    StatelessExerciseButton(
                      title: "Exercise 1",
                      description: "Design of some event page",
                      designAuthors: "construct.cc",
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(context,
                             MaterialPageRoute(builder: (context) => ScreenEx1()));
                      },
                    ),
                    SizedBox(height: 8.0,),
                    StatelessExerciseButton(
                      title: "Exercise 2",
                      description: "Some kind of user profile page",
                      designAuthors: "cuberto.com",
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(context,
                             MaterialPageRoute(builder: (context) => ScreenEx2()));
                      },
                    ),
                    SizedBox(height: 8.0,),
                    StatelessExerciseButton(
                      title: "Exercise 3 - Hipstophone",
                      description: "Example of wallpapers app design",
                      designAuthors: "Alex Design",
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ScreenEx3()));
                      },
                    )
                ],
              ),
            )
      ),
    );
  }
}
