import 'package:flutter/material.dart';

///添加一个 SnackBar
class ESnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "SnackBar Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnakBar Demo"),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "TextStyle",
        style: TextStyle(fontFamily: "Regular", fontSize: 20.0),
      ),
//      child: RaisedButton(
//          child: Text(
//            'Show SnackBar',
//            style: TextStyle(fontFamily: 'Raleway',
//            package: 'awesome_package'),
//          ),
//          onPressed: () {
//            final snackBar = SnackBar(
//              content: Text('A SnackBar!!!'),
//              action: SnackBarAction(label: "Undo", onPressed: () {}),
//            );
//            Scaffold.of(context).showSnackBar(snackBar);
//          }),
    );
  }
}
