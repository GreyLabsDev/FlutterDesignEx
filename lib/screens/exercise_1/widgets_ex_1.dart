
import 'package:flutter/material.dart';

class StatelessUserCard extends StatelessWidget {

  var titleTextStyle = TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold);
  var subtitleTextStyle = TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 16.0,),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage("https://content-static.upwork.com/uploads/2014/10/01073427/profilephoto1.jpg"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Easy And Gentle Yoga", style: titleTextStyle,),
            ),
            SizedBox(height: 4.0,),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Montreal, QC Private group", style: subtitleTextStyle,),
            ),
          ],
        ),
        SizedBox(width: 16.0,),
      ],
    );
  }

}

class StatelessConfirmCard extends StatelessWidget {

  var titleTextStyle = TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold);
  var subtitleTextStyle = TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      decoration: new BoxDecoration(
        color: Colors.black,
        borderRadius: new BorderRadius.all(Radius.circular(38.0))
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 32.0, top: 16.0, bottom: 16.0),
            child: Icon(Icons.input, color: Colors.grey,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text("Are you going ?", style: titleTextStyle,),
              ),
              SizedBox(height: 4.0,),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text("56 sports left", style: subtitleTextStyle,),
              ),
            ],
          ),
          Spacer(),
          StatelessCircleButton(
            icon: Icons.clear,
            size: 40.0,
            iconSize: 18.0,
            padding: EdgeInsets.only(left: 8.0),
            onPressedAction: () {},
          ),
          StatelessCircleButton(
            icon: Icons.done,
            size: 40.0,
            iconSize: 18.0,
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            onPressedAction: () {},
          ),
          SizedBox(width: 8.0,),
        ],
      ),
    );
  }
}

class StatelessCircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double size;
  final EdgeInsetsGeometry padding;
  final void Function() onPressedAction;

  const StatelessCircleButton({Key key, this.icon, this.onPressedAction,this.iconSize, this.size, this.padding = const EdgeInsets.all(0.0)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: size,
        height: size,
        child: RawMaterialButton(
          onPressed: onPressedAction,
          child: new Icon(
            icon,
            color: Colors.white,
            size: iconSize,
          ),
          shape: new CircleBorder(),
          fillColor: Colors.white24,
        ),
      ),
    );
  }
}

class StatelessMainTitle extends StatelessWidget {

  var titleTextStyle = TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(64.0)),
        color: Colors.lightBlue
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(32.0), 
              child: Icon(Icons.show_chart, color: Colors.black12, size: 72.0,),
            )
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 48.0,
              top: 32.0,
              right: 32.0,
              bottom: 48.0
            ),
            child: Text("Yoga and Meditation for Beginners", style: titleTextStyle,),
          ),
        ],
      ),
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
      color: Colors.lightBlue,
      child: Row(
      children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: onBackPressedAction,
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.open_in_new, color: Colors.white,),
            color: Colors.white,
            onPressed: onUpPressedAction,
          )
        ],
      ),
    );
  }

}

class StatelessEventInfoWidget extends StatelessWidget {
  final String title;
  final String firstText;
  final String secondText;
  final IconData icon;
  final EdgeInsetsGeometry padding;

  var titleTextStyle = TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold);
  var contentTextStyle = TextStyle(color: Colors.white54, fontSize: 12.0, fontWeight: FontWeight.normal);

  StatelessEventInfoWidget({Key key, this.title, this.firstText = "", this.secondText = "", this.icon, this.padding = const EdgeInsets.all(0.0)}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.white54, size: 24.0,),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 4.0,),
              SizedBox(
                width: 180.0,
                child: Text(title, style: titleTextStyle, overflow: TextOverflow.ellipsis, maxLines: 5),
              ),
              SizedBox(height: (firstText != "") ? 8.0 : 0.0,),
              (firstText != "") ? Text(firstText, style: contentTextStyle,) : SizedBox(),
              SizedBox(height: (secondText != "") ? 8.0 : 0.0,),
              (secondText != "") ? Text(secondText, style: contentTextStyle,) : SizedBox()
            ],
          )
        ],
      ),
    );
  }

}

class StatelessMapContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
        width: 300.0,
        height: 120.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("http://www.northernlightstheatrepub.com/wp-content/uploads/2006/08/NLTP-map-screenshot-mardesco.jpg"),
          ),
          borderRadius:  BorderRadius.all(Radius.circular(38.0)),
        ),
    );
  }

}