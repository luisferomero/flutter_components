import 'package:flutter/material.dart';

import 'package:flutter_components/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Components App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getRoutes());
  }
}
