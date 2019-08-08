

import 'package:flutter/material.dart';

import 'screen_ex_3_1.dart';

class StatelessHeader extends StatelessWidget {
  final String headerText;
  final String buttonText;
  EdgeInsetsGeometry padding;
  final void Function() onButtonPressed;

  StatelessHeader({this.headerText, this.buttonText, this.padding = const EdgeInsets.all(8.0), this.onButtonPressed});

  var textStyleHeader = TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold);
  var textStyleButton = TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.normal);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Text(headerText, style: textStyleHeader,),
          Spacer(),
          InkWell(
            onTap: onButtonPressed,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, top: 6.0, bottom: 6.0, right: 12.0),
                child: Text(buttonText, style: textStyleButton,),
              ),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(4.0)
              ),
            )
            
          )
        ],
      ),
    );
  }
}

class StelessNetworkImageCard extends StatelessWidget {
  final String imageUrl;
  EdgeInsetsGeometry padding;
  Color iconColor;
  
  StelessNetworkImageCard({Key key, this.imageUrl, this.padding = const EdgeInsets.all(8.0), this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenEx31(imageUrl: imageUrl,)));
      },
      child: Container(
        padding: padding,
        child: Stack(
          children: <Widget>[
            Container( 
              width: 120.0,
              height: 220.0,
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

class StatelessImagesList extends StatelessWidget {
  final List<String> imagesUrls;
  List<Color> colorsList;

  StatelessImagesList({Key key, this.imagesUrls, this.colorsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagesUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return StelessNetworkImageCard(
            padding: EdgeInsets.only(right: 14.0),
            imageUrl: imagesUrls[index],
            iconColor: (colorsList != null && colorsList.length == imagesUrls.length) ? colorsList[index] : null,
          );
        },
      ),
    );
  }
}

class StatelessWidthBanner extends StatelessWidget {
  final String title;
  final String imageUrl;
  List<String> tagsTexts;
  EdgeInsetsGeometry padding;

  StatelessWidthBanner({Key key, this.title, this.imageUrl, this.tagsTexts, this.padding = const EdgeInsets.only(left: 16.0, right: 16.0)}) : super(key: key);

  var textStyleTitle = TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Stack(
        children: <Widget>[
          Container( 
              height: 220.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                borderRadius:  BorderRadius.all(Radius.circular(16.0)),
              ),
          ),
          Container(
            height: 220.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.black87, Colors.transparent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0)
              )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32.0,),
                child: Text(title, style: textStyleTitle,),
              ),
              Container(
                padding: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
                height: 72.0,
                child: ListView.builder(
                  itemCount: tagsTexts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    if (tagsTexts != null && tagsTexts.length > 0) {
                      return Padding(
                        padding: EdgeInsets.only(right: 6.0),
                        child: StatelessTag(tagText: tagsTexts[index],),
                      );
                    } else {
                      return null;
                    }
                  },
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatelessTag extends StatelessWidget {
  final String tagText;

  var textStyleTag = TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold);

  StatelessTag({Key key, this.tagText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Text(tagText, style: textStyleTag,),
    );
  }

}

class StatelessBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }

}