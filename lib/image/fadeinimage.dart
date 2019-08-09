import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleText = " FadeInImage demo";
    return MaterialApp(
      title: titleText,
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleText),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(),
            ),
            Center(
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: "https://picsum.photos/250?image=9"),
            )
          ],
        ),
      ),
    );
  }
}
