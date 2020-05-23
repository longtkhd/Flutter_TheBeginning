import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Column(children: <Widget>[
        Card(
          margin: EdgeInsets.only(top: 30),
          elevation: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 180,
              width: width - 40,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //tab

                  GestureDetector(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 15, top: 15, bottom: 10),
                          child: Icon(Icons.history,
                              size: 30, color: Colors.redAccent),
                        ),
                        Expanded(
                          child: Text(
                            "History",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffE74C3C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child:
                              Icon(Icons.navigate_next, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width - 60,
                    height: 1,
                    color: Colors.redAccent,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => FavoriteScreen()),
                      // );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 15, top: 15, bottom: 10),
                          child: Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.redAccent,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Favorite",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffE74C3C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child:
                              Icon(Icons.navigate_next, color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width - 60,
                    height: 1,
                    color: Colors.redAccent,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 15, top: 15, bottom: 10),
                          child: Icon(
                            Icons.arrow_downward,
                            size: 30,
                            color: Colors.redAccent,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Download",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffE74C3C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child:
                              Icon(Icons.navigate_next, color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        ,Card(
           margin: EdgeInsets.only(top: 30),
           elevation: 5,
           child: ClipRRect(
             borderRadius: BorderRadius.circular(5),
             child: Container(
               height: 60,
                width: width - 40,
                color: Colors.white,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     GestureDetector(
                       onTap: () {

                       },
                       child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding( padding: const EdgeInsets.only(right: 20, left: 10, top: 10, bottom: 10),
                            child: Icon(Icons.comment,
                            size: 30,
                            color:Colors.redAccent

                            ),
                            ),
                            Expanded(
                            child: Text(
                              "Feedback",
                              style: TextStyle(fontSize: 16, color: Color(0xffE74C3C)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(Icons.navigate_next, color: Colors.black38),
                          )
                          ],
                       ),
                       

                     )
                   ],
                ),
             ),
           ),

        )
      ]),
    );
  }
}
