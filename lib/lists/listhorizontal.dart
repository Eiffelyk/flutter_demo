import 'package:flutter/material.dart';

class ListViewHorizontalDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = "Horizontal List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar:AppBar(
          title: Text(title),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          color: Colors.black,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),Container(
                width: 160.0,
                color: Colors.blue,
              ),Container(
                width: 160.0,
                color: Colors.yellow,
              ),Container(
                width: 160.0,
                color: Colors.grey,
              ),Container(
                width: 160.0,
                color: Colors.orange,
              ),Container(
                width: 160.0,
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }

}