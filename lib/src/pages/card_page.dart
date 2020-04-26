import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          children: <Widget>[
            _simpleCard(),
            SizedBox(height: 30.0),
            _imageCard(),
            SizedBox(height: 30.0),
          ]),
    );
  }

  Widget _simpleCard() {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.image,
              size: 30.0,
            ),
            title: Text('Card Title'),
            subtitle: Text(
                'lorem ipsun lorem ipsun lorem ipsun lorem ipsun lorem ipsun lorem ipsun lorem ipsun lorem ipsun'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _imageCard() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg'),
            placeholder: AssetImage('assets/loader.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Card Title'),
          )
        ],
      ),
    );
  }
}
