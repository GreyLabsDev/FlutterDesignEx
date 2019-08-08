
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets_ex_3.dart';

class ScreenEx3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenEx3State();
}

class ScreenEx3State extends State {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black
      )
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16.0,),
              StatelessHeader(
                headerText: "New",
                buttonText: "More",
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                onButtonPressed: () {print("Press");}, 
              ),
              SizedBox(height: 16.0,),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: StatelessImagesList(
                  imagesUrls: [
                    "https://images.pexels.com/photos/1666012/pexels-photo-1666012.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/673857/pexels-photo-673857.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/1998479/pexels-photo-1998479.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/1544880/pexels-photo-1544880.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                  ],
                ),
              ),
              SizedBox(height: 32.0,),
              StatelessWidthBanner(
                title: "Exclusively from\nPokras Lampas",
                imageUrl: "https://d32dm0rphc51dk.cloudfront.net/XSo9QLvQZ18ymW3-9ZV9qw/large.jpg",
                tagsTexts: ["Pro", "4K"],
              ),
              SizedBox(height: 32.0,),
              StatelessHeader(
                headerText: "Popular",
                buttonText: "More",
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                onButtonPressed: () {print("Press");}, 
              ),
              SizedBox(height: 16.0,),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: StatelessImagesList(
                  imagesUrls: [
                    "https://images.pexels.com/photos/2505693/pexels-photo-2505693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/2215609/pexels-photo-2215609.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/2693200/pexels-photo-2693200.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/2559624/pexels-photo-2559624.png?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                  ],
                ),
              ),
              SizedBox(height: 32.0,),
              StatelessWidthBanner(
                title: "Make wallpaper\nand get \"Pro\" ",
                imageUrl: "https://boundtowow.com/wp-content/uploads/2019/04/Hyper-Realistic-Pencil-Drawing-by-Sheila-R-Giovanni-@-Bound-to-Wow_15.jpg",
                tagsTexts: ["Promo"],
              ),
              SizedBox(height: 32.0,),
              StatelessHeader(
                headerText: "For iPhone color",
                buttonText: "All",
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                onButtonPressed: () {print("Press");}, 
              ),
              SizedBox(height: 16.0,),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: StatelessImagesList(
                  imagesUrls: [
                    "https://images.pexels.com/photos/801885/pexels-photo-801885.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/756856/pexels-photo-756856.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/2440296/pexels-photo-2440296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/1784578/pexels-photo-1784578.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/1837605/pexels-photo-1837605.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560",
                    "https://images.pexels.com/photos/1024613/pexels-photo-1024613.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=560"
                  ],
                  colorsList: [
                    Colors.red,
                    Colors.blue,
                    Colors.yellow,
                    Colors.orange,
                    Colors.black,
                    Colors.white
                  ],
                ),
              ),
            ],
          ),
        ) 
      )
    );
  }
}
