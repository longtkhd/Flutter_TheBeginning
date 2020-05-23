import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mangaclone/Category.dart';
import 'package:mangaclone/MainPage.dart';
import 'package:mangaclone/Setting.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pageIndex = 0;
  PageController pageController = PageController();
  
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          actions: [
           Icon(Icons.search)
      ],
      backgroundColor: Color(0xffE74C3C),
      
      
        
        centerTitle: true ,
        title: Text("Manga"),
        leading:  IconButton(
          icon:  Icon(Icons.public,color: Colors.white,),
          onPressed: () {},
      ),
      
      
      ),
      body: Container(
        child: PageView(
           physics: BouncingScrollPhysics(),
           onPageChanged: onPageChanged,
           controller: pageController,
           children: <Widget>[
             MainPage(),
             Category(),
             Setting()

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
            icon: Icons.layers,
            text: "Categories",
            selectedColor: Colors.pink,
          ),
          // ExpandingBottomBarItem(
          //   icon: Icons.search,
          //   text: "Search",
          //   selectedColor: Colors.amber,
          // ),
          ExpandingBottomBarItem(
            icon: Icons.explore,
            text: "More",
            selectedColor: Colors.teal,
          ),
        ],
        
       
          selectedIndex: pageIndex,
              onIndexChanged: navigationTapped,
        // onIndexChanged: (demo) {
        //   setState(() {
        //     demoIndex = demo;
        //   });
        // },
        
      ),
    );
  }
  void onPageChanged(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  void navigationTapped(int value) {
    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}