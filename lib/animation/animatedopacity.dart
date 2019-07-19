import 'package:flutter/material.dart';

///Widget 的淡入淡出效果
class AnimatedOpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Opacity Demo';
    return new MaterialApp(
      title: appTitle,
      home: EHomePage(title: appTitle),
    );
  }
}

class EHomePage extends StatefulWidget {
  final String title;

  const EHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EHomepageState();
}

class _EHomepageState extends State<EHomePage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0,
          duration: new Duration(seconds: 1),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepOrange,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.flip),
          tooltip: "Toggle Optacity",
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          }),
    );
  }
}
