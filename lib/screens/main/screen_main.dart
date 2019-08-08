
import 'package:design_ex/screens/exercise_1/screen_ex_1.dart';
import 'package:design_ex/screens/exercise_2/screen_ex_2.dart';
import 'package:design_ex/screens/exercise_3/screen_ex_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenMainState();
}

class ScreenMainState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Wrap(
              spacing: 8.0,
              direction: Axis.vertical,
              children: <Widget>[
                MaterialButton(
                  child: Text("Exercise 1 (construct.cc)"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenEx1()));
                  },
                ),
                MaterialButton(
                  child: Text("Exercise 2 (cuberto)"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenEx2()));
                  },
                ),
                MaterialButton(
                  child: Text("Exercise 3 (Hipstophone)"),
                  onPressed: () {
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
