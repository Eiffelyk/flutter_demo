import 'dart:math';
import 'package:flutter/material.dart';

///Container 里的动画渐变效果
class AnimatedContainerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedContainerApp();
}

class _AnimatedContainerApp extends State<AnimatedContainerApp> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedContainer demo"),
        ),
        body: Center(
          child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadiusGeometry,
              ),
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 1)),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.track_changes),
            onPressed: () {
              setState(() {
                final random = Random();
                _width = random.nextInt(300).toDouble();
                _height = random.nextInt(300).toDouble();
                _color = Color.fromRGBO(random.nextInt(256),
                    random.nextInt(256), random.nextInt(256), 1);
                _borderRadiusGeometry =
                    BorderRadius.circular(random.nextInt(100).toDouble());
              });
            }),
      ),
    );
  }
}
