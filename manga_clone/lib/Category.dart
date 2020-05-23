import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    // final statusHeigh = MediaQuery.of(context).padding.top;
    final _categories = ['Adventure','Comedy','Drama','Fantasy','Matiral Arts','Shounen','Horror','Supernatural','Adventure','Comedy','Drama','Fantasy','Matiral Arts','Shounen','Horror','Supernatural'];

      return Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
           backgroundColor: Color(0xffE74C3C),
      

        ),
        body: ListView.builder( itemCount: _categories.length,itemBuilder: (context,index){
          return ListTile(
          //  leading: CircleAvatar(
          //     backgroundImage: AssetImage('assets/sun.jpg'),
          //   ),
             trailing: Icon(Icons.keyboard_arrow_right),
            
            title: Text(_categories[index]),
            
            // titleS: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            
          );
        }),
        
      );
  }
}
