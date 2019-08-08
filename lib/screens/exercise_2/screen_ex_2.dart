import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenEx2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenEx2State();
}

class ScreenEx2State extends State {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white
      )
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            StatelessTopToolbar(
              onBackPressedAction: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 46.0,),
            Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: StatelessGreetingsText(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.0, top: 28.0),
              child: Row(
              children: <Widget>[
                  StatelessRoundedIconButton(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      fillColor: Colors.orange,
                      borderColor: Colors.orange,
                      borderWidth: 1.0,
                      onPressedAction: () {},
                    ),
                  SizedBox(width: 16.0,),
                  StatelessRoundedIconButton(
                      icon: Icons.show_chart,
                      borderColor: Colors.black12,
                      borderWidth: 1.0,
                      onPressedAction: () {},
                    )
                ],
              ),
            )
            
          ],
        ),
      )
    );
  }

}

class StatelessGreetingsText extends StatelessWidget {

  var greetingTextStyle = TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.normal);
  var nameTextStyle = TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello,", style: greetingTextStyle, textAlign: TextAlign.start,),
        SizedBox(height: 4.0,),
        Text("Chad Reynolds", style: nameTextStyle, textAlign: TextAlign.start,)
      ],
    );
  }

}

class StatelessTopToolbar extends StatelessWidget {
  final void Function() onBackPressedAction;
  final void Function() onUpPressedAction;

  const StatelessTopToolbar({Key key, this.onBackPressedAction, this.onUpPressedAction}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      children: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.orange,),
            onPressed: onBackPressedAction,
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,),
            color: Colors.black,
            onPressed: onUpPressedAction,
          ),
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.black,),
            color: Colors.black,
            onPressed: onUpPressedAction,
          ),
          SizedBox(width: 16.0,)
        ],
      ),
    );
  }

}

class StatelessRoundedIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double size;
  final EdgeInsetsGeometry padding;
  final Color fillColor;
  final double borderWidth;
  final Color borderColor;
  final Color iconColor;
  final void Function() onPressedAction;

  const StatelessRoundedIconButton(
      {Key key, this.icon, this.iconSize, this.size, this.padding, this.onPressedAction, this.fillColor, this.borderWidth, this.borderColor, this.iconColor}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 80,
        decoration: new BoxDecoration(
          border: new Border.all(color: borderColor, width: borderWidth),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          color: fillColor
        ),
        child: Center(
          child: Icon(icon, color: iconColor,),
        ),
      );
  }
}