import 'package:flutter/material.dart';

class ImageNetWorkDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final titleText = "Image Net Work";
    return MaterialApp(
      title: titleText,
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleText),
        ),
        body: Image.network("https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true"),
      ),
    );
  }

}