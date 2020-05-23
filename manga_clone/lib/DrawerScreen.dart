import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final _country = [
      'English',
      'VietNam',
      'Korean',
      
    ];

    return Drawer(
      child: Container(
        height: 300,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100.0,
              child: DrawerHeader(
                child: Text(
                  'Select Sever',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: _country.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_country[index]),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
