import 'package:flutter/material.dart';

import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _listView(),
    );
  }

  Widget _listView() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listItems(List<dynamic> options, BuildContext context) {
    final List<Widget> optionsList = [];
    options.forEach((opt) {
      final listTile = ListTile(
        title: Text(opt['text']),
        leading: getIconFromString(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
          size: 25.0,
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['route']);
        },
      );
      optionsList..add(listTile)..add(Divider());
    });
    return optionsList;
  }
}
