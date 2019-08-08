
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'widgets_ex_1.dart';

class ScreenEx1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenEx1State();
}

class ScreenEx1State extends State {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.lightBlue
      )
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              StatelessTopToolbar(
                onBackPressedAction: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                color: Colors.white,
                child: StatelessMainTitle(),
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(64.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    StatelessUserCard(),
                    SizedBox(height: 24.0,),
                    StatelessConfirmCard()
                  ],
                ),
              ),
              SizedBox(height: 32.0,),
              StatelessEventInfoWidget(
                padding: EdgeInsets.only(left: 48.0, right: 48.0),
                icon: Icons.schedule,
                title: "Today",
                firstText: "5:30 PM - 8:00 PM",
                secondText: "Every week on Monday",
              ),
              SizedBox(height: 32.0,),
              StatelessEventInfoWidget(
                padding: EdgeInsets.only(left: 48.0, right: 48.0),
                icon: Icons.place,
                title: "The Bay Department Store 7 th Floor dining hall",
                firstText: "585 Street West, Montreal, QC",
              ),
              SizedBox(height: 32.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  StatelessMapContainer()
                ],
              )        
            ],
          ),
        )
      ),
    );
  }
}



