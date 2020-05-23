import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gridView = new GridView.builder(

        // itemCount: 20, physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(4.0),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          
          crossAxisCount: 3,
          childAspectRatio: 0.6,
          // childAspectRatio: 0.501,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            child: new Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: new Container(
                alignment: Alignment.center,
                child: new Text('Item $index'),
              ),
            ),
            // onTap: () {
            //   showDialog(
            //     barrierDismissible: false,
            //     context: context,
            //     child: new CupertinoAlertDialog(
            //       title: new Column(
            //         children: <Widget>[
            //           new Text("GridView"),
            //           new Icon(
            //             Icons.favorite,
            //             color: Colors.green,
            //           ),
            //         ],
            //       ),
            //       content: new Text("Selected Item $index"),
            //       actions: <Widget>[
            //         new FlatButton(
            //             onPressed: () {
            //               Navigator.of(context).pop();
            //             },
            //             child: new Text("OK"))
            //       ],
            //     ),
            //   );
            // },
          );
        });

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
            gridView,
            gridView,
            gridView,
          ]),
        ));
  }
}

// class GridManga extends StatefulWidget {
//   GridManga({Key key}) : super(key: key);

//   @override
//   _GridMangaState createState() => _GridMangaState();
// }

// class _GridMangaState extends State<GridManga> {
//   @override
//   Widget build(BuildContext context) {
//     var gridView = new GridView.builder(
//         itemCount: 20,
//         gridDelegate:
//             new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//         itemBuilder: (BuildContext context, int index) {
//           return new GestureDetector(
//             child: new Card(
//               elevation: 5.0,
//               child: new Container(
//                 alignment: Alignment.center,
//                 child: new Text('Item $index'),
//               ),
//             ),
//             onTap: () {
//               showDialog(
//                 barrierDismissible: false,
//                 context: context,
//                 child: new CupertinoAlertDialog(
//                   title: new Column(
//                     children: <Widget>[
//                       new Text("GridView"),
//                       new Icon(
//                         Icons.favorite,
//                         color: Colors.green,
//                       ),
//                     ],
//                   ),
//                   content: new Text("Selected Item $index"),
//                   actions: <Widget>[
//                     new FlatButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: new Text("OK"))
//                   ],
//                 ),
//               );
//             },
//           );
//         });

// }
// }
