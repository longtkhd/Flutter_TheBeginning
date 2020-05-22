import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            indicatorColor: Color(0xffE74C3C),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            labelColor: Color(0xffE74C3C),
            unselectedLabelColor: Colors.black26,
            labelPadding: EdgeInsets.only(bottom: 0),
            tabs: [
              Tab(
                text: "Most Popular",
              ),
              Tab(text: 'Recent Updates'),
              Tab(text: 'Completed'),
            ],
          ),
          body: TabBarView(children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
          ]),
        ));
  }
}
