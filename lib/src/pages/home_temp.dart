import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final items = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "One",
    "Two",
    "Three",
    "Four",
    "Five"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Components"),
        ),
        body: Center(
          child: ListView(
            children: _createmaplist(),
          ),
        ));
  }

  List<Widget> _createList() {
    List<Widget> list = new List<Widget>();
    for (var number in items) {
      final tempWidget = ListTile(
        title: Text(number),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _createmaplist() {
    return items.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("subtitle"),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
