import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _widht = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        width: _widht,
        height: _height,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _changeContainerShape(),
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _changeContainerShape() {
    final random = Random();

    setState(() {
      _widht = random.nextDouble() * 300;
      _height = random.nextDouble() * 300;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = new BorderRadius.circular(random.nextDouble() * 100);
    });
  }
}
