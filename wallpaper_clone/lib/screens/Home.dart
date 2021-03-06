import 'package:callpaperclone/screens/Catgory.dart';
import 'package:callpaperclone/screens/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const PrimaryColor = const Color(0xFF151026);

class _HomeState extends State<Home> {
  var demoIndex = 0;
  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        elevation: 5, //shadow
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
      body: Container(
        child: PageView(
            // physics: BouncingScrollPhysics(),
            physics: BouncingScrollPhysics(),
            controller: pageController, 
             onPageChanged: onPageChanged,
            children: <Widget>[HomePage(), Category()]),
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
         onIndexChanged: navigationTapped,
        // onIndexChanged: (demo) {
        //   setState(() {
        //     demoIndex = demo;
        //   });
        // },
        
      ),


      //
    );

    
  }
   void onPageChanged(int value) {
    setState(() {
      demoIndex = value;
    });
  }
  void navigationTapped(int value) {
    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}





