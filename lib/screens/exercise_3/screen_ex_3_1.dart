
import 'package:flutter/material.dart';
import 'widgets_ex_3_1.dart';

class ScreenEx31 extends StatefulWidget {
  final String imageUrl;

  const ScreenEx31({Key key, this.imageUrl}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ScreenEx31State(imageUrl);
}

class ScreenEx31State extends State {
  final String imageUrl;

  ScreenEx31State(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StelessNetworkImageCard(
                imageUrl: imageUrl,
                padding: EdgeInsets.all(16.0),
              ),
              StatelessImageHeader(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                authorName: "Great Author",
                title: "Best image title ever",
              ),
              SizedBox(height: 16.0,),
              Padding(
                padding: EdgeInsets.only(left: 32.0, right: 32.0),
                child: StatelessImageActionsPanel(),
              )
            ],
          ),
        ) 
      )
    );
  }

}
