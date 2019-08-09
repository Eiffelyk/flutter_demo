import 'package:flutter/material.dart';

class InkWellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleText = "InkWell Demo";
    return MaterialApp(
      title: titleText,
      home: InkWellPage(title: titleText),
    );
  }
}

class InkWellPage extends StatelessWidget {
  final String title;

  InkWellPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: InkWellButton(),
      ),
    );
  }
}

class InkWellButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6.0),
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("button")));
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
//        decoration: BoxDecoration(
//            color: Theme.of(context).buttonColor,
//            borderRadius: BorderRadius.circular(6.0)),
        child: Text("Flat Button"),
      ),
    );
  }
}
