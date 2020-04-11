import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(44, 62, 80, 1),
        ),
        Positioned.fill(
            top: 10,
            left: 10,
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
                      child: Image.asset(
                        "assets/images/src_assets_image_logo.png",
                        width: 250,
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Center(
                                  child: Image.asset(
                                "assets/images/src_assets_image_play.png",
                                color: Colors.blueAccent,
                                height: 50,
                              )),
                            ),
                            Container(
                                width: double.infinity,
                                height: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      width: width / 3 - 10,
                                      height: 70,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/src_assets_image_achievement.png",
                                        color: Colors.red,
                                        height: 50,
                                      )),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      width: width / 3 - 10,
                                      height: 70,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/src_assets_image_leaderboard.png",
                                        color: Colors.red,
                                        height: 40,
                                      )),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      width: width / 3 - 10,
                                      height: 70,
                                      child: Center(
                                        child: Text(
                                          'Rate',
                                          style: TextStyle(fontSize: 30.0,color: Colors.red),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ))
                  ],
                )))
      ],
    ));
  }
}
