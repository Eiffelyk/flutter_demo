import 'package:flutter/material.dart';

class TextFontsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "TextFonts Demo",
      home: TextFontsPage(),
    );
  }
}

class TextFontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Fonts'),
      ),
      body: Center(
        child: Text(
          "Using the font from zhe asset/fonts",
          style: TextStyle(fontFamily: 'Regular'),
        ),
      ),
    );
  }
}
