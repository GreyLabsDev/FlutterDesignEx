import 'package:flutter/material.dart';

class StatelessExerciseButton extends StatelessWidget {
  final String title;
  final String description;
  final String designAuthors;
  final Color color;
  final Function() onTap;

  var titleTextStyle = TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold);
  var descriptionTextStyle = TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.normal);
  var designAuthorsTextStyle = TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold);

  StatelessExerciseButton({Key key, this.title, this.description, this.color, this.designAuthors, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 340.0,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(16.0))
        ),
        child: Wrap(
          direction: Axis.vertical,
          children: <Widget>[
            Text(title, style: titleTextStyle,),
            SizedBox(height: 12.0,),
            Text(description, style: descriptionTextStyle,),
            SizedBox(height: 4.0,),
            Text(designAuthors, style: designAuthorsTextStyle,)
          ],
        ),
      ),
    );
  }
}

class StatelessScreenTitle extends StatelessWidget {
  final String title;
  Function() onInfoPressed;

  var titleTextStyle = TextStyle(color: Colors.blue, fontSize: 32.0, fontWeight: FontWeight.bold);
 
  StatelessScreenTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(title, style: titleTextStyle, textAlign: TextAlign.center,),
          Spacer(),
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.blue,),
            onPressed: onInfoPressed,
          )
        ],
      ),
    );
  }
}