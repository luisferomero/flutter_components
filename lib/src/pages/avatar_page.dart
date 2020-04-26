import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/9/9e/Stan_Lee_painting_by_abijith_ka_2.png'),
              radius: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
                child: Text('LR'), backgroundColor: Colors.red[800]),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Look to the upper right corner ;)',
          style: TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
