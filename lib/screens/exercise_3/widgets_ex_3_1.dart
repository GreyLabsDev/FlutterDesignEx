
import 'package:flutter/material.dart';

class StelessNetworkImageCard extends StatelessWidget {
  final String imageUrl;
  EdgeInsetsGeometry padding;
  Color iconColor;
  
  StelessNetworkImageCard({Key key, this.imageUrl, this.padding = const EdgeInsets.all(8.0), this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: padding,
        child: Stack(
          children: <Widget>[
            Container( 
              height: 500.0,
              padding: padding,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                borderRadius:  BorderRadius.all(Radius.circular(16.0)),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: (iconColor != null) ? Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: new BoxDecoration(      
                    color: iconColor,        
                    border: new Border.all(
                      color: Colors.white,
                      width: 4.0
                    ),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ) : null,
            )
          ],
        ) 
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

class StatelessImageHeader extends StatelessWidget {

  final String authorName;
  final String title;

  EdgeInsetsGeometry padding;

  var textStyleAuthor = TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold);
  var textStyleTitle = TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal);

  StatelessImageHeader({Key key, this.authorName, this.title, this.padding = const EdgeInsets.all(8.0)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: new LinearGradient(
                  colors: [Colors.transparent, Colors.transparent],
                  begin: const FractionalOffset(0.0, 1.0),
                  end: const FractionalOffset(0.0, -0.5)
                )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(authorName, style: textStyleAuthor,),
            SizedBox(height: 6.0,),
            Text(title, style: textStyleTitle,),
          ],
        ),
      ),
    );
  }
}

class StatelessImageActionsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StatelessCircleButton(
          icon: Icons.file_upload,
          size: 40.0,
          iconSize: 18.0,
          padding: EdgeInsets.only(right: 8.0),
          onPressedAction: () {},
        ),
        StatelessCircleButton(
          icon: Icons.phone_iphone,
          size: 40.0,
          iconSize: 18.0,
          padding: EdgeInsets.only(right: 8.0),
          onPressedAction: () {},
        ),
        StatelessCircleButton(
          icon: Icons.star_border,
          size: 40.0,
          iconSize: 18.0,
          onPressedAction: () {},
        )
      ],
    );
  }

}