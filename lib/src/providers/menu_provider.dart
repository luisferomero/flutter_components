import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class MenuProvider {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    options = dataMap['routes'];
    return options;
  }
}

final menuProvider = new MenuProvider();
