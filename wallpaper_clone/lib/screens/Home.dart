import 'package:flutter/material.dart';
import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const PrimaryColor = const Color(0xFF151026);

class _HomeState extends State<Home> {
  var demoIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        elevation: 5,//shadow
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Image.asset(
                "assets/images/logo.png",
                height: 40,
              ),
            ),
            Text(
              'Wallpaper',
              style: TextStyle(
                color: Colors.black87,              
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ExpandingBottomBar(
        navBarHeight: 90.0,
        items: [
          ExpandingBottomBarItem(
            icon: Icons.home,
            text: "Home",
            selectedColor: Colors.purple,
          ),
          ExpandingBottomBarItem(
            icon: Icons.category,
            text: "Categories",
            selectedColor: Colors.pink,
          ),
          ExpandingBottomBarItem(
            icon: Icons.search,
            text: "Search",
            selectedColor: Colors.amber,
          ),
          ExpandingBottomBarItem(
            icon: Icons.settings,
            text: "Settings",
            selectedColor: Colors.teal,
          ),
        ],
        selectedIndex: demoIndex,
        onIndexChanged: (demo) {
          setState(() {
            demoIndex = demo;
          });
        },
      ),
      

     
    
      //

     
    );
  }
}



  
