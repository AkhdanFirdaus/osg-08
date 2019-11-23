import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(Aplikasi());

class Aplikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.asset('images/merdeka.jpg'),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Indonesia',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        _buildCard("72", "Years", Colors.red),
                        _buildCard("3", "Era", Colors.blue),
                        _buildCard("7", "President", Colors.orange[800]),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Perjuangan rakyat Indonesia untuk membebaskan diri dari penjajahan berlangsung begitu lama. Ada banyak kejadian yang menegangkan, sedih, namun berakhir dengan bahagia karena Indonesia akhirnya berhasil menjadi negara yang merdeka.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.bookmark_border,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: RaisedButton(
                                child: Text('Selengkapnya'),
                                color: Colors.blue,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 10.0,
                          offset: new Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(
  String content,
  String desc,
  Color color,
) {
  return Container(
    padding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 32,
    ),
    child: Column(
      children: <Widget>[
        Text(
          content,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: color,
          blurRadius: 10.0,
          offset: new Offset(3.0, 3.0),
        ),
      ],
    ),
  );
}
