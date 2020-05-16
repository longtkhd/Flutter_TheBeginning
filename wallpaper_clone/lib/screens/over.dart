import 'package:flutter/material.dart';

class Over extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  String image;
  String id;

  Over(this.id, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            tag: id,
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.backspace),
          ),
        ],
      ),
    );
  }
}
