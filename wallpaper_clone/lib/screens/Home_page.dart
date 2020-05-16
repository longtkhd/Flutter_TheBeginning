import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'over.dart';

class HomePage extends StatelessWidget {
  final List<String> _trendingImages = [
    'https://images.pexels.com/photos/35857/amazing-beautiful-breathtaking-clouds.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    'https://images.pexels.com/photos/1037992/pexels-photo-1037992.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];
  final List<String> _popularImages = [
    'https://images.pexels.com/photos/990826/pexels-photo-990826.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1227497/pexels-photo-1227497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1493378/pexels-photo-1493378.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);

    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            // Text('a'),
            // ShowMore(text: 'Trending', onTap: () {}),
            CarouselSlider(
              autoPlay: true,
              height: 200.0,
              items: _trendingImages.map((index) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: GestureDetector(
                          child: Hero(
                            tag: 'trending$index',
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Over('trending$index', index)));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: FadeInImage(
                                    image: NetworkImage(index,),
                                    fit: BoxFit.cover,
                                    placeholder:
                                        AssetImage('assets/images/loading.gif',),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text('Popular', style: Theme.of(context).textTheme.body1),
                ),
              ],
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: _popularImages.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: GestureDetector(
                        child: Hero(
                          tag: 'popular$index',
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Over(
                                          'popular$index',
                                          _popularImages[index])));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: FadeInImage(
                                  image: NetworkImage(_popularImages[index]),
                                  fit: BoxFit.cover,
                                  placeholder:
                                      AssetImage('assets/images/loading.gif'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
