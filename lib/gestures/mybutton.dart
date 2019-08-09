import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleText = "My Button";
    return MaterialApp(
      title: titleText,
      home: new MyStyleButton(
        title: titleText,
      ),
    );
  }
}

class MyStyleButton extends StatelessWidget {
  final String title;

  MyStyleButton({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Center(child: MyButtonTest(),),
    );
  }
}

class MyButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("buttton on top"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(16.0)),
        child: Text("button"),
      ),
    );
  }
}
