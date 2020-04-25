import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
};

Icon getIconFromString(String name) {
  return Icon(
    _icons[name],
    color: Colors.blue,
    size: 30.0,
  );
}
